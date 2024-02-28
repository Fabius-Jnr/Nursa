// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../authentication/authentication.dart';
import '../authentication/user_model.dart';
import '../login_page/loginPage.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController uniqueIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  Future<void> addUserDetails(
      String name, String uniqueID, String email) async {
    await FirebaseFirestore.instance.collection('users').add({
      'name': name,
      'unique ID': uniqueID,
      'email': email,
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Register Account',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              letterSpacing: 1.5,
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white12,
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 35,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 175, 146, 244),
                  ),
                  child: Image.asset("assets/image2.png"),
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormFieldWidget(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please provide your full name";
                            }
                            return null;
                          },
                          hintText: "Name",
                          icon: Icons.person,
                          inputType: TextInputType.name,
                          controller: nameController,
                          obscureText: false,
                        ),
                        TextFormFieldWidget(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please provide your email";
                            }
                            return null;
                          },
                          hintText: "Email",
                          icon: Icons.email,
                          inputType: TextInputType.emailAddress,
                          controller: emailController,
                          obscureText: false,
                        ),
                        TextFormFieldWidget(
                          validator: (value) {
                            if (value!.isEmpty ||
                                value.length.isLowerThan(4) ||
                                value.length.isGreaterThan(4)) {
                              return "Unique ID should be four digits";
                            }
                            return null;
                          },
                          hintText: "Unique ID",
                          icon: Icons.password_sharp,
                          inputType: TextInputType.number,
                          controller: uniqueIdController,
                          obscureText: true,
                        ),
                        TextFormFieldWidget(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please provide your password";
                            }
                            return null;
                          },
                          hintText: "Password",
                          icon: Icons.password,
                          controller: passwordController,
                          obscureText: true,
                          inputType: TextInputType.text,
                        ),
                      ],
                    ),
                  ),
                ),
                NavButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final UserModel userModel = UserModel(
                        userName: nameController.text,
                        password: passwordController.text,
                        uniqueId: uniqueIdController.text,
                        email: emailController.text,
                      );
                      await Authentication().signUpUserWithEmailAndPassword(
                        emailController.text,
                        passwordController.text,
                      );

                      // Adding user details to Firestore collection
                      await addUserDetails(
                        nameController.text,
                        uniqueIdController.text,
                        emailController.text,
                      );

                      Get.to(() => LoginPage());
                      final FirebaseAuth auth = FirebaseAuth.instance;
                      var user = auth.currentUser!;
                      var userID = user.uid;

                      await Authentication()
                          .createUserWithEmailAndPassword(userID, userModel);

                      _formKey.currentState!.reset();
                    } else {}
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(_slideToLoginPage());
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ... (Existing code) ...

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.hintText,
    this.validator,
    required this.icon,
    required this.inputType,
    required this.controller,
    required this.obscureText,
  }) : super(key: key);
  final String hintText;
  final String? Function(String?)? validator;
  final IconData icon;
  final TextInputType inputType;
  final TextEditingController controller;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        validator: validator,
        obscureText: obscureText,
        keyboardType: inputType,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon),
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
}

class NavButton extends StatelessWidget {
  const NavButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 175, 146, 244),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

Route _slideToLoginPage() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 500),
  );
}
