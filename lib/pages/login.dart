import 'package:Rent/widgets/page_contents.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('登录'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              obscureText: !showPassword,
              decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off,
                      ))),
            ),
            Padding(padding: EdgeInsets.all(10)),
            RaisedButton(
                color: Colors.green,
                child: Text(
                  '登录',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {}),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('还没有账号，'),
                FlatButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'register');
                    },
                    child: Text(
                      '去注册~',
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
