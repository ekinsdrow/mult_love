import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/seasons/bloc/seasons_bloc/seasons_bloc.dart';
import 'package:mult_love/features/seasons/data/repositories/seasons_repository.dart';
import 'package:mult_love/features/seasons/data/sources/seasons_source.dart';
import 'package:provider/provider.dart';

class SeasonsScope extends StatelessWidget {
  const SeasonsScope({
    Key? key,
    required this.child,
    required this.serialLink,
  }) : super(key: key);

  final Widget child;
  final String serialLink;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => SeasonsSource(
            context.read<Dio>(),
          ),
        ),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<ISeasonsRepository>(
            create: (context) => SeasonsRepository(
              seasonsSource: context.read<SeasonsSource>(),
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SeasonsBloc(
                seasonsRepository: context.read<ISeasonsRepository>(),
              )..add(
                  SeasonsEvent.fetch(
                    serialLink: serialLink,
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
