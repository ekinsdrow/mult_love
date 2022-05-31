import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/main/bloc/serials/serials_bloc.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/main/di/main_scope.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScope(
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<SerialsBloc, SerialsState>(
            builder: (context, state) => state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (serials) => _Serials(
                serials: serials,
              ),
              error: () => const Center(
                child: Text('Error'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Serials extends StatelessWidget {
  const _Serials({
    Key? key,
    required this.serials,
  }) : super(key: key);

  final List<Serial> serials;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Image.network(
        serials[index].imageUrl,
        width: 100,
        height: 100,
      ),
      itemCount: serials.length,
    );
  }
}
