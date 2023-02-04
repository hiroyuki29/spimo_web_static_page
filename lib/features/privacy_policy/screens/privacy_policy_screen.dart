import 'package:flutter/material.dart';
import 'package:spimo_static_page/common_widget/app_bar/common_app_bar.dart';
import 'package:spimo_static_page/common_widget/contents/label_and_content_box.dart';
import 'package:spimo_static_page/common_widget/sized_box/constant_sized_box.dart';
import 'package:spimo_static_page/features/privacy_policy/contents/privacy_policy_contents.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, title: 'spiMo'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxH24,
              Text(
                'プライバシーポリシー',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              sizedBoxH8,
              const ContentsBox(
                contents: privacyPolicyForeword,
              ),
              sizedBoxH24,
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.difinition,
                contentsMap: privacyPolicyContents,
              ),
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.getMethod,
                contentsMap: privacyPolicyContents,
              ),
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.objective,
                contentsMap: privacyPolicyContents,
              ),
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.objectiveChange,
                contentsMap: privacyPolicyContents,
              ),
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.thirdPartyProvision,
                contentsMap: privacyPolicyContents,
              ),
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.disclosure,
                contentsMap: privacyPolicyContents,
              ),
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.removeAndCorrection,
                contentsMap: privacyPolicyContents,
              ),
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.change,
                contentsMap: privacyPolicyContents,
              ),
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.inquiry,
                contentsMap: privacyPolicyContents,
              ),
              LabelAndContentBox(
                contentLabel: PrivacyPolicyLabel.establishment,
                contentsMap: privacyPolicyContents,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
