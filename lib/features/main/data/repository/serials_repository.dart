import 'package:dio/dio.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/main/data/sources/serials_source.dart';

abstract class ISerialsRepository {
  Future<List<Serial>> getSerials();
}

class SerialsRepository implements ISerialsRepository {
  final SerialsSource serialsSource;

  SerialsRepository(this.serialsSource);

  @override
  Future<List<Serial>> getSerials() => serialsSource.getrSerials();
}
