import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/bloc/series_bloc/series_bloc.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Constants.mediumPadding,
                  ),
                  child: Text(
                    serial.title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                const SizedBox(
                  height: Constants.bigPadding,
                ),
                Expanded(
                  child: BlocBuilder<SeriesBloc, SeriesState>(
                    builder: (context, state) => state.when(
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: () => const Center(
                        child: Text('Ошибка при запросе списка серий'),
                      ),
                      success: (series) => ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: Constants.smallPadding,
                            horizontal: Constants.mediumPadding,
                          ),
                          title: Text(
                            series[index].title,
                          ),
                          onTap: () {
                            //TODO:open series
                          },
                        ),
                        itemCount: series.length,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
