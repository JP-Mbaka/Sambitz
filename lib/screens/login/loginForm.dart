import 'package:flutter/material.dart';
import '../../helpers/responsive.dart';

import '../../widgets/text.dart';

class LoginForm extends StatefulWidget {
  final bool? isLogin;
  final Function? isLoginFunc;

  LoginForm({this.isLogin, this.isLoginFunc});
  @override
  State<LoginForm> createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  var showPass = false;
  bool? login;

  Widget build(BuildContext context) {
    print('${widget.isLoginFunc} login form variable');
    return Container(
      // height: MediaQuery.of(context).size.height,
      color: Theme.of(context).primaryColor,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: ResponsiveWidget.isLargeScreen(context) ||
                      ResponsiveWidget.isMediumScreen(context)
                  ? MediaQuery.of(context).size.width * 0.4
                  : double.infinity, //MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                  style: const TextStyle(color: Colors.white54, fontSize: 15),
                  decoration: const InputDecoration(
                    label: Text(
                      'username',
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                    fillColor: Colors.white54,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white54,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 5.0,
                      ),
                    ),
                  )),
            ),
            const SizedBox(height: 25),
            Container(
              width: ResponsiveWidget.isLargeScreen(context) ||
                      ResponsiveWidget.isMediumScreen(context)
                  ? MediaQuery.of(context).size.width * 0.4
                  : double.infinity, //MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                  obscureText: showPass,
                  style: const TextStyle(color: Colors.white54, fontSize: 15),
                  decoration: InputDecoration(
                    label: const Text(
                      'password',
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                    fillColor: Colors.white54,
                    prefixIcon: const Icon(
                      Icons.password,
                      color: Colors.white54,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showPass) {
                            showPass = false;
                          } else {
                            showPass = true;
                          }
                        });
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.white54,
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 5.0,
                      ),
                    ),
                  )),
            ),
            const SizedBox(height: 25),
            Container(
              width: ResponsiveWidget.isLargeScreen(context) ||
                      ResponsiveWidget.isMediumScreen(context)
                  ? MediaQuery.of(context).size.width * 0.4
                  : double.infinity, //MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              margin: const EdgeInsets.symmetric(horizontal: 20),

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        widget.isLoginFunc;
                      });
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white54,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
