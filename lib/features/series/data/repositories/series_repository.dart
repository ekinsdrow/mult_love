import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/series/data/sources/series_source.dart';

abstract class ISeriesRepository {
  Future<List<Series>> getSeries({
    required Season season,
    required Serial serial,
  });
}

class SeriesRepository implements ISeriesRepository {
  final SeriesSource seriesSource;

  SeriesRepository(this.seriesSource);

  @override
  Future<List<Series>> getSeries({
    required Season season,
    required Serial serial,
  }) =>
      seriesSource.getSeries(
        season: season,
        serial: serial,
      );
}
