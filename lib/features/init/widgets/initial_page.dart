import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/app/router/router.dart';
import 'package:mult_love/features/init/blocs/init/initial_bloc.dart';
import 'package:mult_love/features/init/di/inital_page_scope.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InitialPageScope(
      child: BlocListener<InitialBloc, InitialState>(
        listener: (context, state) => state.whenOrNull(
          success: () => context.router.replaceAll(
            [
              const MainRoute(),
            ],
          ),
        ),
        child: const Scaffold(
          body: SafeArea(
            child: Center(
              child: Text("Mult.love"),
            ),
          ),
        ),
      ),
    );
  }
}
