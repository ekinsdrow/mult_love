import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/specific_series/data/models/specific_series.dart';
import 'package:mult_love/features/specific_series/data/sources/specific_series_source.dart';

abstract class ISpecificSeriesRepository {
  Future<SpecificSeries> getSeries({
    required Series series,
    required Serial serial,
  });
}

class SpecificSeriesRepository implements ISpecificSeriesRepository {
  final SpecificSeriesSource specificSeriesSource;

  SpecificSeriesRepository(this.specificSeriesSource);

  @override
  Future<SpecificSeries> getSeries({
    required Series series,
    required Serial serial,
  }) =>
      specificSeriesSource.getSeries(
        series: series,
        serial: serial,
      );
}
