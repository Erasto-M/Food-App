import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_stacked_app2/app/app.locator.dart';
import 'package:my_stacked_app2/app/app.router.dart';
import 'package:my_stacked_app2/services/auth_service.dart';
import 'package:my_stacked_app2/ui/views/login/login_view.form.dart';
import 'package:my_stacked_app2/ui/views/register/register_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _authService = locator<AuthService>();

  void navigateToLogin() {
    _navigationService.replaceWithLoginView();
  }

  Future createMyAccount() async {
    setBusy(true);
    if (signuppasswordValue != confirmPasswordValue) {
      Fluttertoast.showToast(
        msg: "Passwords do not match",
        backgroundColor: Colors.black,
      );
      setBusy(false);
    } else if (firstNameValue!.isEmpty ||
        firstNameValue! == '' ||
        lastNameValue!.isEmpty ||
        lastNameValue! == '' ||
        signupemailValue!.isEmpty ||
        signupemailValue! == '' ||
        phoneNumberValue!.isEmpty ||
        phoneNumberValue! == '' ||
        signuppasswordValue!.isEmpty ||
        signuppasswordValue! == '' ||
        confirmPasswordValue!.isEmpty ||
        confirmPasswordValue! == '') {
      Fluttertoast.showToast(
        msg: "All fields are required",
        backgroundColor: Colors.black,
      );
      setBusy(false);
    } else {
      await _authService.createUserWithEmailAndPassword(
        firstName: firstNameValue!,
        lastName: lastNameValue!,
        email: signupemailValue!,
        phoneNumber: phoneNumberValue!,
        password: signuppasswordValue!,
      );
      setBusy(false);
    }
  }
}

class RegisterFormValidators {
  static String? validateFirstName(String? value) {
    if (value!.isEmpty || value == '') {
      return "FirstName cannot be empty";
    } else if (value.contains(RegExp(r'[0-9]'))) {
      return "numbers are not allowed";
    }
    return '';
  }

  static String? validateLastName(String? value) {
    if (value!.isEmpty || value == '') {
      return "LastName cannot be empty";
    } else if (value.contains(RegExp(r'[0-9]'))) {
      return "numbers are not allowed";
    }
    return '';
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty || value == '') {
      return "Email cannot be empty";
    } else if (!value.contains("@gmail.com")) {
      return "please enter a valid email address";
    }
    return '';
  }

  static String? validatePhoneNumber(String? value) {
    if (value!.isEmpty || value == '') {
      return "PhoneNumber cannot be empty";
    } else if (value.contains(RegExp(r'[A-Z]'))) {
      return "Texts are not allowed";
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

  static String? validateConfirmPassword(String? value) {
    if (value!.isEmpty || value == '') {
      return "FirstName cannot be empty";
    }
    return '';
  }
}
