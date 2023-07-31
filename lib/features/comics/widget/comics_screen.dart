import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()    
class ComicsPage extends StatelessWidget {
  const ComicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Comics'),
      ),
    );
  }
}
