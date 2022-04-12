import 'account_screen.dart';

abstract class AccountRouter {
  void displayChangePasswordScreen();
  void logoutCurrentUser();
}

class AccountViewModel extends IAccountViewModel {
  final AccountRouter _router;
  
  AccountViewModel(this._router);

  @override
  void goToChangePasswordScreen() {
    _router.displayChangePasswordScreen();
  }

  @override
  void logout() {
    _router.logoutCurrentUser();
  }
}
