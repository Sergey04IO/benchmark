import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/navigation/app_router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'Login Page',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.router.replace(const HomeRoute());
              },
              child: const Text('Go to home'),
            ),
          ],
        ),
      ),
    );
  }
}
