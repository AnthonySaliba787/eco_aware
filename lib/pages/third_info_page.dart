import 'package:eco_aware/class/item_class.dart';
import 'package:eco_aware/core/constants.dart';
import 'package:eco_aware/core/descriptions.dart';
import 'package:flutter/material.dart';

class ThirdInfoPage extends StatefulWidget {
  const ThirdInfoPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<ThirdInfoPage> createState() => _ThirdInfoPageState();
}

class _ThirdInfoPageState extends State<ThirdInfoPage> {
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
                "How to Contribute",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: kDouble10),
              Text(
                climateAction,
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
