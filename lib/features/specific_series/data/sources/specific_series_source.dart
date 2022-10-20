import 'package:chewie/chewie.dart';
import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/specific_series/data/models/specific_series.dart';
import 'package:mult_love/features/specific_series/data/models/sub_type.dart';
import 'package:mult_love/features/specific_series/data/models/voice.dart';

class SpecificSeriesSource {
  final Dio dio;

  SpecificSeriesSource(this.dio);

  Future<SpecificSeries> getSeries({
    required String url,
  }) async {
    var response = await dio.get(url);
    final stringResponse = response.toString();

    var serialLink = url.substring(
      0,
      url.indexOf('.tv') + 3,
    );

    ///if random series
    if (stringResponse.contains('http-equiv=\'Refresh\'')) {
      response = await dio.get(
        stringResponse.substring(
          stringResponse.indexOf('URL=') + 4,
          stringResponse.indexOf('\'>'),
        ),
      );

      final path = response.realUri.scheme +
          '://' +
          response.realUri.host +
          '/' +
          response.realUri.path;

      serialLink = path.substring(
        0,
        path.indexOf('.tv') + 3,
      );
    }

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

    final aLinks =
        doc.body!.querySelector('.topContent')!.querySelectorAll('a');

    final seasonNumber = aLinks
        .firstWhere(
          (element) => element.attributes['href']!.contains('season.php'),
        )
        .text
        .split(' ')[0];

    final serialTitle = aLinks[1].text;

    final seriesIndex = aLinks
        .firstWhere(
          (element) => element.attributes['href']!.contains('series'),
        )
        .text
        .split(' ')[0];

    final title = doc.body!
        .querySelector('#titleSeries')!
        .querySelector('a')!
        .querySelector('h1')!
        .innerHtml;

    final description = doc.head!
            .querySelectorAll('meta')
            .firstWhere(
              (element) => element.attributes['name'] == 'description',
            )
            .attributes['content'] ??
        '';

    final voices = <Voice>[];

    final voicesElem =
        doc.body!.querySelector('#centerSeries')!.querySelector('#voice')!;

    for (final voice in voicesElem.querySelectorAll('li')) {
      if (voice.id == 'otherVoice') {
        final fontsElem = voice.querySelector('div')!.querySelectorAll('font');
        for (final f in fontsElem) {
          final link = f.querySelector('a')!.attributes['href']!;
          final name = f.querySelector('a')!.innerHtml;

          final isSub = (name.contains('(анг.)')) || (name.contains('(рус.)'));

          voices.add(
            Voice(
              name: name,
              link: link,
              isActive: false,
              isSub: isSub,
              subType: isSub
                  ? name.contains('(анг.)')
                      ? SubType.eng
                      : SubType.rus
                  : null,
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
              link: link,
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
        final isSub = (name.contains('(анг.)')) || (name.contains('(рус.)'));

        voices.add(
          Voice(
            name: name,
            link: link,
            isActive: isActive,
            isSub: isSub,
            subType: isSub
                ? name.contains('(анг.)')
                    ? SubType.eng
                    : SubType.rus
                : null,
          ),
        );
      }
    }

    return SpecificSeries(
      videoLink: videoLink,
      imageUrl: imageUrl,
      voices: voices,
      subtitles: null,
      seasonNumber: seasonNumber,
      title: title,
      description: description,
      serialTitle: serialTitle,
      seriesIndex: seriesIndex,
      serialLink: serialLink,
    );
  }

  Duration _parseDuration(String input) {
    final min = int.parse(input.substring(0, 2));
    final sec = int.parse(input.substring(3, 5));
    final msec = int.parse(input.substring(7));

    return Duration(milliseconds: msec + sec * 1000 + min * 60000);
  }

  Future<List<Subtitle>> getSubtitles({
    required String url,
    required SubType subType,
    required String seasonNumber,
  }) async {
    final subtitles = <Subtitle>[];

    final subtitleLink = url.substring(0, url.indexOf('series')) +
        'captions/' +
        (subType == SubType.eng ? 'eng' : 'rus') +
        '/' +
        seasonNumber +
        '/' +
        url.substring(url.indexOf('id=') + 3, url.indexOf('&')) +
        '.vtt';

    final response = await dio.get(subtitleLink);
    final responseData = (response.data as String);

    final subTitlesStringArr = responseData
        .substring(
          responseData.indexOf('WEBVTT') + 10,
        )
        .split('\n');

    late Duration start;
    late Duration end;
    var text = '';
    int index = 0;

    for (final line in subTitlesStringArr) {
      if (line != String.fromCharCode(13)) {
        if (line.contains('-->')) {
          final startText = line.substring(0, line.indexOf(' --> '));
          final endText =
              line.substring(line.indexOf(' --> ') + 5, line.length);
          start = _parseDuration(startText);
          end = _parseDuration(endText);
        } else {
          text += line;
        }
      } else {
        subtitles.add(
          Subtitle(
            index: index,
            start: start,
            end: end,
            text: text,
          ),
        );
        text = '';

        index++;
      }
    }

    return subtitles;
  }
}
