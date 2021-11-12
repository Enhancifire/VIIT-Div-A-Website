import 'package:div_a_site/constants.dart';
import 'package:flutter/material.dart';

import 'package:div_a_site/screens/home/widgets/lec_tut_constants.dart';

import 'table_header_text.dart';
import 'table_text.dart';

class TimeTableA2 extends StatelessWidget {
  const TimeTableA2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: size.width / 1.3,
        child: Table(
          border: TableBorder.all(color: primaryColor),
          children: [
            TableRow(
              children: [
                TableHeaderText(tableText: 'Day'),
                TableHeaderText(tableText: '9:00-10:00'),
                TableHeaderText(tableText: '10:00-11:00'),
                TableHeaderText(tableText: '11:05-12:05'),
                TableHeaderText(tableText: '13:00-14:00'),
                TableHeaderText(tableText: '14:05-15:05'),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Monday'),
                DSLec(),
                MPLec(),
                DVTut(),
                DSTut(),
                DVLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Tuesday'),
                DSLec(),
                DBMSLec(),
                DBMSTut(),
                MPTut(),
                DMLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Wednesday'),
                DMLec(),
                DBMSLec(),
                DSTTut(),
                DVTut(),
                DSLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Thursday'),
                DMLec(),
                MPLec(),
                UHVTut(),
                Blank(),
                DSTLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Friday'),
                MPLec(),
                DBMSLec(),
                DMTut(),
                Blank(),
                UHVLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Saturday'),
                UHVLec(),
                Blank(),
                Blank(),
                Blank(),
                Blank(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
