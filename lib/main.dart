import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_management_app_with_supabase_and_flutter/pages/account_page.dart';
import 'package:user_management_app_with_supabase_and_flutter/pages/login_page.dart';
import 'package:user_management_app_with_supabase_and_flutter/pages/splash_page.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: "https://kgdfultdxbvytewyssdh.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtnZGZ1bHRkeGJ2eXRld3lzc2RoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDQ1NTE0MTIsImV4cCI6MjAyMDEyNzQxMn0.hdF7wIHitmhWdGlRbuf6AdpA1f1QUJrQAMMF39cm1G4",
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
