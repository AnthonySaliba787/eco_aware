import 'package:eco_aware/core/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  Future<void> launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("EcoAware News"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                height: 10,
              ),
              const Text(
                "Trusted News Sources",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Text(
                "You may find trusted news sources here that report about climate change and related news. Tap them to get redirected to their website!",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: kDouble20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(100),
                ),
                onPressed: () {
                  launchURL("www.climatecentral.org");
                },
                child: const Text(
                  "Climate Central",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: kDouble10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(100),
                ),
                onPressed: () {
                  launchURL("www.insideclimatenews.org");
                },
                child: const Text(
                  "Inside Climate News",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: kDouble10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(100),
                ),
                onPressed: () {
                  launchURL("www.edf.org");
                },
                child: const Text(
                  "Environmental Defense Fund",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: kDouble10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(100),
                ),
                onPressed: () {
                  launchURL("www.nationalgeographic.com");
                },
                child: const Text(
                  "National Geographic",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));
  }
}
