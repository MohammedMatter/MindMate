import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mind_mate_project/core/routes/app_router.dart';
import 'package:mind_mate_project/core/theme/app_color.dart';
import 'package:mind_mate_project/features/auth/data/repositories_impl/auth_repository_impl.dart';
import 'package:mind_mate_project/features/auth/domain/use_cases/sign_in_use_cases.dart';
import 'package:mind_mate_project/features/auth/domain/use_cases/sign_up_use_cases.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/login_view_model.dart';
import 'package:mind_mate_project/features/auth/presentation/view_models/sign_up_view_model.dart';
import 'package:mind_mate_project/features/home/presentation/view_model/home_view_model.dart';

import 'package:mind_mate_project/features/main_layout/presentation/view_model/main_layout_view_model.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MindMate());
}

class MindMate extends StatelessWidget {
  const MindMate({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:
              (context) => LoginViewModel(
                signInUseCases: SignInUseCases(
                  authRepository: AuthRepositoryImpl(),
                ),
              ),
        ),
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
        ChangeNotifierProvider(
          create:
              (context) => SignUpViewModel(
                signUpUseCases: SignUpUseCases(
                  authRepository: AuthRepositoryImpl(),
                ),
              ),
        ),
        ChangeNotifierProvider(create: (context) => MainLayoutViewModel()),
      ],
      builder:
          (context, child) => MaterialApp.router(
            theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: Colors.grey[100],
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  textStyle: WidgetStatePropertyAll(
                    TextStyle(
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                  foregroundColor: WidgetStatePropertyAll(AppColors.background),
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.appRouter,
          ),
    );
  }
}
