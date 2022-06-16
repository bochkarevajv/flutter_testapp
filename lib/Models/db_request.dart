import 'package:nnstories_lesson/Models/News_model.dart';

Future<List<NewsModel>> getNewsFromDBTest() async {
await Future.delayed(Duration( seconds: 3));
List<NewsModel> listNewsModel = [];
listOfMapsNews.forEach((element) {
  listNewsModel.add(NewsModel.fromMap(element));
});
return listNewsModel;
}