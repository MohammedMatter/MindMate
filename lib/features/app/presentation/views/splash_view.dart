import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mind_mate_project/core/routes/app_router.dart';
import 'package:mind_mate_project/features/app/presentation/widgets/splash_logo_animation.dart';
import 'package:mind_mate_project/features/main_layout/presentation/views/main_layout_view.dart';



class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;
  late Animation<double> _moveAnimation;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 4));
      GoRouter.of(context).pushReplacementNamed(AppRouter.loginView,);
    });

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _moveAnimation = Tween<double>(begin: -100, end: 35).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _rotationAnimation = Tween<double>(begin: 0, end: 2 * pi).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SplashLogoAnimation(
        animationController: _animationController,
        moveAnimation: _moveAnimation,
        rotationAnimation: _rotationAnimation,
        height: height,
        width: width,
      ),
    );
  }
}


