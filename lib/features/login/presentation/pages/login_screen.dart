import 'package:flutter/material.dart';
import 'package:study_flutter/core/styles/style.dart';
import 'package:study_flutter/core/color/color.dart';
import 'package:study_flutter/features/login/presentation/widgets/custom_textfile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyles.title,
        ),
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/login.png'),
              const SizedBox(height: 20.0),
              Text(
                'Login Details',
                style: TextStyles.title.copyWith(fontSize: 20.0),
              ),
              SizedBox(height: 24.0),
              CustomTextfile(
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  hint: 'Email or Username'),
              const SizedBox(height: 16.0),
              CustomTextfile(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                hint: 'Password',
                isObscure: isObscure,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
              const SizedBox(height: 8.0),
              Text('Forget Password ?', style: TextStyles.body),
              const SizedBox(height: 24.0),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.neutral['dark-blue'],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home' );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Login',
                      style: TextStyles.title
                          .copyWith(fontSize: 20.0, color: Colors.white),
                    ),
                  )),
              const SizedBox(height: 8.0),
              Text('Don t have an account ? ',
                  style: TextStyles.body.copyWith(fontSize: 18.0)),
              Text('Sign Up ',
                  style: TextStyles.body.copyWith(
                      fontSize: 18.0, color: AppColors.neutral['dark-blue'])),
            ],
          ),
        ),
      ),
    );
  }
}
