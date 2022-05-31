import 'package:flutter/material.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/di/series_scope.dart';

class SeriesPage extends StatelessWidget {
  const SeriesPage({
    Key? key,
    required this.season,
    required this.serial,
  }) : super(key: key);

  final Serial serial;
  final Season season;

  @override
  Widget build(BuildContext context) {
    return SeriesScope(
      season: season,
      serial: serial,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: Constants.mediumPadding,
            ),
          ),
        ),
      ),
    );
  }
}
