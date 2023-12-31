import 'package:Rent/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';


class Application extends StatelessWidget {
  const  Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      // home: LoginPage(),
      theme: ThemeData(primaryColor: Colors.green),
      onGenerateRoute: router.generator,
    );
  }

}