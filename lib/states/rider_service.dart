import 'package:flutter/material.dart';
import 'package:shopflutterapp/widgets/show_signout.dart';

class RiderService extends StatefulWidget {
  RiderService({Key? key}) : super(key: key);

  @override
  _RiderServiceState createState() => _RiderServiceState();
}

class _RiderServiceState extends State<RiderService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('rider'),
      ),
      drawer: Drawer(
        child: ShowSignOut(),
      ),
       
    );
  }
}