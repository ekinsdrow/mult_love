import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/comics_category/data/models/comics.dart';

abstract class IComicsRepository {
  Future<List<Comics>> getComics({
    required String url,
    required String serialUrl,
  });
}

class ComicsRepository implements IComicsRepository {
  final Dio dio;

  ComicsRepository({
    required this.dio,
  });

  @override
  Future<List<Comics>> getComics({
    required String url,
    required String serialUrl,
  }) async {
    final response = await dio.get(url);
    final result = <Comics>[];

    final doc = parse(response.data);
    final body = doc.body!;
    final leftContent = body.querySelector('#leftContent')!;
    final comicsesDivs = leftContent.querySelectorAll('#descrComix');

    for (final div in comicsesDivs) {
      result.add(
        Comics(
          imageUrl: serialUrl + '/' + div.querySelector('img')!.attributes['src']!,
          url: serialUrl + '/' + div.querySelector('a')!.attributes['href']!,
        ),
      );
    }

    return result;
  }
}
