import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/main/bloc/serials/serials_bloc.dart';
import 'package:mult_love/features/main/data/repository/serials_repository.dart';
import 'package:mult_love/features/main/data/sources/serials_source.dart';
import 'package:provider/provider.dart';

class MainScope extends StatelessWidget {
  const MainScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => SerialsSource(
            context.read<Dio>(),
          ),
        ),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<ISerialsRepository>(
            create: (context) => SerialsRepository(
              context.read<SerialsSource>(),
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SerialsBloc(
                serialsRepository: context.read<ISerialsRepository>(),
              )..add(
                  const SerialsEvent.fetch(),
                ),
            ),
          ],
          child: child,
        ),
      ),
    );
  }
}
