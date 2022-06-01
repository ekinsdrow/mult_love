import 'package:dio/dio.dart';
import 'package:mult_love/features/specific_series/data/models/specific_series.dart';

class SpecificSeriesSource {
  final Dio dio;

  SpecificSeriesSource(this.dio);

  Future<SpecificSeries> getSeries({
    required String link,
  }) async {
    return SpecificSeries(
      title: 'title',
      description: 'description',
      videoLink: '',
      voices: [],
    );
  }
}
