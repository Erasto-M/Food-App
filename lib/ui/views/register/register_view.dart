import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_stacked_app2/ui/common/ui_helpers.dart';
import 'package:my_stacked_app2/ui/views/register/register_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'register_viewmodel.dart';

RegisterFormValidators? registerFormValidators;

@FormView(fields: [
  FormTextField(
    name: "firstName",
    validator: RegisterFormValidators.validateFirstName,
  ),
  FormTextField(
    name: "lastName",
    validator: RegisterFormValidators.validateLastName,
  ),
  FormTextField(
    name: "signupemail",
    validator: RegisterFormValidators.validateEmail,
  ),
  FormTextField(
    name: "phoneNumber",
    validator: RegisterFormValidators.validatePhoneNumber,
  ),
  FormTextField(
    name: 'signuppassword',
    validator: RegisterFormValidators.validatePassword,
  ),
  FormTextField(
    name: "confirmPassword",
    validator: RegisterFormValidators.validateConfirmPassword,
  ),
])
class RegisterView extends StackedView<RegisterViewModel> with $RegisterView {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 19, 2),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 150),
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Food Corner",
                  style: GoogleFonts.acme(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Create Your Account",
                  style: GoogleFonts.acme(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
              verticalSpaceMedium,
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: firstNameController,
                      focusNode: firstNameFocusNode,
                      decoration: InputDecoration(
                        hintText: "FirstName",
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: const Icon(
                          Icons.person_2_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: lastNameController,
                      focusNode: lastNameFocusNode,
                      decoration: InputDecoration(
                        hintText: "LastName",
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: signupemailController,
                      focusNode: signupemailFocusNode,
                      decoration: InputDecoration(
                        hintText: "Email",
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phoneNumberController,
                      focusNode: phoneNumberFocusNode,
                      decoration: InputDecoration(
                        hintText: "Phone",
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: const Icon(
                          Icons.phone_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      controller: signuppasswordController,
                      focusNode: signuppasswordFocusNode,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 25,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_off,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      controller: confirmPasswordController,
                      focusNode: confirmPasswordFocusNode,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Confirm Password",
                        hintStyle: const TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 25,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_off,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    verticalSpaceLarge,
                    viewModel.isBusy
                        ? const SpinKitSpinningLines(
                            color: Colors.white,
                            size: 70,
                          )
                        : GestureDetector(
                            onTap: () {
                              viewModel.createMyAccount();
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
                                child: Row(
                                  children: [
                                    Text(
                                      "Create Account",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    horizontalSpaceSmall,
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                    verticalSpaceMedium,
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    viewModel.navigateToLogin();
                  },
                  child: const Row(
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      horizontalSpaceSmall,
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
  @override
  onViewModelReady(RegisterViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }
}
