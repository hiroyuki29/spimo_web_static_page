import 'package:flutter/material.dart';
import 'package:spimo_static_page/common_widget/app_bar/common_app_bar.dart';
import 'package:spimo_static_page/common_widget/color/color.dart';
import 'package:spimo_static_page/common_widget/sized_box/constant_sized_box.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

class InquiryScreen extends StatefulWidget {
  const InquiryScreen({super.key});

  @override
  State<InquiryScreen> createState() => _InquiryScreenState();
}

class _InquiryScreenState extends State<InquiryScreen> {
  final String _viewId = 'google-form';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        _viewId,
        (int id) => html.IFrameElement()
          ..width = MediaQuery.of(context).size.width.toString()
          ..height = MediaQuery.of(context).size.height.toString()
          ..src =
              'https://docs.google.com/forms/d/e/1FAIpQLScA1WkiuYVy5UmKPFQfG52cEsecn5hdlYYB8M4ikSXqRI_Ltg/viewform'
          ..style.border = 'none');

    return Scaffold(
      backgroundColor: backgroundGray,
      appBar: CommonAppBar(context: context, title: 'spiMo'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            sizedBoxH24,
            Text(
              'お問い合わせフォーム',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            sizedBoxH8,
            SizedBox(
              width: double.infinity,
              height: 1000,
              child: HtmlElementView(viewType: _viewId),
            ),
            sizedBoxH24,
          ],
        ),
      ),
    );
  }
}
