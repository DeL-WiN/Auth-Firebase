// import 'package:auto_route/annotations.dart';
// import 'package:beomy_tech_auth/utils/custom_stream_builder.dart';
// import 'package:beomy_tech_auth/widgets/c_scaffold.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'bloc.dart';
//
// @RoutePage()
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final LoginBloc bloc = LoginBloc();
//
//   @override
//   void initState() {
//     bloc.init();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomStreamBuilder<ScreenState>(
//       bloc: bloc,
//       builder: (BuildContext context, state) {
//         return MainScaffold(
//           body: Padding(
//             padding: const EdgeInsets.all(24),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
