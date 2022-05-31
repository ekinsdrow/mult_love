import 'package:flutter/material.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

class SeasonsPage extends StatelessWidget {
  const SeasonsPage({
    Key? key,
    required this.serial,
  }) : super(key: key);

  final Serial serial;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: Constants.smallPadding,
                    mainAxisSpacing: Constants.smallPadding,
                  ),
                  itemBuilder: (context, index) => ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400],
                    ),
                    onPressed: () {
                      //TODO: open series
                    },
                    child: Text('$index'),
                  ),
                  itemCount: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
