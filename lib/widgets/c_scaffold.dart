import 'package:beomy_tech_auth/style.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold(
      {super.key,
      this.appBar,
      required this.body,
      this.bottomNavigationBar,
      this.floatingActionButton,
      this.isSafeAreaTop = true,
      this.isSafeAreaBottom = true});

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final bool isSafeAreaTop;
  final bool isSafeAreaBottom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: floatingActionButton,
      backgroundColor: BC.black,
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
          bottom: isSafeAreaBottom,
          top: isSafeAreaTop,
          child: body),
    );
  }
}
