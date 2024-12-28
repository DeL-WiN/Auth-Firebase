import 'dart:ui';

import 'package:beomy_tech_auth/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {this.child,
      this.onTap,
      super.key,
      this.padding,
      this.borderRadius,
      this.color, this.onLongPress});

  final Widget? child;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius ?? BRadius.r16,
      color: color ?? BC.transparent,
      child: InkWell(
          borderRadius: borderRadius ?? BRadius.r16,
          onTap: onTap,
          onLongPress: onLongPress,
          child: Padding(
            padding: padding ?? const EdgeInsets.all(4),
            child: Center(child: child),
          )),
    );
  }
}

class CustomButtonText extends StatelessWidget {
  const CustomButtonText(
      {this.onTap,
      super.key,
      this.text,
      this.style,
      this.padding,
      this.borderRadius,
      this.color,
      this.isDisabled = false,
      this.isLoading = false,
      this.child});

  final String? text;
  final void Function()? onTap;
  final TextStyle? style;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Color? color;
  final bool isDisabled;
  final bool isLoading;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius ?? BRadius.r10,
      color: (isDisabled) ? BC.gray.withOpacity(0.6) : color ?? BC.green,
      child: InkWell(
          borderRadius: borderRadius ?? BRadius.r10,
          onTap: isLoading
              ? null
              : isDisabled
                  ? null
                  : onTap,
          child: Padding(
            padding: padding ?? const EdgeInsets.all(16),
            child: Center(
                child: (isLoading)
                    ? const ButtonCid()
                    : child ??
                        Text(
                          text ?? "Button",
                          style:
                              style ?? BS.sb18.apply(color: BC.white),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        )),
          )),
    );
  }
}

class ButtonCid extends StatelessWidget {
  final Color? color;

  const ButtonCid({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 20,
      child: CupertinoActivityIndicator(
        color: color ?? BC.white,
        radius: 10,
      ),
    );
  }
}
