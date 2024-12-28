import 'dart:io';
import 'package:beomy_tech_auth/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class AuthService {
  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> checkBiometricPermission() async {
    try {
      bool isDeviceSupported = await auth.isDeviceSupported();
      if (!isDeviceSupported) {
        return false;
      }

      List<BiometricType> availableBiometrics =
      await auth.getAvailableBiometrics();

      if (availableBiometrics.isEmpty) {
        return false;
      }

      return true;
    } catch (e) {
      return false;
    }
  }


  Future<bool?> checkBiometricSupport() async {
    try {
      bool isBiometricSupported = await auth.isDeviceSupported();
      final bool isAndroid = Platform.isAndroid;
      if (!isBiometricSupported) {
        return null;
      }

      List<BiometricType> availableBiometrics =
          await auth.getAvailableBiometrics();

      bool isFaceIDAvailable = availableBiometrics.contains(BiometricType.face);
      bool isTouchIDAvailable =
          availableBiometrics.contains(BiometricType.fingerprint);

      if (isFaceIDAvailable) {
        return isAndroid ? null : true;
      } else if (isTouchIDAvailable) {
        return false;
      } else {
        return (isAndroid) ? false : null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<bool> authenticate(
      BuildContext context, Function onAuthenticated) async {
    try {
      final bool? isFaceId = await checkBiometricSupport();
      if (isFaceId == null) {
        return false;
      }

      bool didAuthenticate = false;

      if (context.mounted) {
        if (Theme.of(context).platform == TargetPlatform.iOS) {
          didAuthenticate = await _authenticateWithBiometrics(
            context,
            useFaceID: isFaceId,
          );
        } else if (Theme.of(context).platform == TargetPlatform.android) {
          if (!isFaceId) {
            didAuthenticate = await _authenticateWithBiometrics(context);
          } else {
            return false;
          }
        }
      }

      if (didAuthenticate) {
        onAuthenticated();
      }

      return didAuthenticate;
    } catch (e) {
      return false;
    }
  }


  Future<bool> _authenticateWithBiometrics(BuildContext context,
      {bool useFaceID = false}) async {
    try {
      final s = S.of(context);
      return await auth.authenticate(
        localizedReason: useFaceID
            ? s.please_verify_your_identity_with_face_id
            : s.please_verify_your_identity_with_touch_id,
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    } catch (e) {
      return false;
    }
  }

}
