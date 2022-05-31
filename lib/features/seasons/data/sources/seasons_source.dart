import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';

class SeasonsSource {
  final Dio dio;

  SeasonsSource(this.dio);

  Future<List<Season>> getSeasons({
    required String serialLink,
  }) async {
    final firstSeasonLink = '$serialLink/season.php?id=1';
    final response = await dio.get(firstSeasonLink);
    final doc = parse(response.data);
    final seasons = doc.querySelector('#otherSeasons')!.querySelectorAll('a');

    final result = <Season>[];

    for (final season in seasons) {
      final link = serialLink + season.attributes['href']!;
      final number = season.querySelector('div')!.innerHtml;

      result.add(
        Season(
          link: link,
          number: number,
        ),
      );
    }

    result.add(
      Season(
        link: firstSeasonLink,
        number: '1',
      ),
    );

    return result;
  }
}
