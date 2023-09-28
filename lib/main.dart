import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';
import 'routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppPages.router,
    );
  }
}

class FullNameProvider extends InheritedWidget {
  final TextEditingController fullNameController;

  const FullNameProvider({
    super.key,
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
