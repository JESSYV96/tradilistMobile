import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  bool isObcurePassword = true;

  void setObcurePassword() {
    isObcurePassword = !isObcurePassword;
    notifyListeners();
  }

  Icon displayVisibilityIcon() {
    return isObcurePassword
        ? const Icon(Icons.visibility_outlined)
        : const Icon(Icons.visibility_off_outlined);
  }
}
