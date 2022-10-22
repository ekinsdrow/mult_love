import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/calendar/bloc/calendar_bloc.dart';
import 'package:mult_love/features/calendar/di/calendar_scope.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            error: (e) => Center(
              child: Text(e),
            ),
            success: () => const Text('Success'),
          ),
        ),
      ),
    );
  }
}
