import 'package:div_a_site/constants.dart';
import 'package:div_a_site/screens/home/widgets/contact_info.dart';
import 'package:div_a_site/screens/home/widgets/notes/note.dart';
import 'package:flutter/material.dart';

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
    const SizedBox(height: 30),
    const TitleTextBanner(),
    const SizedBox(height: 10),
    const TimeTable(),
    const SizedBox(height: 10),
    ContactInfo(),
    const SizedBox(height: 10),
    Notes(),
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
      index: 5,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }

  void noteButton() {
    _itemScrollController.scrollTo(
      index: 7,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }

  void top() {
    _itemScrollController.scrollTo(
      index: 0,
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
          ntButton: noteButton,
        ),
      ),
      body: ScrollablePositionedList.builder(
        itemCount: _homeList.length,
        itemBuilder: (context, index) => _homeList[index],
        itemPositionsListener: _itemPositionsListener,
        itemScrollController: _itemScrollController,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_upward, color: darkColor),
        onPressed: top,
        backgroundColor: primaryColor,
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
