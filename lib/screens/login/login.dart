import 'package:flutter/material.dart';

import '../../helpers/responsive.dart';
import './loginForm.dart';
import './signup.dart';
import '../../widgets/text.dart';
import '../home/homepage.dart';

// import 'package:sambitz/helpers/responsive.dart';
// import 'package:sambitz/screens/home/homepage.dart';
// import 'package:sambitz/screens/login/loginForm.dart';
// import 'package:sambitz/screens/login/signup.dart';
// import 'package:sambitz/widgets/text.dart';

import '../Top_Nav/smallscreenTopNav.dart';

class Login extends StatefulWidget {
  static const route = '/login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool isLogin;

  void switchLogin() {
    print('**********************');
    if (isLogin) {
      isLogin = false;
      print('************ISSIGNUP***************');
    } else {
      isLogin = true;
      print('************ISLOGIN***************');
    }
  }

  @override
  void didChangeDependencies() {
    isLogin = ModalRoute.of(context)!.settings.arguments as bool;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? SMtopNavigation(context, scaffoldKey)
          : null,
      body: ResponsiveWidget.isSmallScreen(context)
          ? isLogin
              ? Container(
                  padding: const EdgeInsets.all(20.0),
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      whiteTitle(context, 'Login'),
                      const SizedBox(height: 10),
                      LoginForm(
                        isLogin: isLogin,
                        isLoginFunc: () {
                          switchLogin();
                        },
                      ),
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
                      SignupForm(
                        isLogin: isLogin,
                      ),
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
                              Color.fromARGB(255, 49, 43, 43),
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
                              primary: Colors.white,
                              onPrimary: Colors.orange,
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
                    child: isLogin
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
                                  child: LoginForm(
                                    isLogin: isLogin,
                                  ),
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
                                  child: SignupForm(
                                    isLogin: isLogin,
                                  ),
                                ),
                              ],
                            ),
                          ))
              ],
            ),
    );
  }
}
