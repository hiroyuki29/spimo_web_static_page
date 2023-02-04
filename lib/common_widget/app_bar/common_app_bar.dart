import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spimo_static_page/common_widget/color/color.dart';
import 'package:spimo_static_page/common_widget/sized_box/constant_sized_box.dart';

AppBar CommonAppBar({
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    backgroundColor: white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 50,
            width: 50,
            child: SvgPicture.asset('assets/vector/spimo_icon_title.svg')),
        sizedBoxW16,
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    ),
    leading: Navigator.of(context).canPop()
        ? IconButton(
            icon: const Icon(
              Icons.chevron_left,
              color: primaryDark,
            ),
            onPressed: () => context.pop(),
          )
        : const SizedBox.shrink(),
    shape: const Border(
      bottom: BorderSide(width: 1, color: primaryDark),
    ),
    elevation: 0,
  );
}
