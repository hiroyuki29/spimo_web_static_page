import 'package:go_router/go_router.dart';
import 'package:spimo_static_page/features/inquiry/screens/inquiry_screen.dart';
import 'package:spimo_static_page/features/privacy_policy/screens/privacy_policy_screen.dart';
import 'package:spimo_static_page/features/terms_of_service/screens/tems_of_service_screen.dart';
import 'package:spimo_static_page/main.dart';

enum AppRoute {
  home,
  termsOfService,
  privacyPolicy,
  inquiry,
}

final GoRouter router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'terms_of_service',
          name: AppRoute.termsOfService.name,
          builder: (context, state) => const TermsOfServiceScreen(),
        ),
        GoRoute(
          path: 'privacy_policy',
          name: AppRoute.privacyPolicy.name,
          builder: (context, state) => const PrivacyPolicyScreen(),
        ),
        GoRoute(
          path: 'inquiry',
          name: AppRoute.inquiry.name,
          builder: (context, state) => const InquiryScreen(),
        ),
      ],
    ),
  ],
);
