import 'package:div_a_site/constants.dart';
import 'package:div_a_site/screens/home/widgets/contact_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'mainscreen.dart';
import '../appbar/my_app_bar_title.dart';
import 'widgets/timetable.dart';
import 'widgets/title_text.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final ttKey = new GlobalKey();
  final ttBanner = new GlobalKey();

  List<Widget> _homeList = [
    SizedBox(height: 30),
    TitleTextBanner(),
    SizedBox(height: 10),
    TimeTable(),
    ContactInfo(),
  ];

  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();

  void ttButton() {
    _itemScrollController.scrollTo(
        index: 3, duration: Duration(seconds: 1), curve: Curves.easeInOutCubic);
  }

  void cdButton() {
    _itemScrollController.scrollTo(
      index: 4,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        title: MyAppBarTitle(
          ttButton: ttButton,
          cdButton: cdButton,
          fdButton: ttButton,
        ),
      ),
      body: ScrollablePositionedList.builder(
        itemCount: _homeList.length,
        itemBuilder: (context, index) => _homeList[index],
        itemPositionsListener: _itemPositionsListener,
        itemScrollController: _itemScrollController,
      ),
    );
  }
}

class Cont extends StatelessWidget {
  const Cont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
    );
  }
}
