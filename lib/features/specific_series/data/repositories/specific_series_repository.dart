import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/specific_series/data/models/specific_series.dart';
import 'package:mult_love/features/specific_series/data/models/sub_type.dart';
import 'package:mult_love/features/specific_series/data/sources/specific_series_source.dart';

abstract class ISpecificSeriesRepository {
  Future<SpecificSeries> getSeries({
    required Series series,
    required Serial serial,
    required Season season,
    required String link,
    required String seriesIndex,
    required bool isSub,
    required SubType? subType,
  });
}

class SpecificSeriesRepository implements ISpecificSeriesRepository {
  final SpecificSeriesSource specificSeriesSource;

  SpecificSeriesRepository(this.specificSeriesSource);

  @override
  Future<SpecificSeries> getSeries({
    required Series series,
    required String link,
    required Serial serial,
    required Season season,
    required bool isSub,
    required String seriesIndex,
    required SubType? subType,
  }) =>
      specificSeriesSource.getSeries(
        series: series,
        serial: serial,
        link: link,
        isSub: isSub,
        subType: subType,
        season: season,
        seriesIndex: seriesIndex,
      );
}
