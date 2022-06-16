import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/test_screen1.dart';
import 'package:nnstories_lesson/UI/pages/menu.dart';
import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';
import 'package:nnstories_lesson/UI/widgets/news_widget.dart';

import '../widgets/second_widget.dart';

String myString = "";

class TestScreen2 extends StatelessWidget {
  const TestScreen2({Key? key}) : super(key: key);
  static const String title = 'Старый Нижний';

  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: title,body: buildbody (context),);
  }

  buildbody(BuildContext context) {
    return Column(children: [
      SecondWidget(),
    ],);
  }

  }




