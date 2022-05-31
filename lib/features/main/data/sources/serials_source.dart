import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

class SerialsSource {
  final Dio dio;

  SerialsSource(this.dio);

  //Todo: parse
  Future<List<Serial>> getSerials() async {
    final response = await dio.get('https://mult.love/');
    final serials = <Serial>[];

    final document = parse(response.data);

    final serialsLis = document
        .querySelector('#content')!
        .querySelector('#links')!
        .querySelector('ul')!
        .querySelectorAll('li');

    for (final serialLi in serialsLis) {
      final link = serialLi.querySelector('a')!.attributes['href']!;
      final logoUrl = 'https://mult.love/' +
          serialLi.querySelector('img')!.attributes['src']!;

      final bigTitle = serialLi.querySelector('img')!.attributes['alt']!;
      final title = bigTitle.substring(
        bigTitle.indexOf('«') +1,
        bigTitle.indexOf('»'),
      );

      serials.add(
        Serial(
          link: link,
          logoUrl: logoUrl,
          title: title,
        ),
      );
    }

    return serials;
  }
}
