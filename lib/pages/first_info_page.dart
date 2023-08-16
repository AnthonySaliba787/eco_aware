import 'package:eco_aware/class/item_class.dart';
import 'package:eco_aware/core/constants.dart';
import 'package:eco_aware/core/descriptions.dart';
import 'package:flutter/material.dart';

class FirstInfoPage extends StatefulWidget {
  const FirstInfoPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<FirstInfoPage> createState() => _FirstInfoPageState();
}

class _FirstInfoPageState extends State<FirstInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kDouble10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kDouble20),
              Text(
                "A Brief History",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: kDouble10),
              Text(
                climateHistory,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: kDouble20),
              Text(
                "Wave of Ignorance",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: kDouble10),
              Text(
                climateIgnorance,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: kDouble20),
              Text(
                "Present Day",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: kDouble10),
              Text(
                climatePresent,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
