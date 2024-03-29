import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/specific_series/bloc/specific_series_bloc/specific_series_bloc.dart';
import 'package:mult_love/features/specific_series/data/repositories/specific_series_repository.dart';
import 'package:mult_love/features/specific_series/data/sources/specific_series_source.dart';
import 'package:provider/provider.dart';

class SpecificSeriesScope extends StatelessWidget {
  const SpecificSeriesScope({
    Key? key,
    required this.child,
    required this.url,
  }) : super(key: key);

  final Widget child;
  final String url;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => SpecificSeriesSource(
            context.read<Dio>(),
          ),
        ),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<ISpecificSeriesRepository>(
            create: (context) => SpecificSeriesRepository(
              context.read<SpecificSeriesSource>(),
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SpecificSeriesBloc(
                specificSeriesRepository:
                    context.read<ISpecificSeriesRepository>(),
              )..add(
                  SpecificSeriesEvent.fetch(
                    isSubtitles: false,
                    subType: null,
                    url: url,
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
