import 'package:mult_love/features/specific_series/data/models/specific_series.dart';
import 'package:mult_love/features/specific_series/data/sources/specific_series_source.dart';

abstract class ISpecificSeriesRepository {
  Future<SpecificSeries> getSeries({
    required String link,
  });
}

class SpecificSeriesRepository implements ISpecificSeriesRepository {
  final SpecificSeriesSource specificSeriesSource;

  SpecificSeriesRepository(this.specificSeriesSource);

  @override
  Future<SpecificSeries> getSeries({
    required String link,
  }) =>
      specificSeriesSource.getSeries(link: link);
}
