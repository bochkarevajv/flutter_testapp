import 'package:flutter/material.dart';
import 'package:nnstories_lesson/Models/News_model.dart';

class NewsWidget extends StatelessWidget{
  final NewsModel newsModel;
  const NewsWidget(
      {Key? key, required this. newsModel}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
   final double width = MediaQuery.of(context).size.width;
       return Container(

     width: width * 0.3 ,
     height: 200,
     padding: EdgeInsets.all(10),
     margin: EdgeInsets.all(8),
     decoration: BoxDecoration(
       border: Border.all(width: 1.3),
     borderRadius: BorderRadius.circular(20)
   ),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
       Text (newsModel.title),
       Expanded(child: Card(child: Image.network(newsModel.photoURL),)),
       Text (newsModel.text),

     ],
   )
   );

  }

}
