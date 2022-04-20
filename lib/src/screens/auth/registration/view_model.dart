import 'package:flutter/material.dart';

import '../../../common/helpers/display_visibility_icon.dart';

class RegistrationViewModel extends ChangeNotifier {
  bool obscurePassword = true;
  bool confirmObscurePassword = true;

  void setObcurePassword() {
    obscurePassword = !obscurePassword;
    notifyListeners();
  }

  void setConfirmObcurePassword() {
    confirmObscurePassword = !confirmObscurePassword;
    notifyListeners();
  }

  Icon visibilityIcon(bool isObscureText) {
    return displayVisibilityIcon(isObscureText);
  }
}
