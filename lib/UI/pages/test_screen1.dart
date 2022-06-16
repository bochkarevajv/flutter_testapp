import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nnstories_lesson/Models/News_model.dart';
import 'package:nnstories_lesson/Models/db_request.dart';
import 'package:nnstories_lesson/UI/pages/test_screen2.dart';
import 'package:nnstories_lesson/UI/pages/menu.dart';
import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';
import 'package:nnstories_lesson/UI/widgets/news_widget.dart';


String myString = "";




class TestScreen1 extends StatefulWidget {

  const TestScreen1({Key?key}) : super(key: key);
 static const String title = 'Новости';

  @override
  State<TestScreen1> createState() => _TestScreen1State();
}

class _TestScreen1State extends State<TestScreen1> {
List<NewsModel> newsModelList = [];



  Future<void> getNewsFromDB() async {
    newsModelList = await getNewsFromDBTest();

  }

  @override
  void initState(){
    getNewsFromDB ().then((value) {
      setState ((){
      });
    });
super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: TestScreen1.title, body: buildbody(context),);
  }

  buildbody(BuildContext context) {
        return newsModelList.isEmpty?
        Center( child: CircularProgressIndicator(),):
            ListView.builder(
              itemCount: newsModelList.length,
              itemBuilder: (BuildContext context, int index) {
              return NewsWidget(newsModel: newsModelList[index]);
            },);
  }


}
