import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/specific_series/bloc/specific_series_bloc/specific_series_bloc.dart';
import 'package:mult_love/features/specific_series/di/specific_series_scope.dart';

class SpecificSeriesPage extends StatelessWidget {
  const SpecificSeriesPage({
    Key? key,
    required this.season,
    required this.serial,
    required this.series,
    required this.seriesIndex,
  }) : super(key: key);

  final Serial serial;
  final Season season;
  final Series series;
  final String seriesIndex;

  @override
  Widget build(BuildContext context) {
    return SpecificSeriesScope(
      series: series,
      serial: serial,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(
              Constants.mediumPadding,
            ),
            child: BlocBuilder<SpecificSeriesBloc, SpecificSeriesState>(
              builder: (context, state) => state.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => const Center(
                  child: Text('Ошибка при запросе серии'),
                ),
                success: (series) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      serial.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: Constants.smallPadding,
                    ),
                    Text(
                      '${season.number} сезон - $seriesIndex серия',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: Constants.smallPadding,
                    ),
                    Text(
                      series.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: Constants.bigPadding,
                    ),
                    SizedBox(
                      height: 40,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: series.voices[index].isActive
                                ? Theme.of(context).progressIndicatorTheme.color
                                : Colors.grey,
                          ),
                          onPressed: () {
                            //TODO: change voice
                          },
                          child: Text(series.voices[index].name),
                        ),
                        separatorBuilder: (_, __) => const SizedBox(
                          width: Constants.smallPadding,
                        ),
                        itemCount: series.voices.length,
                      ),
                    ),
                    const SizedBox(
                      height: Constants.bigPadding,
                    ),
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          series.imageUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
