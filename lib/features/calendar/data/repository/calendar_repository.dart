import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/calendar/data/models/calendar_series_event.dart';

abstract class ICalendarRepository {
  Future<List<CalendarSeriesEvent>> getEvents({
    required String serialLink,
  });
}

class CalendarRepository implements ICalendarRepository {
  final Dio dio;

  CalendarRepository(this.dio);

  @override
  Future<List<CalendarSeriesEvent>> getEvents({
    required String serialLink,
  }) async {
    final response = await dio.get(
      serialLink + '/calendar.php',
    );

    final result = <CalendarSeriesEvent>[];

    final doc = parse(response.data);
    final body = doc.body!;
    final seriesHtml = body.querySelectorAll('#descrSeason tr');

    for (var i = 1; i < seriesHtml.length - 1; i += 2) {
      final imgUrl = serialLink +
          '/' +
          seriesHtml[i]
              .querySelectorAll('td')[0]
              .querySelector('a img')!
              .attributes['src']!;

      final title =
          seriesHtml[i].querySelectorAll('td')[1].querySelector('h2')!.text;

      final description = seriesHtml[i + 1].querySelectorAll('td')[0].text;
      final date = seriesHtml[i + 1].querySelector('font')!.text;

      result.add(
        CalendarSeriesEvent(
          imgUrl: imgUrl,
          title: title,
          description: description,
          date: date,
        ),
      );
    }

    return result;
  }
}
