import 'package:auto_route/annotations.dart';
import 'package:beomy_tech_auth/generated/l10n.dart';
import 'package:beomy_tech_auth/style.dart';
import 'package:beomy_tech_auth/utils/custom_stream_builder.dart';
import 'package:beomy_tech_auth/utils/spaces.dart';
import 'package:beomy_tech_auth/widgets/c_app_bar.dart';
import 'package:beomy_tech_auth/widgets/c_scaffold.dart';
import 'package:beomy_tech_auth/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bloc.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final AuthBloc bloc = AuthBloc();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return CustomStreamBuilder<ScreenState>(
      bloc: bloc,
      builder: (BuildContext context, ScreenState state) {
        return MainScaffold(
          appBar: CAppBar(
            title: s.authentication,
            showBackButton: false,
          ),
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomButtonText(
                        onTap: () => bloc.goToSignIn(context),
                        text: s.sign_in,
                      ),
                    ),
                    Space.w16,
                    Expanded(
                      child: CustomButtonText(
                        onTap: () => bloc.goToSignUp(context),
                        text: s.sign_up,
                      ),
                    ),
                  ],
                ),
                Space.h20,
                CustomButtonText(
                  onTap: () => bloc.signInWithGoogle(context),
                  text: s.sign_in_with_google,
                  isLoading: state.loading,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
