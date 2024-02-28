import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursa/authentication/authentication.dart';
import 'package:nursa/login_page/admin_login.dart';
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
//  appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Admin_Login()));
                  },
                  child: const Text(
                    'ADMIN\nLOGIN',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 130,
                width: 130,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 175, 146, 244),
                ),
                child: Image.asset('assets/image1.png'),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: textField(
                          hint_Text: 'Email',
                          icon: Icons.email,
                          inputType: TextInputType.emailAddress,
                          controller: emailController,
                          obscureText: false),
                    ),
                    textField(
                        hint_Text: 'Unique Id',
                        icon: Icons.password_sharp,
                        inputType: TextInputType.number,
                        controller: uniqueIdController,
                        obscureText: true),
                    textField(
                        hint_Text: 'Pasword',
                        icon: Icons.password,
                        inputType: TextInputType.text,
                        controller: passwordController,
                        obscureText: true),
                    const SizedBox(height: 10),
                    loginButton(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textField(
      {required String hint_Text,
      required IconData icon,
      required TextInputType inputType,
      required TextEditingController controller,
      required bool obscureText}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        cursorColor: const Color.fromARGB(255, 153, 39, 201),
        obscureText: obscureText,
        keyboardType: inputType,
        controller: controller,
        decoration: InputDecoration(
          // prefix: Icon(icon),
          hintText: hint_Text,
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 153, 39, 201)),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 153, 39, 201)),
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
