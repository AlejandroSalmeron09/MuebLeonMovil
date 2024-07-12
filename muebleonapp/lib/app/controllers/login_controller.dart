import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoggedIn = false.obs;

  void login(String username, String password) {
    // Aquí puedes agregar la lógica para autenticar al usuario
    // Por ahora, asumimos que cualquier credencial es válida
    if (username.isNotEmpty && password.isNotEmpty) {
      isLoggedIn.value = true;
    }
  }

  void logout() {
    isLoggedIn.value = false;
  }
}
