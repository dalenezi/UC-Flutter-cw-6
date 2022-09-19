import 'package:flutter/material.dart';
import 'package:flutter_kuwait/models/building.dart';

class BuildingScreen extends StatelessWidget {
  BuildingScreen({super.key, required this.building});

  final Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(building.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Image.network(building.imgURL),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              building.name,
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              building.disc,
              style: TextStyle(
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
