import 'package:flutter/material.dart';

class CustomButtonModel {
  String text;
  VoidCallback? onButtonClick;
  CustomButtonModel({
    required this.text,
    this.onButtonClick,
  });
}