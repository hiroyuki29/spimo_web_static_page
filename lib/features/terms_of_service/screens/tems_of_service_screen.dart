import 'package:flutter/material.dart';
import 'package:spimo_static_page/common_widget/app_bar/common_app_bar.dart';
import 'package:spimo_static_page/common_widget/contents/label_and_content_box.dart';
import 'package:spimo_static_page/common_widget/sized_box/constant_sized_box.dart';
import 'package:spimo_static_page/features/terms_of_service/contents/terms_of_service_contents.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

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
                'ご利用規約',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              sizedBoxH8,
              const ContentsBox(
                contents: termsOfServiceForeword,
              ),
              sizedBoxH24,
              LabelAndContentBox(
                contentLabel: TermsOfServiceLabel.user,
                contentsMap: termsOfServiceContents,
              ),
              LabelAndContentBox(
                contentLabel: TermsOfServiceLabel.userInfo,
                contentsMap: termsOfServiceContents,
              ),
              LabelAndContentBox(
                contentLabel: TermsOfServiceLabel.privilege,
                contentsMap: termsOfServiceContents,
              ),
              LabelAndContentBox(
                contentLabel: TermsOfServiceLabel.prohibit,
                contentsMap: termsOfServiceContents,
              ),
              LabelAndContentBox(
                contentLabel: TermsOfServiceLabel.disclaimer,
                contentsMap: termsOfServiceContents,
              ),
              LabelAndContentBox(
                contentLabel: TermsOfServiceLabel.other,
                contentsMap: termsOfServiceContents,
              ),
              LabelAndContentBox(
                contentLabel: TermsOfServiceLabel.legalAndJurisdiction,
                contentsMap: termsOfServiceContents,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
