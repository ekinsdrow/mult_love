import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mult_love/features/app/router/router.dart';
import 'package:mult_love/features/comics/data/models/serial_with_comics.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.serial,
    this.customTitle,
    this.showComicsButton = true,
  }) : super(key: key);

  final Serial serial;
  final String? customTitle;
  final bool showComicsButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        customTitle ?? serial.title,
      ),
      actions: [
        if (SerialWithComics.serialsWithComics.keys.contains(serial.link) &&
            showComicsButton)
          IconButton(
            onPressed: () {
              context.router.push(
                ComicsRoute(
                  serial: serial,
                ),
              );
            },
            icon: const Icon(
              Icons.book,
            ),
          ),
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
