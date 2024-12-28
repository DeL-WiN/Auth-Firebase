import 'package:auto_route/annotations.dart';
import 'package:beomy_tech_auth/generated/l10n.dart';
import 'package:beomy_tech_auth/utils/custom_stream_builder.dart';
import 'package:beomy_tech_auth/utils/spaces.dart';
import 'package:beomy_tech_auth/widgets/c_app_bar.dart';
import 'package:beomy_tech_auth/widgets/c_scaffold.dart';
import 'package:beomy_tech_auth/widgets/c_text_field.dart';
import 'package:beomy_tech_auth/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bloc.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final SignUpBloc bloc = SignUpBloc();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: CustomStreamBuilder<ScreenState>(
        bloc: bloc,
        builder: (BuildContext context, state) {
          return MainScaffold(
            appBar: CAppBar(title: s.sign_up),
            body: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  CTextField(
                    onChanged: (v) => bloc.setDisabled(),
                    controller: bloc.emailController,
                    keyboardType: TextInputType.emailAddress,
                    hintText: s.example_email,
                  ),
                  Space.h20,
                  CTextField(
                    onChanged: (v) => bloc.setDisabled(),
                    controller: bloc.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: s.password,
                  ),
                  Space.h20,
                  CTextField(
                    onChanged: (v) => bloc.setDisabled(),
                    controller: bloc.passwordConfirmController,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: s.confirm_password,
                  ),
                  Space.h32,
                  CustomButtonText(
                    onTap: () => bloc.signUp(context),
                    isLoading: state.loading,
                    isDisabled: state.isDisabled,
                    text: s.c_continue,
                  ),
                  const Spacer(),
                  const Spacer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
