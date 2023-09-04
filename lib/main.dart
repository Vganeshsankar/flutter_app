// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   static const String _title = 'Sample App';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('login pager')),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView(
//           children: <Widget>[
//             Container(
//                 height: 200,
//                 width: 500,
//                 child: Image.asset('assets/images/login.jpg')),
//             // Container(
//             //     alignment: Alignment.center,
//             //     padding: const EdgeInsets.all(10),
//             //     child: const Text(
//             //       'TutorialKart',
//             //       style: TextStyle(
//             //           color: Colors.blue,
//             //           fontWeight: FontWeight.w500,
//             //           fontSize: 30),
//             //     )),
//             Container(
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.all(10),
//                 child: const Text(
//                   'Sign in',
//                   style: TextStyle(fontSize: 20),
//                 )),
//             Container(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'User Name',
//                 ),
//                 inputFormatters: [
//                   FilteringTextInputFormatter.allow(
//                     RegExp(
//                         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>'),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//               child: TextField(
//                 obscureText: true,
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Password',
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 //forgot password screen
//               },
//               child: const Text(
//                 'Forgot Password',
//               ),
//             ),
//             Container(
//                 height: 50,
//                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child: ElevatedButton(
//                   child: const Text('Login'),
//                   onPressed: () {
//                     print(nameController.text);
//                     print(passwordController.text);
//                   },
//                 )),
//             Row(
//               children: <Widget>[
//                 const Text('Does not have account?'),
//                 TextButton(
//                   child: const Text(
//                     'Sign in',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {
//                     //signup screen
//                   },
//                 )
//               ],
//               mainAxisAlignment: MainAxisAlignment.center,
//             ),
//           ],
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'main-app.dart';

void main() async {
  await _initHive();
  runApp(const MainApp());
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  await Hive.openBox("login");
  await Hive.openBox("accounts");
}
