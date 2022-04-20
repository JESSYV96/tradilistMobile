import 'package:flutter/material.dart';

Icon displayVisibilityIcon(bool isObscureText) {
  return isObscureText
      ? const Icon(Icons.visibility_outlined)
      : const Icon(Icons.visibility_off_outlined);
}
