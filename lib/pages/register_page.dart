import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../widgets/custom_button.dart';
import '../widgets/text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  static String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool password = true;
  bool confirmPassword = true;
  String? passwordText;

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(flip: true),
                child: Container(
                  color: Colors.purple,
                  height: 290,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Container(
                height: 600,
                child: Column(
                  children: [
                    CustomTextFormField(
                      label: 'Username',
                      hintText: 'Username',
                      icon: Icon(Icons.account_circle_outlined),
                      keyboardType: TextInputType.name,
                      isPassword: false,
                      validator: (data) {
                        if (data!.isEmpty) {
                          return 'Field Is Required';
                        }
                      },
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    CustomTextFormField(
                      label: 'Email',
                      hintText: 'Email',
                      icon: Icon(Icons.email),
                      keyboardType: TextInputType.emailAddress,
                      isPassword: false,
                      validator: (data) {
                        if (data!.isEmpty) {
                          return 'Field Is Required';
                        }
                      },
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    CustomTextFormField(
                      label: 'Phone',
                      hintText: 'Phone',
                      icon: Icon(Icons.phone),
                      keyboardType: TextInputType.number,
                      isPassword: false,
                      validator: (data) {
                        if (data!.isEmpty) {
                          return 'Field Is Required';
                        }
                      },
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    CustomTextFormField(
                      label: 'Password',
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      icon: Icon(Icons.lock),
                      suffixIcon:
                          password ? Icons.visibility_off : Icons.visibility,
                      isPassword: password,
                      onChange: (data) {
                        passwordText = data;
                      },
                      validator: (data) {
                        if (data!.isEmpty) {
                          return 'Field Is Required';
                        }
                      },
                      suffixOnPressed: () {
                        setState(() {
                          password = !password;
                        });
                      },
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    CustomTextFormField(
                      label: 'Confirm Password',
                      hintText: 'Confirm Password',
                      keyboardType: TextInputType.visiblePassword,
                      icon: Icon(Icons.lock),
                      suffixIcon:
                          password ? Icons.visibility_off : Icons.visibility,
                      isPassword: password,
                      validator: (data) {
                        if (data!.isEmpty) {
                          return 'Field Is Required';
                        } else if (data != passwordText) {
                          return 'Password Not Matching';
                        }
                      },
                      suffixOnPressed: () {
                        setState(() {
                          password = !password;
                        });
                      },
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    CustomButton(
                      text: 'Sign Up',
                      backColor: Colors.purple,
                      textColor: Colors.white,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        }
                      },
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    CustomButton(
                      text: 'Login',
                      backColor: Colors.white,
                      textColor: Colors.purple,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
