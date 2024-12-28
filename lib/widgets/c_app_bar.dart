import 'package:beomy_tech_auth/style.dart';
import 'package:flutter/material.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Function()? onBack;
  final bool showBackButton;

  const CAppBar(
      {super.key,
      required this.title,
      this.onBack,
      this.showBackButton = true});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: BC.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      title: Text(title ?? "", style: BS.bold24),
      leading: showBackButton ? BackButton(
        color: BC.white,
        onPressed: onBack,
      ) : null,
    );
  }
}
