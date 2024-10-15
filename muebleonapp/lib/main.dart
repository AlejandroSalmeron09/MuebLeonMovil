import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muebleonapp/app/ui/pages/welcome_view.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const AnimatedLogin());
}

class AnimatedLogin extends StatelessWidget {
  const AnimatedLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false, // Desactiva el banner de depuración
        theme: ThemeData(fontFamily: 'Satoshi'), // Aplica tu tema
        home: const WelcomePage(), // Asegúrate de que WelcomePage sea const
      ),
    );
  }
}
