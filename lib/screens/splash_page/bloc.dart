import 'package:auto_route/auto_route.dart';
import 'package:beomy_tech_auth/api/auth/request.dart';
import 'package:beomy_tech_auth/routers/routes.dart';
import 'package:beomy_tech_auth/utils/auth_biometrics_service.dart';
import 'package:beomy_tech_auth/utils/bloc_base.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  final AuthService _authService = AuthService();
  final AuthApiRequest _authApiRequest = AuthApiRequest();

  SplashBloc() {
    setState(ScreenState());
  }

  void init(BuildContext context) async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      checkBiometric(context);
    } else {
      context.router.replaceAll([const AuthRoute()]);
    }
  }

  void checkBiometric(BuildContext context) async {
    final isFaceId = await _authService.checkBiometricSupport();
    if (isFaceId == null) {
      if (context.mounted) {
        context.router.replaceAll([const MainRoute()]);
        return;
      }
    }
    setState(currentState.copyWith(isFaceId: isFaceId));
    biometricPermission();
  }

  void biometricPermission() async {
    final setPermission = await _authService.checkBiometricPermission();
    setState(currentState.copyWith(setPermissionFaceId: setPermission));
  }

  void biometricSignIn(BuildContext context) async {
      final didAuthenticate = await _authService.authenticate(
          context, () => context.router.replaceAll([const MainRoute()]));
      if (!didAuthenticate) {
        setState(currentState.copyWith(setPermissionFaceId: true));
    }
  }

  void signOut(BuildContext context) async {
    await _authApiRequest.signOut();
    if (context.mounted) context.router.replaceAll([const AuthRoute()]);
  }
}

class ScreenState {
  final bool loading;
  final bool isFaceId;
  final bool setPermissionFaceId;

  ScreenState(
      {this.loading = false,
      this.setPermissionFaceId = false,
      this.isFaceId = false});

  ScreenState copyWith(
      {bool? loading,
      bool? setPermissionFaceId,
      bool? isFaceId,
      bool? isBiometricSupport}) {
    return ScreenState(
        loading: loading ?? this.loading,
        setPermissionFaceId: setPermissionFaceId ?? this.setPermissionFaceId,
        isFaceId: isFaceId ?? this.isFaceId);
  }
}
