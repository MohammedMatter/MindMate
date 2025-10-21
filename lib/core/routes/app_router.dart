import 'package:go_router/go_router.dart';
import 'package:mind_mate_project/features/ai_chat/presentation/views/ai_chat_view.dart';
import 'package:mind_mate_project/features/analysis/presentation/views/analysis_view.dart';
import 'package:mind_mate_project/features/app/presentation/views/splash_view.dart';
import 'package:mind_mate_project/features/auth/presentation/views/login_view.dart';
import 'package:mind_mate_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:mind_mate_project/features/home/presentation/views/home_view.dart';
import 'package:mind_mate_project/features/journal/presentation/views/journal_view.dart';
import 'package:mind_mate_project/features/main_layout/presentation/views/main_layout_view.dart';
import 'package:mind_mate_project/features/profile/presentation/views/profile_view.dart';

abstract class AppRouter {
  static String splashView = 'Splash View';
  static String loginView = 'Login View';
  static String signUpView = 'Sign Up View';
  static String homePageView = 'Home Page View';
  static String analysisView = 'Analysis View';
  static String mainLayoutView = 'Main Layout View';
  static String aiChatView = 'Ai Chat View';
  static String journalView = 'Journal View';
  static String profileView = 'Profile View';
  static final appRouter = GoRouter(
    initialLocation: '/Splash',
    routes: [
      GoRoute(
        path: '/MainLayout',
        name: mainLayoutView,
        builder: (context, state) => MainLayoutView(),
      ),
      GoRoute(
        path: '/ProfileView',
        name: profileView,
        builder: (context, state) => ProfileView(),
      ),
      GoRoute(
        path: '/journalView',
        name: journalView,
        builder: (context, state) => JournalView(),
      ),
      GoRoute(
        path: '/AiChat',
        name: aiChatView,
        builder: (context, state) => AiChatView(),
      ),
      GoRoute(
        path: '/Splash',
        name: splashView,
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/Analysis',
        name: analysisView,
        builder: (context, state) => AnalysisView(),
      ),
      GoRoute(
        path: '/Login',
        name: loginView,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: '/SignUp',
        name: signUpView,
        builder: (context, state) => SignUpView(),
      ),
      GoRoute(
        path: '/Home',
        name: homePageView,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
