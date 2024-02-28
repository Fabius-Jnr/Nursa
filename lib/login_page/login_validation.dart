// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginFormFieldWidget extends StatelessWidget {
  const LoginFormFieldWidget({
    Key? key,
    required this.hintText,
    this.validator,
    required this.inputType,
    required this.controller,
    required this.obscureText,
  }) : super(key: key);
  final String hintText;
  final String? Function(String?)? validator;
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
