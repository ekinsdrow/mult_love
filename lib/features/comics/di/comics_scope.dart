import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/comics/bloc/comics_bloc.dart';
import 'package:mult_love/features/comics/data/repositories/comics_category_repository.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

class ComicsScope extends StatelessWidget {
  const ComicsScope({
    Key? key,
    required this.widget,
    required this.serial,
  }) : super(key: key);

  final Widget widget;
  final Serial serial;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ComicsBloc(
        comicsCategoryRepository: ComicsCategoryRepository(
          dio: context.read<Dio>(),
        ),
      )..add(
          ComicsBlocEvent.fetch(
            url: serial.link + '/comixs.php',
            serialUrl: serial.link,
          ),
        ),
      child: widget,
    );
  }
}
