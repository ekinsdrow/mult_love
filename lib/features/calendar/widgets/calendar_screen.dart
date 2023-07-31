import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/calendar/bloc/calendar_bloc.dart';
import 'package:mult_love/features/calendar/data/models/calendar_series_event.dart';
import 'package:mult_love/features/calendar/di/calendar_scope.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({
    Key? key,
    required this.serialLink,
    required this.serialTitle,
  }) : super(key: key);

  final String serialLink;
  final String serialTitle;

  @override
  Widget build(BuildContext context) {
    return CalendarScope(
      serialLink: serialLink,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '$serialTitle - ${AppLocalizations.of(context)!.calendar}',
          ),
        ),
        body: BlocBuilder<CalendarBloc, CalendarState>(
          builder: (context, state) => state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            unknownError: () => Center(
              child: Text(AppLocalizations.of(context)!.unknown_error),
            ),
            dontHaveCalendarError: () => Center(
              child: Text(AppLocalizations.of(context)!.not_have_calendar),
            ),
            success: (series) => _Body(
              series: series,
            ),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.series,
  }) : super(key: key);

  final List<CalendarSeriesEvent> series;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: Constants.smallPadding,
        horizontal: Constants.mediumPadding,
      ),
      itemBuilder: (context, index) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              series[index].imgUrl,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '${index + 1}. ${series[index].title}',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Html(
                  data: series[index].date,
                  style: {
                    '*': Style(
                      margin: Margins.zero,
                      fontWeight: FontWeight.bold,
                    ),
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(series[index].description),
              ],
            ),
          ),
        ],
      ),
      itemCount: series.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: Constants.mediumPadding,
      ),
    );
  }
}
