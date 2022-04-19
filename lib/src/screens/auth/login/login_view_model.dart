import 'package:flutter/material.dart';

import '../../../common/helpers/display_visibility_icon.dart';

class LoginViewModel extends ChangeNotifier {
  bool _isObcurePassword = true;

  bool get isObcurePassword => _isObcurePassword;
  set isObcurePassword(bool value) => _isObcurePassword = value;

  void setObcurePassword() {
    isObcurePassword = !isObcurePassword;
    notifyListeners();
  }

  Icon passwordVisibilityIcon() {
    return displayVisibilityIcon(isObcurePassword);
  }

   
}
