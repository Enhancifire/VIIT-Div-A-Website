import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleTextBanner extends StatelessWidget {
  const TitleTextBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Text(
            'Welcome to Div A',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 60, color: primaryColor),
          ),
          Container(
            color: Colors.white,
            height: 2,
            width: size.width / 2,
          ),
          const SizedBox(height: 6),
          Container(
            color: Colors.white,
            height: 2,
            width: size.width / 2.2,
          ),
          const SizedBox(height: 6),
          Container(
            color: Colors.white,
            height: 2,
            width: size.width / 2,
          ),
        ],
      ),
    );
  }
}
