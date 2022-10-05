import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/app/router/router.dart';
import 'package:mult_love/features/main/bloc/serials/serials_bloc.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/main/di/main_scope.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).serials,
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<SerialsBloc, SerialsState>(
            builder: (context, state) => state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (serials) => _Serials(
                serials: serials,
              ),
              error: () => Center(
                child: Text(
                  AppLocalizations.of(context).error_mult_list,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => ListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: Constants.smallPadding,
                horizontal: Constants.mediumPadding,
              ),
              leading: Image.network(
                serials[index].logoUrl,
                width: 50,
                height: 50,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }

                  return const CircularProgressIndicator();
                },
              ),
              title: Text(
                serials[index].title,
              ),
              onTap: () {
                context.router.push(
                  SeasonsRoute(
                    serial: serials[index],
                  ),
                );
              },
            ),
            itemCount: serials.length,
          ),
        ),
      ],
    );
  }
}
