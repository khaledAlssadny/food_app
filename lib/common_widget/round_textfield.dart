import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTextfield(
      {super.key,
      required this.hintText,
      this.controller,
      this.keyboardType,
      this.bgColor,
      this.left,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor ?? TColor.textfield,
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          if (left != null)
            Padding(padding: EdgeInsets.only(left: 15), child: left!),
          Expanded(
            child: TextField(
              autocorrect: false,
              controller: controller,
              obscureText: obscureText,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // prefixIcon: left,
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}



/*
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../common/color_extension.dart';

class RoundTextfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? left;
  final bool? obscureText = false;
  final TextInputType? keyboardType;
  const RoundTextfield(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.keyboardType,
      this.left,
      final bool? obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          if (left != null)
            Container(
              // ✅ Fix: Give the left container a fixed size
              width: 30,
              height: 30,
              alignment: Alignment.center,
              child: left,
            ),
          Expanded(
            // ✅ Ensure TextField expands correctly
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none, // Remove default underline
              ),
            ),
          ),
        ],
      ),
    );
  }
}

*/