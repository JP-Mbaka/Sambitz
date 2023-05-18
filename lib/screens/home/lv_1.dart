import 'package:flutter/material.dart';
import '../../widgets/buy_widget.dart';
// import 'package:sambitz/widgets/buy_widget.dart';

class LV1_ls extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();

  LV1_ls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8, 
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/dawn.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 60,
                horizontal: 30,
              ),
              child: Center(
                child: Buy_1(
                  formKey: formKey,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                // color: Colors.green,
                // child: Image.asset(),
                ),
          ),
        ],
      ),
    );
  }
}

class LV1_ss extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.6,
      padding: const EdgeInsets.all(35.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/dawn.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Buy_1(),
      ),
    );
  }
}
