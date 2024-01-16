import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mohit_s_application17/presentation/iphone_14_pro_max_thirteen_screen/iphone_14_pro_max_thirteen_screen.dart';
import 'package:mohit_s_application17/routes/app_routes.dart';
import 'package:mohit_s_application17/core/utils/image_constant.dart';

import '../appbar.dart';
import '../input.dart';
import '../scrollable_column.dart';
import '../widgets/custom_image_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage() : super();
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: CustomAppBar(title: "Login to your account"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 1),
        child: Form(
          key: _formKey,
          child: ScrollableColumn(
            children: [
              SizedBox(
                height: 316.0,
                width: 433.0,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle2,
                      height: 316.0,
                      width: 433.0,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleft,
                      height: 30.0,
                      width: 30.0,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 28.0, top: 17.0),
                      onTap: () {
                        onTapImgArrowleftone(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29.0),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: 120.0,
                width: 120.0,
                radius: BorderRadius.circular(60.0),
              ),
              SizedBox(
                height: 15,
              ),
              CustomInputField(
                keyboardType: TextInputType.emailAddress,
                hintText: "Email",
                controller: _emailController,
                validator: (String? email) {
                  if (email == null) {
                    return null;
                  }
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(email);
                  return emailValid ? null : "Email is not valid";
                },
              ),
              SizedBox(height: 24),
              CustomInputField(
                keyboardType: TextInputType.visiblePassword,
                hintText: "Password",
                obscureText: true,
                controller: _passwordController,
                validator: (String? password) {
                  if (password == null) {
                    return null;
                  }
                  if (password.length < 6) {
                    return "Password is too short";
                  }
                },
              ),
              SizedBox(height: 24),
              CustomCheckbox(
                labelText: "Remember me",
                value: _rememberMeChecked,
                onChanged: (checked) =>
                    setState(() => _rememberMeChecked = checked ?? false),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                      email: _emailController.value.text,
                      password: _passwordController.value.text,
                    )
                        .then((result) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          hello(context), (_) => false);
                    }).catchError((Object exception) {
                      if (exception is FirebaseAuthException) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content:
                                  Text('Failed to auth: ${exception.message}')),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content:
                                  Text('Unhandled auth error ${exception}')),
                        );
                      }
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250.0, 30.0),
                  backgroundColor: Colors.green[700],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/register")},
                  )
                ],
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

onTapImgArrowleftone(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.frameEightScreen);
}

hello(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirteenScreen);
}
