class NewsModel {
   String title;
   String text;
   String photoURL;
   int id;

   NewsModel(
      {this.title = 'Заголовок',
        this.text = 'Текст',
        this.photoURL = '',
        this.id = 99});
NewsModel.fromMap(Map<String, dynamic> dataMap,{
    this.text = '', this.title = '', this.id = 99, this.photoURL = ''}) {
    this.text = dataMap["text"]??'';
    this.title = dataMap['title']??'';
    this.id = dataMap['id']??99;
    this.photoURL = dataMap['photoURL']??'';

}

}
Map <String, dynamic> map = {
'text' : 'текс новости',
  'title' : 'заголовок новости',
  'id' : 1,
  'photoURL' : 'фото новости',
  'modereted' : true
};
var b = map['id']??1;//b=1, если нет в map значения id
void setIdToMap (int a){
  map['id'] = a;
}

List<dynamic> list = [
  'текс первой новости',
  'заголовок первой новости',
  1,
  'фото первой новости',
  true
];
var a = list[0];

List<Map <String, dynamic>> listOfMapsNews = [
  {'text' : 'текс новости',
    'title' : 'заголовок новости',
    'id' : 1,
    'photoURL' : 'https://img-fotki.yandex.ru/get/4806/96092519.a4/0_b19c5_c151e44b_orig',
    'modereted' : true},
  {'text' : 'текс новости',
    'title' : 'заголовок новости',
    'id' : 2,
    'photoURL' : 'https://cstor.nn2.ru/forum/data/forum/images/2019-05/232138757-_2017-10-06_23-40-15_2.jpg',
    'modereted' : true},
  {'text' : 'текс новости',
    'title' : 'заголовок новости',
    'id' : 3,
    'photoURL' : 'https://pp.userapi.com/PGeN2rJYF3oUJZbsq6-IFP0auy7pdBqaY9AUUA/J_R0PSVg-fg.jpg',
    'modereted' : true},
  {'text' : 'текс новости',
    'title' : 'заголовок новости',
    'id' : 4,
    'photoURL' : 'https://img-fotki.yandex.ru/get/4806/96092519.a4/0_b19c5_c151e44b_orig',
    'modereted' : true}
];