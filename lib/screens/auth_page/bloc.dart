import 'package:auto_route/auto_route.dart';
import 'package:beomy_tech_auth/api/auth/request.dart';
import 'package:beomy_tech_auth/routers/routes.dart';
import 'package:beomy_tech_auth/utils/bloc_base.dart';
import 'package:beomy_tech_auth/widgets/snack_bar.dart';
import 'package:flutter/material.dart';

class AuthBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  final AuthApiRequest _authApiRequest = AuthApiRequest();

  AuthBloc() {
    setState(ScreenState());
  }

  void init() async {}

  void goToSignIn(BuildContext context) async {
    context.router.push(const SignInRoute());
  }

  void goToSignUp(BuildContext context) async {
    context.router.push(const SignUpRoute());
  }

  void signInWithGoogle(BuildContext context) async {
    setState(currentState.copyWith(loading: true));
    try {
      final user = await _authApiRequest.signInWithGoogle();
      if (user == null) {
        setState(currentState.copyWith(loading: false));
        return;
      }
      if (context.mounted) goToMain(context);
    } catch (e) {
      if (context.mounted) {
        SnackBarService.showSnackBar(context, e.toString(), true);
      }
    }
    setState(currentState.copyWith(loading: false));
  }

  void goToMain(BuildContext context) async {
    context.router.replaceAll([const MainRoute()]);
  }
}

class ScreenState {
  final bool loading;

  ScreenState({this.loading = false});

  ScreenState copyWith({bool? loading}) {
    return ScreenState(loading: loading ?? this.loading);
  }
}
