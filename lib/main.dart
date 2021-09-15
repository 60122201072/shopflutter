import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopflutterapp/states/add_product.dart';
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
  '/addProduct' : (BuildContext context) => AddProduct(), 


};

String? initlalRoute;


  Future<Null> main()async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? type = preferences.getString('type');
    print('type ==>> $type');
    if (type?.isEmpty??true) {
      initlalRoute = MyConstant.routeAuthen;
      runApp(MyApp());
    } else {
      switch (type) {
        case 'buyer':
        initlalRoute = MyConstant.routeBuyerService;
        runApp(MyApp());
          break;
          case 'seller':
        initlalRoute = MyConstant.routeSaleService;
        runApp(MyApp());
          break;
        //   case 'rider':
        // initlalRoute = MyConstant.routeRiderService;
        // runApp(MyApp());
        //   break;
        default:
      }
    }
  }


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialColor materialColor = MaterialColor(0xff007e00,MyConstant.mapMateriaColor);
    return MaterialApp(
      theme: ThemeData(primarySwatch: materialColor),
      debugShowCheckedModeBanner: false,
      title: MyConstant.appName,
      routes: map,
      initialRoute: initlalRoute,
      
    );
  }
}
