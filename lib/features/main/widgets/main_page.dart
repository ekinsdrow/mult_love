import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/common/assets/constants.dart';
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
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: Constants.mediumPadding,
            ),
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
    return ListView.separated(
      itemBuilder: (context, index) => ListTile(
        leading: Image.network(
          serials[index].logoUrl,
        ),
        title: Text(
          serials[index].title,
        ),
        onTap: () {
          //TODO: open seasons
        },
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: Constants.smallPadding,
      ),
      itemCount: serials.length,
    );
  }
}
