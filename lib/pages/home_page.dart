import 'package:eco_aware/class/item_class.dart';
import 'package:eco_aware/core/constants.dart';
import 'package:eco_aware/core/descriptions.dart';
import 'package:eco_aware/widget/card_widget_1.dart';
import 'package:eco_aware/widget/card_widget_2.dart';
import 'package:eco_aware/widget/card_widget_3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EcoAware Home"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kDouble10),
        child: Column(
          children: [
            const Text(
              "Welcome to the Learning Hub!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: kDouble5),
            const Text(
              "Please scroll and tap the cards to learn more about the topic of Climate Change.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: kDouble20),
            CardWidget(
              box: ItemClass(title: "What is climate change?", desc: desc1),
            ),
            CardWidget2(
              box: ItemClass(title: "How does it affect us?", desc: desc2),
            ),
            CardWidget3(
              box: ItemClass(title: "How can we fight it?", desc: desc3),
            ),
          ],
        ),
      ),
    );
  }
}
