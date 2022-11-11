import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: CircularParticle(
        height: 10,
        width: 10,
        isRandomColor: true,
      ),
      
    );
  }
}
