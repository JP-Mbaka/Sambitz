import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/provider/loginProvider.dart';
import '../../helpers/responsive.dart';
import './loginForm.dart';
import './signup.dart';
import '../../widgets/text.dart';
import '../home/homepage.dart';
import '../Top_Nav/smallscreenTopNav.dart';

class Login extends ConsumerStatefulWidget {
  static const route = '/login';

  const Login({super.key});

  @override
  ConsumerState<Login> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  var login = true;
  var isLogin = false;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    final isLoginForm = ref.watch(isLoginProvider);
    // print('I am I am I am I am I am I am');
    // print(isLoginForm);

    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? SMtopNavigation(context, scaffoldKey)
          : null,
      body: ResponsiveWidget.isSmallScreen(context)
          ? isLoginForm
              ? Container(
                  padding: const EdgeInsets.all(20.0),
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      whiteTitle(context, 'Login'),
                      const SizedBox(height: 10),
                      LoginForm(),
                    ],
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(20.0),
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      whiteTitle(context, 'SignUp'),
                      const SizedBox(height: 10),
                      SignupForm(),
                    ],
                  ),
                )
          : Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('./assets/images/desart.jpg'),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customText(
                              context,
                              'Make the best of your path, create a new lifestyle withing your own control',
                              const Color.fromARGB(255, 49, 43, 43),
                              25,
                              FontWeight.w600),

                          // const Text(

                          //   style: TextStyle(
                          //     fontSize: 38,
                          //     wordSpacing: 3,
                          //   ),
                          // ),
                          const SizedBox(height: 25),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context).pushNamed(HomePage.route);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.orange,
                            ),
                            icon: const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                                top: 10,
                                bottom: 10,
                              ),
                              child: Icon(Icons.home),
                            ),
                            label: const Padding(
                              padding: EdgeInsets.only(
                                right: 10,
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                'Home',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                Expanded(
                    flex: 2,
                    child: isLoginForm
                        ? Container(
                            // height: MediaQuery.of(context).size.height,
                            color: Theme.of(context).primaryColor,
                            child: Stack(
                              children: [
                                Positioned(
                                    top: MediaQuery.of(context).size.height *
                                        0.38,
                                    right: MediaQuery.of(context).size.width *
                                        0.18,
                                    child: whiteTitle(context, 'Login')),
                                Positioned(
                                  top:
                                      MediaQuery.of(context).size.height * 0.42,
                                  child: LoginForm(),
                                ),
                              ],
                            ),
                          )
                        : Container(
                            // height: MediaQuery.of(context).size.height,
                            color: Theme.of(context).primaryColor,
                            child: Stack(
                              children: [
                                Positioned(
                                    top: MediaQuery.of(context).size.height *
                                        0.18,
                                    right: MediaQuery.of(context).size.width *
                                        0.18,
                                    child: whiteTitle(context, 'SignUp')),
                                Positioned(
                                  top:
                                      MediaQuery.of(context).size.height * 0.24,
                                  child: SignupForm(),
                                ),
                              ],
                            ),
                          ))
              ],
            ),
    );
  }
}
