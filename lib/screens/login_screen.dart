import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:thingstodo/widgets/custom_button.dart';
import '../widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  var size, height, width;
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
                child: Container(
              height: height * .25,
              width: width / 2,
              child: Image.asset(
                'assets/splash.png',
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: width * .1,
              height: height / 6,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  TextFieldWidget(
                    hint: 'user name',
                    icon: Icons.account_circle,
                    obscure: false,
                  ),
                  CustomDivider(),
                  TextFieldWidget(
                    hint: 'password',
                    icon: Icons.lock,
                    obscure: true,
                  )
                ],
              ),
            ),
          ),
          CustomButton(
            text: 'login',
            onPress: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Row(children: const <Widget>[
              Expanded(child: CustomDivider()),
              Text(
                "OR",
                style: TextStyle(fontSize: 15),
              ),
              Expanded(child: CustomDivider()),
            ]),
          ),
          Center(
              child: Text(
            'login using social media',
            style: TextStyle(fontSize: 15),
          )),
          Center(
            child: Container(
                height: height / 5,
                width: width / 4,
                child: Image.asset('assets/google.png')),
          )
        ],
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.grey, //color of divider
      height: 2, //height spacing of divider
      thickness: 1,
      indent: 25, //spacing at the start of divider
      endIndent: 25,
    );
  }
}
