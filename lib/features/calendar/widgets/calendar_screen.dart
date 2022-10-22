import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    return Container();
  }
}
