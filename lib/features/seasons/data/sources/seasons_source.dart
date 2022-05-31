import 'package:dio/dio.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';

class SeasonsSource {
  final Dio dio;

  SeasonsSource(this.dio);

  Future<List<Season>> getSeasons({required String serialLink}) async{
    //TODO: get seasons
    return [];
  }
}
