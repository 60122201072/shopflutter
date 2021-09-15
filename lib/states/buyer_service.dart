import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopflutterapp/utility/my_constant.dart';
import 'package:shopflutterapp/widgets/show_image.dart';
import 'package:shopflutterapp/widgets/show_signout.dart';
import 'package:shopflutterapp/widgets/show_title.dart';

class BuyerService extends StatefulWidget {
  BuyerService({Key? key}) : super(key: key);

  @override
  _BuyerServiceState createState() => _BuyerServiceState();
}

class _BuyerServiceState extends State<BuyerService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buyer'),
      ),
      drawer: Drawer(
        child: ShowSignOut(),
      ),
    );
  }

}