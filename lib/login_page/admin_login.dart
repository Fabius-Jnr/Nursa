import 'package:flutter/material.dart';
import '../Dashboard/dashboard.dart';

class Admin_Login extends StatelessWidget {
  Admin_Login({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController uniqueIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 175, 146, 244),
        title: const Text('Admin Login'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Container(
                  height: 130,
                  width: 130,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 175, 146, 244),
                  ),
                  child: Image.asset("assets/image1.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      textField(
                          hint_Text: 'Email',
                          icon: Icons.email,
                          inputType: TextInputType.emailAddress,
                          controller: emailController,
                          obscureText: false),
                      textField(
                          hint_Text: 'Unique Id',
                          icon: Icons.password_sharp,
                          inputType: TextInputType.number,
                          controller: uniqueIdController,
                          obscureText: true),
                      textField(
                          hint_Text: 'Pasword',
                          icon: Icons.password,
                          inputType: TextInputType.number,
                          controller: passwordController,
                          obscureText: true),
                      const SizedBox(height: 20),
                      loginButton(context),
                    ],
                  ),
                ),
              ],
            ),
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
      padding: EdgeInsets.only(bottom: 10),
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
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dashboard()),
          );
        },
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 25),
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 175, 146, 244)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
