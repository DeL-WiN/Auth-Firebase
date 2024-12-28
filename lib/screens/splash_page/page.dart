import 'package:auto_route/annotations.dart';
import 'package:beomy_tech_auth/generated/assets.gen.dart';
import 'package:beomy_tech_auth/generated/l10n.dart';
import 'package:beomy_tech_auth/style.dart';
import 'package:beomy_tech_auth/utils/custom_stream_builder.dart';
import 'package:beomy_tech_auth/utils/spaces.dart';
import 'package:beomy_tech_auth/widgets/c_scaffold.dart';
import 'package:beomy_tech_auth/widgets/cid.dart';
import 'package:beomy_tech_auth/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bloc.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashBloc bloc = SplashBloc();

  @override
  void initState() {
    bloc.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return CustomStreamBuilder<ScreenState>(
      bloc: bloc,
      builder: (BuildContext context, ScreenState state) {
        return MainScaffold(
          body: state.setPermissionFaceId
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      s.to_log_in_use_biometric_authentication,
                      style: BS.bold20,
                      textAlign: TextAlign.center,
                    ),
                    Space.h24,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          onTap: () => bloc.biometricSignIn(context),
                          child: state.isFaceId ? Assets.icons.faceId.svg(
                            colorFilter: ColorFilter.mode(
                              BC.green,
                              BlendMode.srcIn,
                            ),
                            width: 64,
                            height: 64,
                          ) : Assets.icons.touchId.svg(
                            colorFilter: ColorFilter.mode(
                              BC.green,
                              BlendMode.srcIn,
                            ),
                            width: 64,
                            height: 64,
                          ),
                        ),
                      ],
                    ),
                    Space.h24,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          onTap: () => bloc.signOut(context),
                          child:
                          Text(s.sign_out, style: BS.reg16.apply(color: BC.green)),
                        ),
                      ],
                    )
                  ],
                )
              : const Cid(),
        );
      },
    );
  }
}
