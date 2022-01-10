import 'package:div_a_site/constants.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

void LaunchURL(String url) async {
  final launchURL = url;
  if (await canLaunch(launchURL)) {
    await launch(launchURL);
  } else {
    throw 'Could not launch $launchURL';
  }
}

class SubjectList extends StatelessWidget {
  final List subList;

  const SubjectList({
    Key? key,
    required this.subList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(subList).map((sub) {
          return SubButton(sub: sub);
        })
      ],
    );
  }
}

class SubButton extends StatelessWidget {
  final List sub;
  const SubButton({Key? key, required this.sub}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final String text = sub[0];
    final String link = sub[1];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {
          LaunchURL(link);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(color: primaryColor, fontSize: 24),
          ),
        ),
        color: darkColor,
        minWidth: double.infinity,
      ),
    );
  }
}
