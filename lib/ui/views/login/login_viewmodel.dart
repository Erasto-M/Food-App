import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_stacked_app2/app/app.locator.dart';
import 'package:my_stacked_app2/app/app.router.dart';
import 'package:my_stacked_app2/services/auth_service.dart';
import 'package:my_stacked_app2/ui/views/login/login_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _authService = locator<AuthService>();
  final _bottomSheetService = locator<BottomSheetService>();
  void navigateToRegister() {
    _navigationService.replaceWithRegisterView();
  }

  Future Login() async {
    setBusy(true);
    if (emailValue!.isEmpty ||
        emailValue! == '' ||
        passwordValue!.isEmpty ||
        passwordValue! == '') {
      Fluttertoast.showToast(msg: "All fields are required");
      setBusy(false);
    } else {
      await _authService.signInWithEmailAndPassword(
        email: emailValue!,
        password: passwordValue!,
      );
      setBusy(false);
    }
  }
}

class LoginFormValidators {
  static String? validateEmail(String? value) {
    if (value!.isEmpty || value == '') {
      return "Email cannot be empty";
    } else if (!value.contains("@gmail.com")) {
      return "please enter a valid email address";
    }
    return '';
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty || value == '') {
      return "password cannot be empty";
    } else if (value.length < 6) {
      return "passwords should be atleast 6 characters";
    } else if (!value.contains(RegExp(r'[0-9]'))) {
      return "Weak password";
    }
    return '';
  }
}
