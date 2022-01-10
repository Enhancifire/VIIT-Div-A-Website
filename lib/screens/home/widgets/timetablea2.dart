// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                TableHeaderText(tableText: '10:10-11:10'),
                TableHeaderText(tableText: '11:20-12:20'),
                TableHeaderText(tableText: '13:00-14:00'),
                TableHeaderText(tableText: '14:10-15:10'),
                TableHeaderText(tableText: '15:20-16:20'),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Monday'),
                ADSLec(),
                PASLec(),
                PASTut(),
                FCNTut(),
                FCNLec(),
                WTLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Tuesday'),
                FCNLec(),
                PASLec(),
                ADSTut(),
                WTTut(),
                OSLec(),
                Blank(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Wednesday'),
                ADSLec(),
                FCNLec(),
                SSTut(),
                SETut(),
                SELec(),
                Blank(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Thursday'),
                ADSLec(),
                OSLec(),
                Blank(),
                WTTut(),
                SELec(),
                Blank(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Friday'),
                SELec(),
                PASLec(),
                Blank(),
                WTTut(),
                OSLec(),
                SSLec(),
              ],
            ),
            TableRow(
              children: [
                TableHeaderText(tableText: 'Saturday'),
                Blank(),
                Blank(),
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
