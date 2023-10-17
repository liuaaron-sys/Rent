import 'package:Rent/pages/home/index.dart';
import 'package:Rent/pages/login.dart';
import 'package:Rent/pages/not_found.dart';
import 'package:Rent/pages/register.dart';
import 'package:Rent/pages/room_detail/index.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  static String roomDetail = '/room/:roomId';

  static Handler _homeHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HomePage();
  });

  static Handler _loginHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return LoginPage();
  });

  static Handler _notFoundHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return NotFoundPage();
  });

  static Handler _roomDetailFoundHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomDetailPage(roomId: params['roomId'][0]);
  });

  static Handler _registerHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RegisterPage();
  });

  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(roomDetail, handler: _roomDetailFoundHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
