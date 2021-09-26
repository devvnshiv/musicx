import 'package:flutter/material.dart';



class preloading extends StatefulWidget {


  @override
  _preloadingState createState() => _preloadingState();
}

class _preloadingState extends State<preloading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
