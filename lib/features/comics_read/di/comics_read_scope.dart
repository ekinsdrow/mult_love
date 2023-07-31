import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/comics_read/bloc/comics_read_bloc.dart';
import 'package:mult_love/features/comics_read/data/repositories/comics_read_repository.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

class ComicsReadScope extends StatelessWidget {
  const ComicsReadScope({
    Key? key,
    required this.child,
    required this.serial,
    required this.url,
    required this.isNeedAddPage,
  }) : super(key: key);

  final Widget child;
  final Serial serial;
  final String url;
  final bool isNeedAddPage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ComicsReadBloc(
        comicsReadRepository: ComicsReadRepository(
          dio: context.read<Dio>(),
        ),
      )..add(
          ComicsReadEvent.fetch(
            url: url,
            serialUrl: serial.link,
            isNeedAddPage: isNeedAddPage,
          ),
        ),
      child: child,
    );
  }
}
