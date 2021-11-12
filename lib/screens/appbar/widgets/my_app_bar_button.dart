import 'package:div_a_site/constants.dart';
import 'package:flutter/material.dart';

class MyAppBarButton extends StatelessWidget {
  const MyAppBarButton({
    required this.buttonText,
    required this.onpressed,
    Key? key,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      elevation: 5,
      hoverColor: primaryColor,
    );
  }
}
