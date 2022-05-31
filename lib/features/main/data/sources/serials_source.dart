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
      final style = serialLi.attributes['style']!;

      final imageUrl = 'https://mult.love/' +
          style.substring(
            style.indexOf('url') + 4,
            style.indexOf(') no'),
          );

      final link = serialLi.querySelector('a')!.attributes['href']!;

      serials.add(
        Serial(
          imageUrl: imageUrl,
          link: link,
        ),
      );
    }

    return serials;
  }
}
