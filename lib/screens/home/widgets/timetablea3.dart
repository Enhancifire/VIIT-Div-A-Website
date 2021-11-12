import 'package:div_a_site/constants.dart';
import 'package:flutter/material.dart';

import 'package:div_a_site/screens/home/widgets/lec_tut_constants.dart';
import 'table_header_text.dart';
import 'table_text.dart';

class TimeTableA3 extends StatelessWidget {
  const TimeTableA3({Key? key}) : super(key: key);

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
                DBMSTut(),
                Blank(),
                DVLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Tuesday'),
                DSLec(),
                DBMSLec(),
                DVTut(),
                Blank(),
                DMLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Wednesday'),
                DMLec(),
                DBMSLec(),
                DSTut(),
                MPTut(),
                DSLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Thursday'),
                DMLec(),
                MPLec(),
                DSTTut(),
                DVTut(),
                DSTLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Friday'),
                MPLec(),
                DBMSLec(),
                UHVTut(),
                DMTut(),
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
