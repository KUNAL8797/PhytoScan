import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../appbar.dart';
import '../input.dart';
import '../routes/app_routes.dart';
import '../scrollable_column.dart';
import '../widgets/custom_image_view.dart';
import 'package:mohit_s_application17/core/utils/image_constant.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage() : super();
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  bool _agreeWithTermsAndConditions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(title: "Register new account"),
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
              SizedBox(height: 49.0),
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
              CustomInputField(
                keyboardType: TextInputType.visiblePassword,
                hintText: "Password Confirmation",
                obscureText: true,
                controller: _passwordConfirmationController,
                validator: (String? password) {
                  if (password == null) {
                    return null;
                  }
                  if (password != _passwordConfirmationController.value.text) {
                    return "Password is not confirmed";
                  }
                },
              ),
              SizedBox(height: 24),
              CustomCheckbox(
                label: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "By creating an account you agree to our",
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () {
                        print("// Terms & Conditions");
                      },
                    ),
                  ],
                ),
                value: _agreeWithTermsAndConditions,
                onChanged: (checked) => setState(
                    () => _agreeWithTermsAndConditions = checked ?? false),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                child: Text("Register"),
                onPressed: !_agreeWithTermsAndConditions
                    ? null
                    : () {
                        if (_formKey.currentState!.validate()) {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
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
                                    content: Text(
                                        'Failed to register: ${exception.message}')),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'Unhandled register error ${exception}')),
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
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.green[700]),
                    ),
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/login")},
                  ),
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
