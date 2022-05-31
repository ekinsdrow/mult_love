import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/bloc/series_bloc/series_bloc.dart';
import 'package:mult_love/features/series/data/repositories/series_repository.dart';
import 'package:mult_love/features/series/data/sources/series_source.dart';
import 'package:provider/provider.dart';

class SeriesScope extends StatelessWidget {
  const SeriesScope({
    Key? key,
    required this.child,
    required this.season,
    required this.serial,
  }) : super(key: key);

  final Widget child;
  final Serial serial;
  final Season season;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => SeriesSource(
            context.read<Dio>(),
          ),
        ),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<ISeriesRepository>(
            create: (context) => SeriesRepository(
              context.read<SeriesSource>(),
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SeriesBloc(
                seriesRepository: context.read<ISeriesRepository>(),
              )..add(
                  SeriesEvent.fetch(
                    season: season,
                    serial: serial,
                  ),
                ),
            ),
          ],
          child: child,
        ),
      ),
    );
  }
}
