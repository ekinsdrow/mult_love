import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/comics_category/bloc/comics_category_bloc.dart';
import 'package:mult_love/features/comics_category/data/repositories/comics_repository.dart';

class ComicsCategoryScope extends StatelessWidget {
  const ComicsCategoryScope({
    Key? key,
    required this.child,
    required this.url,
    required this.serialUrl,
  }) : super(key: key);

  final Widget child;
  final String url;
  final String serialUrl;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ComicsCategoryBloc(
        comicsRepository: ComicsRepository(
          dio: context.read<Dio>(),
        ),
      )..add(
          ComicsCategoryEvent.fetch(
            url: url,
            serialUrl: serialUrl,
          ),
        ),
      child: child,
    );
  }
}
