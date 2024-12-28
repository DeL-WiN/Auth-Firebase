import 'package:beomy_tech_auth/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cid extends StatelessWidget {
  const Cid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 16,
        color: BC.green,
      ),
    );
  }
}
