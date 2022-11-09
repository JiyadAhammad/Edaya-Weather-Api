import 'package:flutter/material.dart';

import 'widget/main_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              MainDeatilContinerWidget(
                height: height,
                width: width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
