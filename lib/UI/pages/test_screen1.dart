import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/test_screen2.dart';
import 'package:nnstories_lesson/UI/pages/menu.dart';
import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';
import 'package:nnstories_lesson/UI/widgets/news_widget.dart';

String myString = "";






class TestScreen1 extends StatelessWidget {

  const TestScreen1({Key?key}) : super(key: key);
 static const String title = 'Новости';
  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: title, body: buildbody(context),);
  }
  buildbody(BuildContext context) {
var index = NewsWidget();
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return NewsWidget();
    }
    );
  }


}
