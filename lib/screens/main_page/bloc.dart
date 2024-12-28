import 'package:auto_route/auto_route.dart';
import 'package:beomy_tech_auth/api/auth/request.dart';
import 'package:beomy_tech_auth/routers/routes.dart';
import 'package:beomy_tech_auth/utils/bloc_base.dart';
import 'package:flutter/material.dart';

class MainBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  final AuthApiRequest _authApiRequest = AuthApiRequest();

  MainBloc() {
    setState(ScreenState());
  }

  void init() async {}

  void signOut(BuildContext context) async {
    await _authApiRequest.signOut();
    if (context.mounted) context.router.replaceAll([const AuthRoute()]);
  }
}

class ScreenState {
  final bool loading;

  ScreenState({this.loading = false});

  ScreenState copyWith({bool? loading}) {
    return ScreenState(loading: loading ?? this.loading);
  }
}
