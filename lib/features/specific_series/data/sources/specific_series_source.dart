import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/specific_series/data/models/specific_series.dart';
import 'package:mult_love/features/specific_series/data/models/sub_type.dart';
import 'package:mult_love/features/specific_series/data/models/voice.dart';

class SpecificSeriesSource {
  final Dio dio;

  SpecificSeriesSource(this.dio);

  Future<SpecificSeries> getSeries({
    required Series series,
    required String link,
    required Serial serial,
  }) async {
    final response = await dio.get(link);

    final doc = parse(response.data);
    final body = doc.body!.innerHtml;

    final imageUrl = body.substring(
      body.indexOf('poster:\'') + 8,
      body.indexOf('_big.jpg') + 8,
    );

    final videoLink = body.substring(
      body.indexOf('file:\'') + 6,
      body.indexOf('.mp4') + 4,
    );

    final voices = <Voice>[];

    // ignore: lines_longer_than_80_chars
    final voicesElem = doc.body!.querySelector('#centerSeries')!.querySelector('#voice')!;

    for (final voice in voicesElem.querySelectorAll('li')) {
      if (voice.id == 'otherVoice') {
        final fontsElem = voice.querySelector('div')!.querySelectorAll('font');
        for (final f in fontsElem) {
          final link = f.querySelector('a')!.attributes['href']!;
          final name = f.querySelector('a')!.innerHtml;

          voices.add(
            Voice(
              name: name,
              link: '${serial.link}/$link',
              isActive: false,
              isSub: false,
              subType: null,
            ),
          );
        }
      } else if (voice.id == 'captionsrusAll') {
        final aElem = voice.querySelector('div')!.querySelectorAll('a');
        for (final a in aElem) {
          final link = a.attributes['href']!;
          final name = a.innerHtml;

          voices.add(
            Voice(
              name: 'Субтитры ' + name,
              link: '${serial.link}/$link',
              isActive: false,
              isSub: true,
              subType: name == '(анг.)' ? SubType.eng : SubType.rus,
            ),
          );
        }
      } else {
        final isActive = voice.classes.contains('voiceOn');
        final link = voice.querySelector('a')!.attributes['href']!;
        final name = voice.querySelector('a')!.innerHtml;

        voices.add(
          Voice(
            name: name,
            link: '${serial.link}/$link',
            isActive: isActive,
            isSub: false,
            subType: null,
          ),
        );
      }
    }

    return SpecificSeries(
      title: series.title,
      description: series.description,
      videoLink: videoLink,
      imageUrl: imageUrl,
      voices: voices,
    );
  }
}
