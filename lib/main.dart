import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mult_love/common/logs/app_bloc_observer.dart';
import 'package:mult_love/features/app/app.dart';

void main() => runZonedGuarded(
      () {
        BlocOverrides.runZoned(
          () async {
            runApp(
              App(),
            );
          },
          blocObserver: AppBlocObserver(),
        );
      },
      (error, stack) => {},
    );
