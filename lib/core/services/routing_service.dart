import 'package:bloc_architecture/features/auth/views/reset_password/reset_password_page.dart';
import 'package:bloc_architecture/features/auth/views/verification_code/verification_code_page.dart';
import 'package:bloc_architecture/features/layouts/controllers/providers/bottom_nav_bar_provider.dart';
import 'package:bloc_architecture/features/onboarding/views/onboarding/onboarding1_page.dart';
import 'package:bloc_architecture/features/onboarding/views/onboarding/onboarding2_page.dart';
import 'package:bloc_architecture/features/onboarding/views/onboarding/onboarding3_page.dart';
import 'package:bloc_architecture/core/services/secure_storage_service.dart';
import 'package:bloc_architecture/core/services/shared_pref_service.dart';
import 'package:bloc_architecture/features/shared/utils/is_guest_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/views/forget_password/forget_password_page.dart';
import '../../features/auth/views/login/login_page.dart';
import '../../features/auth/views/register/register_page.dart';
import '../../features/layouts/views/layouts.dart';
import '../../features/shared/widgets/images/image_viewer_widget.dart';
import '../constants/cache_constants.dart';
import '../constants/routing_constants.dart';

class RoutingService {
  RoutingService._();
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    navigatorKey: navigatorKey,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        name: RoutingConstants.layoutsPage,
        path: '/',
        pageBuilder: (context, state) =>
            CupertinoPage(key: state.pageKey, child: const LayoutsPage()),
        redirect: (context, state) async {
          if (isGuest && context.mounted) {
            context.read<BottomNavBarProvider>().index = 3;
            return null;
          }
          final String? accessToken =
              await SecureStorageService.get(CacheConstants.accessToken);
          if (accessToken == null) {
            final bool isOnBoardingViewed =
                SharedPrefService.getBool(CacheConstants.isOnboardingViewed) ??
                    false;
            if (isOnBoardingViewed) {
              return '/login';
            } else {
              return '/onboarding1';
            }
          }
          // SocketIOClient.init(accessToken);
          // SocketIOClient.connect();
          return null;
        },
      ),
      GoRoute(
        name: RoutingConstants.onboarding1Page,
        path: '/onboarding1',
        pageBuilder: (context, state) => CupertinoPage(
          key: state.pageKey,
          child: const Onboarding1Page(),
        ),
      ),
      GoRoute(
        name: RoutingConstants.onboarding2Page,
        path: '/onboarding2',
        pageBuilder: (context, state) => CupertinoPage(
          key: state.pageKey,
          child: const Onboarding2Page(),
        ),
      ),
      GoRoute(
        name: RoutingConstants.onboarding3Page,
        path: '/onboarding3',
        pageBuilder: (context, state) => CupertinoPage(
          key: state.pageKey,
          child: const Onboarding3Page(),
        ),
      ),
      GoRoute(
        name: RoutingConstants.loginPage,
        path: '/login',
        pageBuilder: (context, state) => CupertinoPage(
          key: state.pageKey,
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        name: RoutingConstants.registerPage,
        path: '/register',
        pageBuilder: (context, state) => CupertinoPage(
          key: state.pageKey,
          child: const RegisterPage(),
        ),
      ),
      GoRoute(
        name: RoutingConstants.forgetPasswordPage,
        path: '/forget-password',
        pageBuilder: (context, state) => CupertinoPage(
          key: state.pageKey,
          child: const ForgetPasswordPage(),
        ),
      ),
      GoRoute(
        name: RoutingConstants.verificationPage,
        path: '/verification-code/:email',
        pageBuilder: (context, state) {
          final String email = state.pathParameters['email'] as String;
          return CupertinoPage(
            key: state.pageKey,
            child: VerificationCodePage(email: email),
          );
        },
      ),
      GoRoute(
        name: RoutingConstants.resetPasswordPage,
        path: '/reset-password/:otpToken',
        pageBuilder: (context, state) {
          final String otpToken = state.pathParameters['otpToken'] as String;
          return CupertinoPage(
            key: state.pageKey,
            child: ResetPasswordPage(otpToken: otpToken),
          );
        },
      ),
      GoRoute(
        name: RoutingConstants.imageViewerPage,
        path: '/image-viewer/:imageUrl',
        pageBuilder: (context, state) {
          String imageUrl = state.pathParameters['imageUrl'] as String;
          return CupertinoPage(
            key: state.pageKey,
            child: ImageViewerPage(imageUrl: imageUrl),
          );
        },
      ),
    ],
  );

  static FadeTransition _fadeTransition(
      Animation<double> animation, Widget child) {
    const begin = 0.0;
    const end = 1.0;
    const curve = Curves.easeInOut;
    final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    final opacityAnimation = animation.drive(tween);
    return FadeTransition(
      opacity: opacityAnimation,
      child: child,
    );
  }
}
