import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:spimo_static_page/common_widget/app_bar/common_app_bar.dart';
import 'package:spimo_static_page/common_widget/color/color.dart';
import 'package:spimo_static_page/common_widget/sized_box/constant_sized_box.dart';
import 'package:spimo_static_page/routing/app_router.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const jaLocale = Locale("ja", "JA");

    return MaterialApp.router(
      title: 'spiMo',
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: white,
          surfaceTintColor: white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          surfaceTintColor: white,
        )),
        scaffoldBackgroundColor: backgroundGray,
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.light,
          primarySwatch: primaryDarkSwatch,
          accentColor: accentSwatch,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 50, color: primaryDark, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
              fontSize: 24, color: primaryDark, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(
              fontSize: 18, color: primaryDark, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
              fontSize: 16, color: primaryDark, fontWeight: FontWeight.normal),
          bodyText2: TextStyle(
              fontSize: 12, color: primaryDark, fontWeight: FontWeight.normal),
        ),
      ),
      routerConfig: router,
      locale: jaLocale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        jaLocale,
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(context: context, title: 'spiMo'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              sizedBoxH32,
              PrimaryButton(
                appRoute: AppRoute.termsOfService,
                title: 'ご利用規約',
              ),
              sizedBoxH24,
              PrimaryButton(
                appRoute: AppRoute.privacyPolicy,
                title: 'プライバシーポリシー',
              ),
            ],
          ),
        ));
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.appRoute,
    required this.title,
  }) : super(key: key);

  final AppRoute appRoute;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
        onPressed: () => context.pushNamed(appRoute.name),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
