import 'package:flutter/material.dart';
import '../../core/app_export.dart';
class AppbarTitle extends StatelessWidget {
  AppbarTitle({Key? key, required this.text, this.margin, this.onTap})
      : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleLargeErrorContainer.copyWith(
            color: theme.colorScheme.errorContainer.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
