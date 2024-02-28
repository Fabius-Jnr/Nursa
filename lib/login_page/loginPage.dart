import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursa/authentication/authentication.dart';
import 'package:nursa/login_page/login_validation.dart';

import '../Dashboard/nurse_dashbord.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController uniqueIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nurse Login'),
        centerTitle: true,
        backgroundColor: Colors.purple, // Customize the app bar color
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding:
              const EdgeInsets.all(20), // Increase padding for better spacing
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple, // Use the same color as the app bar
                  ),
                  child: Image.asset('assets/image1.png'),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        LoginFormFieldWidget(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please provide your email";
                            }
                            return null;
                          },
                          hintText: "Email",
                          inputType: TextInputType.emailAddress,
                          controller: emailController,
                          obscureText: false,
                        ),
                        const SizedBox(
                            height: 10), // Add spacing between form fields
                        LoginFormFieldWidget(
                          validator: (value) {
                            if (value!.isEmpty || value.length != 4) {
                              return "Unique ID should be four digits";
                            }
                            return null;
                          },
                          hintText: "Staff ID",
                          inputType: TextInputType.number,
                          controller: uniqueIdController,
                          obscureText: true,
                        ),
                        const SizedBox(
                            height: 10), // Add spacing between form fields
                        LoginFormFieldWidget(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please provide your password";
                            }
                            return null;
                          },
                          hintText: "Password",
                          inputType: TextInputType.text,
                          controller: passwordController,
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                loginButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: ElevatedButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            await Authentication().loginWithEmailAndPassword(
                emailController.text, passwordController.text);
            Get.to(
              () => const NurseDashboard(),
            );
          }
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(
              Colors.purple), // Use the same color as the app bar
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  30.0), // Increase the border radius for a more rounded button
            ),
          ),
        ),
        child: const Text(
          'Nurse Login',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
