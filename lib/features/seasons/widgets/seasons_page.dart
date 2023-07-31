import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/app/router/router.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/bloc/seasons_bloc/seasons_bloc.dart';
import 'package:mult_love/features/seasons/di/seasons_scope.dart';

@RoutePage()    
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
        appBar: AppBar(
          title: Text(
            serial.title,
          ),
          actions: [
            IconButton(
              onPressed: () {
                context.router.push(
                  CalendarRoute(
                    serialLink: serial.link,
                    serialTitle: serial.title,
                  ),
                );
              },
              icon: const Icon(
                Icons.calendar_month,
              ),
            ),
            IconButton(
              onPressed: () {
                context.router.push(
                  SpecificSeriesRoute(
                    url: serial.link + '/random.php',
                  ),
                );
              },
              icon: const Icon(
                Icons.shuffle,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.mediumPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: BlocBuilder<SeasonsBloc, SeasonsState>(
                    builder: (context, state) => state.when(
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: () => Center(
                        child: Text(
                          AppLocalizations.of(context)!.error_seasons_list,
                        ),
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
                            backgroundColor: Colors.grey[500],
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
