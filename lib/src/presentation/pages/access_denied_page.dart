import 'package:auto_route/auto_route.dart';
import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/core/theme/colors/app_colors.dart';
import 'package:benchmark/src/presentation/bloc/auth/auth_cubit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccessDeniedPage extends StatelessWidget {
  AccessDeniedPage({
    super.key,
    this.title,
  });

  final String? title;

  final AuthCubit _authCubit = getIt<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title ?? 'Something went wrong!',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              onPressed: _authCubit.authorize,
              child: const Text('Try again'),
            ),
          ],
        ),
      ),
    );
  }
}
