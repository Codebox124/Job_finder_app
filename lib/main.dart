import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:roadside_assistant_app_ui/pages/HomeScreen.dart';
import 'package:roadside_assistant_app_ui/pages/checkEmail_screen.dart';
import 'package:roadside_assistant_app_ui/pages/forget_password.dart';
import 'package:roadside_assistant_app_ui/pages/login_screen.dart';
import 'package:roadside_assistant_app_ui/pages/logo_screen.dart';
import 'package:roadside_assistant_app_ui/pages/signup_screen.dart';
import 'package:roadside_assistant_app_ui/pages/successPassword.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => LogoPage(),
        '/home':(context) => HomePage(),
        '/login':(context) => LoginPage(),
        '/signup':(context) => SignupPage(),
        '/forgetpassword':(context) => ForgetPasswordPage(),
        '/checkmail':(context) => CheckEmailPage(),
        '/passwordsuccess':(context) => SucesspasswordPage()

      },
      debugShowCheckedModeBanner: false,
    
    );
  }
}



class FullNameProvider extends InheritedWidget {
  final TextEditingController fullNameController;

  FullNameProvider({
    required this.fullNameController,
    required Widget child,
  }) : super(child: child);

  static FullNameProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FullNameProvider>();
  }

  @override
  bool updateShouldNotify(FullNameProvider oldWidget) {
    return fullNameController != oldWidget.fullNameController;
  }
}

