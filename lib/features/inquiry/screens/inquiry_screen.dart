import 'package:flutter/material.dart';
import 'package:spimo_static_page/common_widget/app_bar/common_app_bar.dart';
import 'package:spimo_static_page/common_widget/color/color.dart';
import 'package:spimo_static_page/common_widget/sized_box/constant_sized_box.dart';

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
                'お問い合わせフォーム',
                style: TextStyle(fontSize: 20),
              ),
              sizedBoxH8,
              sizedBoxH24,
            ],
          ),
        ),
      ),
    );
  }
}
