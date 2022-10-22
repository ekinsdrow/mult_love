import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/features/calendar/bloc/calendar_bloc.dart';
import 'package:mult_love/features/calendar/data/repository/calendar_repository.dart';

class CalendarScope extends StatelessWidget {
  const CalendarScope({
    Key? key,
    required this.child,
    required this.serialLink,
  }) : super(key: key);

  final Widget child;
  final String serialLink;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<ICalendarRepository>(
      create: (context) => CalendarRepository(),
      child: BlocProvider(
        create: (context) => CalendarBloc(
          calendarRepository: context.read<ICalendarRepository>(),
        )
          ..add(
            CalendarEvent.fetch(
              serialUrl: serialLink,
            ),
          ),
        child: child,
      ),
    );
  }
}
