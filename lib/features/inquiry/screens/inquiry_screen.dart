import 'package:flutter/material.dart';
import 'package:spimo_static_page/common_widget/app_bar/common_app_bar.dart';
import 'package:spimo_static_page/common_widget/color/color.dart';
import 'package:spimo_static_page/common_widget/contents/label_and_content_box.dart';
import 'package:spimo_static_page/common_widget/sized_box/constant_sized_box.dart';
import 'package:spimo_static_page/contents/privacy_policy/privacy_policy_contents.dart';

class InquiryScreen extends StatelessWidget {
  const InquiryScreen({super.key});

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
