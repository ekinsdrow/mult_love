import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mult_love/features/app/router/router.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.serial,
    this.customTitle,
  }) : super(key: key);

  final Serial serial;
  final String? customTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        customTitle ?? serial.title,
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
    );
  }
}
