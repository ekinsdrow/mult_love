import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/common/widgets/appbar.dart';
import 'package:mult_love/features/app/router/router.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/bloc/series_bloc/series_bloc.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/series/di/series_scope.dart';

@RoutePage()
class SeriesPage extends StatelessWidget {
  const SeriesPage({
    Key? key,
    required this.season,
    required this.serial,
  }) : super(key: key);

  final Serial serial;
  final Season season;

  @override
  Widget build(BuildContext context) {
    return SeriesScope(
      season: season,
      serial: serial,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            serial: serial,
            customTitle:
                // ignore: lines_longer_than_80_chars
                '${serial.title} - ${season.number} ${AppLocalizations.of(context)!.season}',
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: BlocBuilder<SeriesBloc, SeriesState>(
                  builder: (context, state) => state.when(
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: () => Center(
                      child: Text(
                        AppLocalizations.of(context)!.error_series_list,
                      ),
                    ),
                    success: (series) => ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => _Item(
                        index: index + 1,
                        series: series[index],
                        season: season,
                        serial: serial,
                      ),
                      itemCount: series.length,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.series,
    required this.index,
    required this.season,
    required this.serial,
    Key? key,
  }) : super(key: key);

  final Series series;
  final Serial serial;
  final Season season;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(
          SpecificSeriesRoute(
            url: series.link,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Constants.mediumPadding,
          vertical: Constants.smallPadding,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                series.imageUrl,
                width: 174 / 1.5,
                height: 125 / 1.5,
              ),
            ),
            const SizedBox(
              width: Constants.smallPadding,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$index. ${series.title}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
