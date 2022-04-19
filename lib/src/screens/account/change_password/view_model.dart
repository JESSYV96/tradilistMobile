import 'package:flutter/material.dart';

import '../../../common/helpers/display_visibility_icon.dart';

class ChangePasswordViewModel extends ChangeNotifier {
  bool _oldObscurePassword = false;
  bool _newObscurePassword = true;
  bool _confirmObscurePassword = true;

  bool get oldObscurePassword => _oldObscurePassword;
  set oldObscurePassword(bool value) {
    _oldObscurePassword = value;
    notifyListeners();
  }

  bool get newObscurePassword => _newObscurePassword;
  set newObscurePassword(bool value) {
    _newObscurePassword = value;
    notifyListeners();
  }

  bool get confirmObscurePassword => _confirmObscurePassword;
  set confirmObscurePassword(bool value) {
    _confirmObscurePassword = value;
    notifyListeners();
  }

  void setNewObcurePassword() {
    newObscurePassword = !newObscurePassword;
    notifyListeners();
  }

  void setOldObcurePassword() {
    oldObscurePassword = !oldObscurePassword;
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
