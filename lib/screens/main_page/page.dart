import 'package:auto_route/annotations.dart';
import 'package:beomy_tech_auth/generated/l10n.dart';
import 'package:beomy_tech_auth/style.dart';
import 'package:beomy_tech_auth/utils/custom_stream_builder.dart';
import 'package:beomy_tech_auth/widgets/c_scaffold.dart';
import 'package:beomy_tech_auth/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bloc.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainBloc bloc = MainBloc();

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
      builder: (BuildContext context, state) {
        return MainScaffold(
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(s.beomytech, style: BS.bold24.apply(color: BC.green)),
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
            ),
          ),
        );
      },
    );
  }
}
