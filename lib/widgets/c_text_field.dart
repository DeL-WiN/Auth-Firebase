import 'package:beomy_tech_auth/style.dart';
import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final Function(String?)? onChanged;

  const CTextField(
      {super.key, this.controller, this.hintText, this.keyboardType, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: BS.reg16,
      cursorColor: BC.white,
      keyboardType: keyboardType,
      onChanged: (v) => onChanged?.call(v),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BRadius.r10,
          borderSide: BorderSide(color: BC.green, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BRadius.r10,
          borderSide: BorderSide(color: BC.green.withOpacity(0.6), width: 1),
        ),
        hintText: hintText,
        hintStyle: BS.reg16.apply(color: BC.gray),
      ),
    );
  }
}
