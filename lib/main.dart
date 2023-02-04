import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:spimo_static_page/common_widget/app_bar/common_app_bar.dart';
import 'package:spimo_static_page/common_widget/color/color.dart';
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
        primarySwatch: Colors.blue,
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
        backgroundColor: backgroundGray,
        appBar: CommonAppBar(context: context, title: 'spiMo'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => context.pushNamed(AppRoute.privacyPolicy.name),
                child: const Text('プライバシーポリシー'),
              )
            ],
          ),
        ));
  }
}
