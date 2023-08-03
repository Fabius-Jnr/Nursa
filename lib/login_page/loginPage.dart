import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursa/Dashboard/nurse_dashbord.dart';
import 'package:nursa/authentication/authentication.dart';

import 'admin_login.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController uniqueIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white10.withOpacity(0.8),
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(
                color: Colors.black, fontSize: 25, letterSpacing: 1.5),
          ),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white10,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 175, 146, 244),
                ),
                child: Image.asset('assets/image1.png'),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: textField(
                          hintText: 'Email',
                          icon: Icons.email,
                          inputType: TextInputType.emailAddress,
                          controller: emailController,
                          obscureText: false),
                    ),
                    textField(
                        hintText: 'Unique Id',
                        icon: Icons.password_sharp,
                        inputType: TextInputType.number,
                        controller: uniqueIdController,
                        obscureText: true),
                    textField(
                        hintText: 'Pasword',
                        icon: Icons.password,
                        inputType: TextInputType.text,
                        controller: passwordController,
                        obscureText: true),
                    const SizedBox(height: 10),
                    loginButton(context),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Admin_Login()));
                        },
                        child: const Text(
                          'Admin Login',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
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

  Widget textField(
      {required String hintText,
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
          hintText: hintText,
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
              const Color.fromARGB(255, 175, 146, 244)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
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
