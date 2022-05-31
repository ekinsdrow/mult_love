import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/app/router/router.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/bloc/seasons_bloc/seasons_bloc.dart';
import 'package:mult_love/features/seasons/di/seasons_scope.dart';

class SeasonsPage extends StatelessWidget {
  const SeasonsPage({
    Key? key,
    required this.serial,
  }) : super(key: key);

  final Serial serial;

  @override
  Widget build(BuildContext context) {
    return SeasonsScope(
      serialLink: serial.link,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(
              Constants.mediumPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serial.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: Constants.bigPadding,
                ),
                Expanded(
                  child: BlocBuilder<SeasonsBloc, SeasonsState>(
                    builder: (context, state) => state.when(
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: () => const Center(
                        child: Text('Ошибка при запросе списка сезонов'),
                      ),
                      success: (seasons) => GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: Constants.smallPadding,
                          mainAxisSpacing: Constants.smallPadding,
                        ),
                        itemBuilder: (context, index) => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[500],
                          ),
                          onPressed: () {
                            context.router.push(
                              SeriesRoute(
                                season: seasons[index],
                                serial: serial,
                              ),
                            );
                          },
                          child: Text(
                            seasons[index].number,
                          ),
                        ),
                        itemCount: seasons.length,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
