import 'package:nnstories_lesson/Models/News_model.dart';

Future<List<NewsModel>> getNewsFromDBTest() async {
// будет запрос к базе, после чего запрос вернет json
//  его спарсим и преобразуем в массив Map
await Future.delayed(Duration( seconds: 3));
List<NewsModel> listNewsModel = [];
listOfMapsNews.forEach((element) {
  listNewsModel.add(NewsModel.fromMap(element));
});
return listNewsModel;
}