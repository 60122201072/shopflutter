import 'package:flutter/material.dart';
import 'package:shopflutterapp/states/authen.dart';
import 'package:shopflutterapp/states/buyer_service.dart';
import 'package:shopflutterapp/states/create_account.dart';
import 'package:shopflutterapp/states/rider_service.dart';
import 'package:shopflutterapp/states/saler_service.dart';
import 'package:shopflutterapp/utility/my_constant.dart';


final Map<String,WidgetBuilder> map ={
  '/authen': (BuildContext context) => Authen(),
  '/createAccount' : (BuildContext context) => CreateAccount(),
  '/buyerService' : (BuildContext context) => BuyerService(),
  '/salerService' : (BuildContext context) => SalerService(),
  '/riderService' : (BuildContext context) => RiderService(),


};

String? initlalRoute;

void main(){
  initlalRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initlalRoute,
      
    );
  }
}
