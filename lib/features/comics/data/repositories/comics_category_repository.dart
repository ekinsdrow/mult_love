import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/comics/data/models/comics_category.dart';

abstract class IComicsCategoryRepository {
  Future<List<ComicsCategory>> getComicsCategories({
    required String url,
    required String serialUrl,
  });
}

class ComicsCategoryRepository implements IComicsCategoryRepository {
  final Dio dio;

  ComicsCategoryRepository({
    required this.dio,
  });

  @override
  Future<List<ComicsCategory>> getComicsCategories({
    required String url,
    required String serialUrl,
  }) async {
    log(url);
    final response = await dio.get(url);

    final doc = parse(response.data);
    final body = doc.body!;
    final leftContent = body.querySelector('#leftContent')!;

    final result = <ComicsCategory>[];

    var index = 1;
    for (final div in leftContent.querySelectorAll('div')) {
      if (div.classes.contains('numberSeason')) {
        final comicsCategory = ComicsCategory(
          title: div.querySelector('a')!.innerHtml,
          categoryUrl: '$serialUrl/comixs.php?id=$index',
          imageUrl: serialUrl +
              '/' +
              div.nextElementSibling!.querySelector('img')!.attributes['src']!,
        );



        result.add(comicsCategory);
      }
    }

    return result;
  }
}
