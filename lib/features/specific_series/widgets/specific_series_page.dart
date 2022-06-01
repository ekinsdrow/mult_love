import 'package:flutter/material.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/data/models/series.dart';

class SpecificSeriesPage extends StatelessWidget {
  const SpecificSeriesPage({
    Key? key,
    required this.season,
    required this.serial,
    required this.series,
  }) : super(key: key);

  final Serial serial;
  final Season season;
  final Series series;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(
            Constants.mediumPadding,
          ),
        ),
      ),
    );
  }
}
