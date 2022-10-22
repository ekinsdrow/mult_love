import 'package:mult_love/features/calendar/data/models/calendar_series_event.dart';

abstract class ICalendarRepository {
  Future<List<CalendarSeriesEvent>> getEvents({
    required String serialLink,
  });
}

class CalendarRepository implements ICalendarRepository {
  @override
  Future<List<CalendarSeriesEvent>> getEvents({required String serialLink}) {
    // TODO: implement getEvents
    throw UnimplementedError();
  }
}
