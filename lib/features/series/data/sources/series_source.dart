import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/data/models/series.dart';

class SeriesSource {
  final Dio dio;

  SeriesSource(this.dio);

  Future<List<Series>> getSeries({
    required Season season,
    required Serial serial,
  }) async {
    final response = await dio.get(
      '${serial.link}/season.php?id=${season.number}',
    );

    final doc = parse(response.data);
    final table = doc.querySelector('#descrSeason')!.querySelector('tbody')!;
    final trs = table.querySelectorAll('tr');

    final result = <Series>[];

    for (int i = 0; i < trs.length - 1; i += 2) {

      final imageUrl = serial.link +
          '/' +
          trs[i]
              .querySelectorAll('td')[0]
              .querySelector('img')!
              .attributes['src']!;

      final title =
          trs[i].querySelectorAll('td')[1].querySelector('a')!.innerHtml;

      final link = trs[i]
          .querySelectorAll('td')[1]
          .querySelector('a')!
          .attributes['href']!;

      final description = trs[i + 1].querySelector('td')!.innerHtml;

      result.add(
        Series(
          title: title,
          description: description,
          imageUrl: imageUrl,
          link: '${serial.link}/$link',
        ),
      );
    }

    return result;
  }
}
