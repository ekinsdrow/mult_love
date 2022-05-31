import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

class SerialsSource {
  final Dio dio;

  SerialsSource(this.dio);

  //Todo: parse
  Future<List<Serial>> getrSerials() async {
    final response = await dio.get('https://mult.love/');
    final document = parse(response.data);

    log(document.toString());

    return [];
  }
}
