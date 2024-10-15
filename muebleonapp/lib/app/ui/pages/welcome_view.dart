import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muebleonapp/app/ui/constants.dart';
import 'package:muebleonapp/app/ui/pages/login_view.dart';
import 'package:sizer/sizer.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              FadeInDown(
                delay: const Duration(milliseconds: 800),
                duration: const Duration(milliseconds: 800),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/logoGym.gif',
                      width: 100.w,
                      height: 50.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 1.6.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeInUp(
                            delay: const Duration(milliseconds: 700),
                            duration: const Duration(milliseconds: 800),
                            child: Center(
                              child: Text(
                                'GYMFURY',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          FadeInUp(
                            delay: const Duration(milliseconds: 900),
                            duration: const Duration(milliseconds: 1000),
                            child: Text(
                              'GymFury es tu mejor opción para matarte en el gym.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 1000),
                      duration: const Duration(milliseconds: 1100),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(
                                    () => LoginPage()); // Navegación con GetX
                              },
                              child: FadeInUp(
                                  delay: const Duration(milliseconds: 1100),
                                  duration: const Duration(milliseconds: 1200),
                                  child: Text('Comenzemos',
                                      style: TextStyle(color: lightBlue))),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Satoshi'),
                                  backgroundColor: darkBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 16)),
                            ),
                          )
                        ],
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 1100),
                      duration: const Duration(milliseconds: 1200),
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
                                // Aquí puedes poner la ruta para la página de registro
                              },
                              child: const Text(
                                'Registrate',
                                style: TextStyle(
                                  color: darkBlue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
