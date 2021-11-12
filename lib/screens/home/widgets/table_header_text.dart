import 'package:flutter/material.dart';

class TableHeaderText extends StatelessWidget {
  const TableHeaderText({
    Key? key,
    required this.tableText,
  }) : super(key: key);

  final String tableText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          tableText,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
