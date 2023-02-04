import 'package:flutter/material.dart';
import 'package:spimo_static_page/common_widget/color/color.dart';
import 'package:spimo_static_page/common_widget/sized_box/constant_sized_box.dart';
import 'package:spimo_static_page/features/privacy_policy/contents/privacy_policy_contents.dart';

class LabelAndContentBox extends StatelessWidget {
  const LabelAndContentBox(
      {Key? key, required this.contentLabel, required this.contentsMap})
      : super(key: key);

  final CustomEnum contentLabel;
  final Map<String, dynamic> contentsMap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(title: contentLabel.text),
        sizedBoxH8,
        ContentsBox(
          contents: contentsMap[contentLabel.text]!,
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
        style: Theme.of(context).textTheme.subtitle2,
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

  @override
  Widget build(BuildContext context) {
    List<Widget> stringToWidget(List<String> contents) {
      return contents
          .map((content) => Text(
                content,
                style: Theme.of(context).textTheme.bodyText2,
              ))
          .toList();
    }

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
