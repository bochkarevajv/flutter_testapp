import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/test_screen1.dart';
import 'package:nnstories_lesson/UI/pages/menu.dart';
import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';

class TestScreen3 extends StatelessWidget {
  const TestScreen3({Key? key}) : super(key: key);
  static const String title = 'Страница 3';

  @override
  Widget build(BuildContext context) {
    return MyScaffold( title: title, body: buildbody (context),);
  }

  buildbody(BuildContext context) {
    return Center(child: Text(title),);
  }
}


