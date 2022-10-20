import 'package:mult_love/features/specific_series/data/models/specific_series.dart';
import 'package:mult_love/features/specific_series/data/models/sub_type.dart';
import 'package:mult_love/features/specific_series/data/sources/specific_series_source.dart';

abstract class ISpecificSeriesRepository {
  Future<SpecificSeries> getSeries({
    required String url,
    required bool isSub,
    required SubType? subType,
  });
}

class SpecificSeriesRepository implements ISpecificSeriesRepository {
  final SpecificSeriesSource specificSeriesSource;

  SpecificSeriesRepository(this.specificSeriesSource);

  @override
  Future<SpecificSeries> getSeries({
    required String url,
    required bool isSub,
    required SubType? subType,
  }) =>
      specificSeriesSource.getSeries(
        isSub: isSub,
        subType: subType,
        url: url,
      );
}
