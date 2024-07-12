import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muebleonapp/app/controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                loginController.login(
                  usernameController.text,
                  passwordController.text,
                );
              },
              child: Text('Login'),
            ),
            Obx(() {
              if (loginController.isLoggedIn.value) {
                return Text('Login Successful!');
              } else {
                return Text('');
              }
            }),
          ],
        ),
      ),
    );
  }
}
