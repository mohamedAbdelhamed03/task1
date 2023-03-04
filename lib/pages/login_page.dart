import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:task1/pages/list_page.dart';
import 'package:task1/pages/register_page.dart';
import 'package:task1/widgets/custom_button.dart';
import 'package:task1/widgets/text_form_field.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  static String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool password = true;
  bool confirmPassword = true;
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
                    'Login',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Container(
                height: 320,
                child: Column(
                  children: [
                    Spacer(
                      flex: 3,
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
                      label: 'Password',
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      icon: Icon(Icons.lock),
                      suffixIcon:
                          password ? Icons.visibility_off : Icons.visibility,
                      isPassword: password,
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
                      flex: 2,
                    ),
                    CustomButton(
                      text: 'Login',
                      backColor: Colors.purple,
                      textColor: Colors.white,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, ListPage.id);
                        }
                      },
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    CustomButton(
                      text: 'Sign Up',
                      backColor: Colors.white,
                      textColor: Colors.purple,
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage.id);
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
