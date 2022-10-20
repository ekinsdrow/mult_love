import 'package:chewie/chewie.dart';
import 'package:mult_love/features/specific_series/data/models/specific_series.dart';
import 'package:mult_love/features/specific_series/data/models/sub_type.dart';
import 'package:mult_love/features/specific_series/data/sources/specific_series_source.dart';

abstract class ISpecificSeriesRepository {
  Future<SpecificSeries> getSeries({
    required String url,
  });

  Future<List<Subtitle>> getSubtitles({
    required String url,
    required String seasonNumber,
    required SubType subType,
  });
}

class SpecificSeriesRepository implements ISpecificSeriesRepository {
  final SpecificSeriesSource specificSeriesSource;

  SpecificSeriesRepository(this.specificSeriesSource);

  @override
  Future<SpecificSeries> getSeries({
    required String url,
  }) =>
      specificSeriesSource.getSeries(
        url: url,
      );

  @override
  Future<List<Subtitle>> getSubtitles({
    required String url,
    required String seasonNumber,
    required SubType subType,
  }) =>
      specificSeriesSource.getSubtitles(
        url: url,
        subType: subType,
        seasonNumber: seasonNumber,
      );
}
