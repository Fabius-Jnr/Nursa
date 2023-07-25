import 'package:flutter/material.dart';


var kBoxDecoration =  BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 10),
              ]);

const kOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
);
