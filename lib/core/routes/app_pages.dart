
import 'package:study_flutter/features/home/presentation/pages/home_screen.dart';
import 'package:study_flutter/features/login/presentation/pages/login_screen.dart';

import 'app_routes.dart';
abstract class AppPages {
  static final pages = {
Routes.home: (context) => HomeScreen(),
Routes.login: (context) => LoginScreen(),
};
}






