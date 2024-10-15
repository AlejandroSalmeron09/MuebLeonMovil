import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // Variables observables para manejar el estado del foco
  var focusNodeEmail = FocusNode();
  var focusNodePassword = FocusNode();
  var isFocusedEmail = false.obs;
  var isFocusedPassword = false.obs;

  @override
  void onInit() {
    super.onInit();

    // Listener para actualizar el estado cuando se enfoca el campo de email
    focusNodeEmail.addListener(() {
      isFocusedEmail.value = focusNodeEmail.hasFocus;
    });

    // Listener para actualizar el estado cuando se enfoca el campo de contraseña
    focusNodePassword.addListener(() {
      isFocusedPassword.value = focusNodePassword.hasFocus;
    });
  }

  @override
  void onClose() {
    // Liberar los focus nodes cuando el controller se destruye
    focusNodeEmail.dispose();
    focusNodePassword.dispose();
    super.onClose();
  }

  // Función para manejar el login (puedes agregar la lógica de autenticación aquí)
  void login() {
    // Lógica para iniciar sesión
    print("Iniciando sesión...");
  }
}
