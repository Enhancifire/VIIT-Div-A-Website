import 'package:flutter/material.dart';

import 'widgets/my_app_bar_button.dart';

class MyAppBarTitle extends StatelessWidget {
  const MyAppBarTitle({
    Key? key,
    required this.ttButton,
    required this.cdButton,
    required this.ntButton,
  }) : super(key: key);
  final VoidCallback ttButton;
  final VoidCallback cdButton;
  final VoidCallback ntButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // TextButton(onPressed: () {}, child: Text('data')),
        MyAppBarButton(
          buttonText: 'TimeTable',
          onpressed: ttButton,
        ),
        MyAppBarButton(
          buttonText: 'Contact Details',
          onpressed: cdButton,
        ),
        MyAppBarButton(
          buttonText: 'Notes',
          onpressed: ntButton,
        ),
      ],
    );
  }
}
