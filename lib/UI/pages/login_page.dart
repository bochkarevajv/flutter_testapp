import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/test_screen1.dart';
import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';



class loginPage extends StatefulWidget{
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}
class _loginPageState extends State<loginPage> {
  int i=0;
  int initStateCount=0;
  int didChangeDependenciesCount = 0;
  bool _codeWasSended = false;
TextEditingController phoneNumberController = TextEditingController();
String? errorMessage;
String phoneNumber = '';





checkPhoneNumber (){
  if (phoneNumberController.text.length < 10 || phoneNumberController.text.length >10) {
    errorMessage = 'Неверно введен номер телефона';
  }else {
errorMessage = null;
_codeWasSended = true;
phoneNumber = phoneNumberController.text;
phoneNumberController.text = '';
  }
    }

checkCode (){
  if (phoneNumberController.text.length !=6){
    errorMessage = 'Код неверный';
  }else {
    errorMessage = null;
    _codeWasSended = true;
    Navigator.of(context).push(
    MaterialPageRoute(builder: (BuildContext context) {
      return TestScreen1();
    }),);

    
  }
}
@override
  void initState(){
  initStateCount++;
  print ('initState сработал $initStateCount раз');
  super.initState();
}
@override
  void didChangeDependencies(){
  didChangeDependenciesCount++;
  print ('didChangeDependencies сработал $didChangeDependenciesCount раз');

  super.didChangeDependencies();
}
@override
  void dispose(){
  print ('dispose сработал');
super.dispose();
}


  @override
  Widget build(BuildContext context) {
  i++;
  print ('build сработал $i раз');
return MyScaffold(
  body:body (context),
  title: 'Авторизация',
);
  }
  Widget body (BuildContext context){
  double width = MediaQuery. of(context).size.width;

return SizedBox(
  width: width*0.3,
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      TextFormField(controller: phoneNumberController,
        decoration: InputDecoration(errorText: errorMessage,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal:3, vertical:20),
        label: Text(_codeWasSended?'Введите полученный код':'Введите номер телефона')
      ),),
      ElevatedButton(onPressed: (){

        if (_codeWasSended){
          checkCode();

        }else {
          checkPhoneNumber();
        }
  setState((){
     });
      }, child: Text(_codeWasSended?'Войти':'Получить смс с кодом')),


    ],
    
  ),
);
 




  }

  }
