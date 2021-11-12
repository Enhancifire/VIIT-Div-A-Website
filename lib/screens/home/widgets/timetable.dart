import 'package:div_a_site/constants.dart';
import 'package:div_a_site/screens/home/widgets/timetablea1.dart';
import 'package:div_a_site/screens/home/widgets/timetablea2.dart';
import 'package:div_a_site/screens/home/widgets/timetablea3.dart';
import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);
  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  int batchNumber = 2;

  void _setA1() {
    setState(() {
      batchNumber = 1;
    });
  }

  void _setA2() {
    setState(() {
      batchNumber = 2;
    });
  }

  void _setA3() {
    setState(() {
      batchNumber = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Timetable',
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: primaryColor,
              ),
        ),
        SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TimeTableSelector(
              buttonColor: (batchNumber == 1) ? primaryColor : darkColor,
              batchText: 'A1',
              onpressed: _setA1,
            ),
            TimeTableSelector(
              buttonColor: (batchNumber == 2) ? primaryColor : darkColor,
              batchText: 'A2',
              onpressed: _setA2,
            ),
            TimeTableSelector(
              buttonColor: (batchNumber == 3) ? primaryColor : darkColor,
              batchText: 'A3',
              onpressed: _setA3,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        (batchNumber == 1)
            ? const TimeTableA1()
            : (batchNumber == 2)
                ? const TimeTableA2()
                : const TimeTableA3()
      ],
    );
  }
}

class TimeTableSelector extends StatelessWidget {
  const TimeTableSelector({
    required this.buttonColor,
    required this.batchText,
    required this.onpressed,
    Key? key,
  }) : super(key: key);

  final Color buttonColor;
  final String batchText;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      onPressed: onpressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Text(
          batchText,
          style: Theme.of(context).textTheme.headline5!.copyWith(
              color: (buttonColor == primaryColor) ? darkColor : primaryColor),
        ),
      ),
    );
  }
}
