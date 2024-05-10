import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_stacked_app2/app/app.locator.dart';
import 'package:my_stacked_app2/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../services/auth_service.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  // method to logout
  Future<void> logout(BuildContext context) async {
    //confirm whether user wants to logout
    final response = await _dialogService.showConfirmationDialog(
      title: 'Logout',
      description: 'Are you sure you want to logout?',
      confirmationTitle: 'Yes',
      cancelTitle: 'No',
    );

    if (response?.confirmed == true) {
      setBusy(true);
      await _authService.signOut();
      Fluttertoast.showToast(msg: "Logged out successfully");
      _navigationService.replaceWithLoginView();
      notifyListeners();
      setBusy(false);
    } else {
      return;
    }
  }
}
