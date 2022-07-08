import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String hintText;
  final icon;
  final String alert;

  const InputForm(
      {Key? key, required this.hintText, this.icon, required this.alert})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade300,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              suffixIcon: Icon(
                icon,
                color: Colors.grey,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return alert;
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}
