import 'package:flutter/material.dart';
import 'package:spimo_static_page/common_widget/app_bar/common_app_bar.dart';
import 'package:spimo_static_page/common_widget/color/color.dart';
import 'package:spimo_static_page/common_widget/sized_box/constant_sized_box.dart';
import 'package:spimo_static_page/contents/privacy_policy/privacy_policy_contents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGray,
      appBar: CommonAppBar(context: context, title: 'spiMo'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              sizedBoxH24,
              Text(
                'プライバシーポリシー',
                style: TextStyle(fontSize: 20),
              ),
              sizedBoxH8,
              ContentsBox(
                contents: [
                  '本アプリサービス運営者(以下運営者)は、以下のとおり個人情報保護方針を定め、個人情報保護の重要性の認識と取組みを徹底することにより、個人情報の保護を推進致します。'
                ],
              ),
              sizedBoxH24,
              LabelAndContentBox(
                  privacyPolicyLabel: PrivacyPolicyLabel.difinition),
              LabelAndContentBox(
                  privacyPolicyLabel: PrivacyPolicyLabel.getMethod),
              LabelAndContentBox(
                  privacyPolicyLabel: PrivacyPolicyLabel.objective),
              LabelAndContentBox(
                  privacyPolicyLabel: PrivacyPolicyLabel.objectiveChange),
              LabelAndContentBox(
                  privacyPolicyLabel: PrivacyPolicyLabel.thirdPartyProvision),
              LabelAndContentBox(
                  privacyPolicyLabel: PrivacyPolicyLabel.disclosure),
              LabelAndContentBox(
                  privacyPolicyLabel: PrivacyPolicyLabel.removeAndCorrection),
              LabelAndContentBox(privacyPolicyLabel: PrivacyPolicyLabel.change),
              LabelAndContentBox(
                  privacyPolicyLabel: PrivacyPolicyLabel.inquiry),
              LabelAndContentBox(
                  privacyPolicyLabel: PrivacyPolicyLabel.establishment),
            ],
          ),
        ),
      ),
    );
  }
}

class LabelAndContentBox extends StatelessWidget {
  const LabelAndContentBox({
    Key? key,
    required this.privacyPolicyLabel,
  }) : super(key: key);

  final PrivacyPolicyLabel privacyPolicyLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(title: privacyPolicyLabel.text),
        sizedBoxH8,
        ContentsBox(
          contents: privacyPolicyContents[privacyPolicyLabel.text]!,
        ),
        sizedBoxH16
      ],
    );
  }
}

class Label extends StatelessWidget {
  const Label({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(border: Border(bottom: (BorderSide()))),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class ContentsBox extends StatelessWidget {
  const ContentsBox({
    Key? key,
    required this.contents,
  }) : super(key: key);

  final List<String> contents;

  List<Widget> stringToWidget(List<String> contents) {
    return contents.map((content) => Text(content)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
          color: white, borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: stringToWidget(contents),
        ),
      ),
    );
  }
}
