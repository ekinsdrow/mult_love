import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/data/models/series.dart';

class SeriesSource {
  Future<List<Series>> getSeries({
    required Season season,
    required Serial serial,
  }) async {
    return [];
  }
}
