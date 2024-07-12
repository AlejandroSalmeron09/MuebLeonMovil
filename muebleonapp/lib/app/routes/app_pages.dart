import 'package:get/get.dart';
import 'package:muebleonapp/app/ui/pages/login_view.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      transition: Transition.fade,
      //binding: LoginBinding()),
    ),
  ];
}
