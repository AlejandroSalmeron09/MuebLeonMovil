import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:muebleonapp/app/controllers/login_controller.dart';
import 'package:muebleonapp/app/ui/constants.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends GetView<LoginController> {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                height: 100.h,
                decoration: const BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 900),
                      duration: const Duration(milliseconds: 1000),
                      child: IconButton(
                        onPressed: () {
                          Get.back(); // Navegación hacia atrás con GetX
                        },
                        icon: Icon(
                          IconlyBroken.arrow_left,
                          size: 3.6.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInDown(
                          delay: const Duration(milliseconds: 800),
                          duration: const Duration(milliseconds: 900),
                          child: Text(
                            'Vamos a comenzar',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 700),
                          duration: const Duration(milliseconds: 800),
                          child: Text(
                            'Bienvenido de nuevo,',
                            style: TextStyle(
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 700),
                          child: Text(
                            'Un gusto tenerte de vuelta!!',
                            style: TextStyle(
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 700),
                      duration: const Duration(milliseconds: 800),
                      child: const Text(
                        'Correo electronico',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Obx(
                        () => Container(
                          margin: EdgeInsets.symmetric(vertical: 0.8.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: .3.h),
                          decoration: BoxDecoration(
                            color: loginController.isFocusedEmail.value
                                ? Colors.white
                                : const Color(0xFFF1F0F5),
                            border: Border.all(
                                width: 1, color: const Color(0xFFD2D2D4)),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              if (loginController.isFocusedEmail.value)
                                BoxShadow(
                                  color:
                                      const Color(0xFF835DF1).withOpacity(.3),
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0, // Glow Color
                                )
                            ],
                          ),
                          child: TextField(
                            style: const TextStyle(fontWeight: FontWeight.w500),
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Escribe tu correo'),
                            focusNode: loginController.focusNodeEmail,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 500),
                      duration: const Duration(milliseconds: 600),
                      child: const Text(
                        'Contraseña',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 400),
                      duration: const Duration(milliseconds: 500),
                      child: Obx(
                        () => Container(
                          margin: EdgeInsets.symmetric(vertical: 0.8.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: .3.h),
                          decoration: BoxDecoration(
                            color: loginController.isFocusedPassword.value
                                ? Colors.white
                                : const Color(0xFFF1F0F5),
                            border: Border.all(
                                width: 1, color: const Color(0xFFD2D2D4)),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              if (loginController.isFocusedPassword.value)
                                BoxShadow(
                                  color:
                                      const Color(0xFF835DF1).withOpacity(.3),
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0, // Glow Color
                                )
                            ],
                          ),
                          child: TextField(
                            style: const TextStyle(fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.grey,
                                size: 16.sp,
                              ),
                              border: InputBorder.none,
                              hintText: 'Escribe tu contraseña',
                            ),
                            focusNode: loginController.focusNodePassword,
                          ),
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox(height: 10)),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 700),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: loginController.login,
                              child: FadeInUp(
                                  delay: const Duration(milliseconds: 700),
                                  duration: const Duration(milliseconds: 800),
                                  child: const Text(
                                    'Iniciar sesión',
                                    style: TextStyle(color: lightBlue),
                                  )),
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi'),
                                backgroundColor: darkBlue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 900),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '¿No tienes cuenta?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navegación a la página de registro con GetX
                            },
                            child: const Text(
                              'Registrate',
                              style: TextStyle(
                                color: darkBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
