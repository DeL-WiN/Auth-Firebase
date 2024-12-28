import 'package:auto_route/auto_route.dart';
import 'package:beomy_tech_auth/api/auth/request.dart';
import 'package:beomy_tech_auth/routers/routes.dart';
import 'package:beomy_tech_auth/utils/bloc_base.dart';
import 'package:beomy_tech_auth/widgets/snack_bar.dart';
import 'package:flutter/material.dart';

class SignInBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthApiRequest _authApiRequest = AuthApiRequest();

  SignInBloc() {
    setState(ScreenState());
  }

  void init() async {}

  void signIn(BuildContext context) async {
    setState(currentState.copyWith(loading: true));
    try {
      final user = await _authApiRequest.signIn(
          emailController.text, passwordController.text);
      if (context.mounted && user != null) {
        context.router.replaceAll([const MainRoute()]);
      }
    } catch (e) {
      if (context.mounted) {
        SnackBarService.showSnackBar(context, e.toString(), true);
      }
    }
    setState(currentState.copyWith(loading: false));
  }

  void setDisabled() {
    final email = emailController.text.trim();
    final password = passwordController.text;
    final isValidEmail = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
    final isValidPassword = password.length >= 8;
    if (isValidEmail && isValidPassword) {
      setState(ScreenState(isDisabled: false));
    } else {
      setState(ScreenState(isDisabled: true));
    }
  }
}

class ScreenState {
  final bool loading;
  final bool isDisabled;

  ScreenState({
    this.loading = false,
    this.isDisabled = true,
  });

  ScreenState copyWith({
    bool? loading,
    bool? isDisabled,
  }) {
    return ScreenState(
        loading: loading ?? this.loading,
        isDisabled: isDisabled ?? this.isDisabled);
  }
}
