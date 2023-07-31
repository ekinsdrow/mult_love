import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/comics_read/data/models/comics_image.dart';
import 'package:mult_love/features/comics_read/data/models/comics_page.dart';

abstract class IComicsReadRepository {
  Future<ComicsModelPage> getComicsRead({
    required String url,
    required String serialUrl,
    required int page,
    required bool isNeedAddPage,
    required bool isNeedAnd,
  });
}

class ComicsReadRepository implements IComicsReadRepository {
  final Dio dio;

  ComicsReadRepository({
    required this.dio,
  });

  @override
  Future<ComicsModelPage> getComicsRead({
    required String url,
    required String serialUrl,
    required int page,
    required bool isNeedAddPage,
    required bool isNeedAnd,
  }) async {
    final pageStr = (isNeedAnd ? '&' : '?') + 'str=$page';
    final response = await dio.get(
      url + (isNeedAddPage ? pageStr : ''),
    );

    final doc = parse(response.data);
    final body = doc.body!;
    final pageCount = body.querySelector('#navComix')!.children.length;
    final imageUrl = serialUrl +
        '/' +
        body
            .querySelector('#leftContent')!
            .querySelector('img')!
            .attributes['src']!;

    return ComicsModelPage(
      currentImage: ComicsImage(
        imageUrl: imageUrl,
      ),
      currentPageIndex: page,
      pageCount: pageCount,
    );
  }
}
