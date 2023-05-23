import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sambitz/provider/loginProvider.dart';

import '../../helpers/responsive.dart';

class SignupForm extends ConsumerStatefulWidget {
  // bool? isLogin;

  // SignupForm({this.isLogin});
  @override
  ConsumerState<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends ConsumerState<SignupForm> {
  var showPass = false, showConPass = false;
  void handleForm() {
    // var tt = widget.isLoginFunc;
    setState(() {
      final haaaaa = ref.watch(isLoginProvider.notifier).isLogin(true);
      print('Haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
      print(haaaaa);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
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
                    'Firstname',
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
                decoration: const InputDecoration(
                  label: Text(
                    'Lastname',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                  fillColor: Colors.white54,
                  prefixIcon: Icon(
                    Icons.family_restroom,
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
                style: const TextStyle(color: Colors.white54, fontSize: 15),
                decoration: const InputDecoration(
                  label: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                  fillColor: Colors.white54,
                  prefixIcon: Icon(
                    Icons.email,
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
                    'Password',
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
            child: TextFormField(
                obscureText: showConPass,
                style: const TextStyle(color: Colors.white54, fontSize: 15),
                decoration: InputDecoration(
                  label: const Text(
                    'Confirm Password',
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
                        if (showConPass) {
                          showConPass = false;
                        } else {
                          showConPass = true;
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
                  'SignUp',
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
                'Already have an account?',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                  onPressed: handleForm,
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white54,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
