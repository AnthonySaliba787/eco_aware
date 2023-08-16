import 'package:eco_aware/class/item_class.dart';
import 'package:eco_aware/pages/second_info_page.dart';
import 'package:flutter/material.dart';
import '../core/constants.dart';

class CardWidget2 extends StatelessWidget {
  const CardWidget2({super.key, required this.box});

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SecondInfoPage(
                box: box,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble20),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Text(
                box.title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: kDouble5),
              Text(
                box.desc,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
