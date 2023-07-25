import 'package:flutter/material.dart';
import 'package:nursa/alarm/constants/styles.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.icon,
    this.onTap,
    this.text,
    this.labelText,
    this.hintText,
    required this.readOnly,
    this.validator,
  });

  final TextEditingController controller;
  final String? text;
  final String? labelText;
  final String? hintText;
  final IconData icon;
  final void Function()? onTap;
  final bool readOnly;
  final String Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      validator: validator,
      onTap: onTap,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8.0),
        prefixIcon: Icon(icon),
        labelText: labelText,
        hintText: hintText,
        border: kOutlineInputBorder,
      ),
    );
  }
}
