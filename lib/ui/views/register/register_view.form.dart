// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:my_stacked_app2/ui/views/register/register_viewmodel.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String SignupemailValueKey = 'signupemail';
const String PhoneNumberValueKey = 'phoneNumber';
const String SignuppasswordValueKey = 'signuppassword';
const String ConfirmPasswordValueKey = 'confirmPassword';

final Map<String, TextEditingController> _RegisterViewTextEditingControllers =
    {};

final Map<String, FocusNode> _RegisterViewFocusNodes = {};

final Map<String, String? Function(String?)?> _RegisterViewTextValidations = {
  FirstNameValueKey: RegisterFormValidators.validateFirstName,
  LastNameValueKey: RegisterFormValidators.validateLastName,
  SignupemailValueKey: RegisterFormValidators.validateEmail,
  PhoneNumberValueKey: RegisterFormValidators.validatePhoneNumber,
  SignuppasswordValueKey: RegisterFormValidators.validatePassword,
  ConfirmPasswordValueKey: RegisterFormValidators.validateConfirmPassword,
};

mixin $RegisterView {
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get lastNameController =>
      _getFormTextEditingController(LastNameValueKey);
  TextEditingController get signupemailController =>
      _getFormTextEditingController(SignupemailValueKey);
  TextEditingController get phoneNumberController =>
      _getFormTextEditingController(PhoneNumberValueKey);
  TextEditingController get signuppasswordController =>
      _getFormTextEditingController(SignuppasswordValueKey);
  TextEditingController get confirmPasswordController =>
      _getFormTextEditingController(ConfirmPasswordValueKey);

  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get lastNameFocusNode => _getFormFocusNode(LastNameValueKey);
  FocusNode get signupemailFocusNode => _getFormFocusNode(SignupemailValueKey);
  FocusNode get phoneNumberFocusNode => _getFormFocusNode(PhoneNumberValueKey);
  FocusNode get signuppasswordFocusNode =>
      _getFormFocusNode(SignuppasswordValueKey);
  FocusNode get confirmPasswordFocusNode =>
      _getFormFocusNode(ConfirmPasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_RegisterViewTextEditingControllers.containsKey(key)) {
      return _RegisterViewTextEditingControllers[key]!;
    }

    _RegisterViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _RegisterViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_RegisterViewFocusNodes.containsKey(key)) {
      return _RegisterViewFocusNodes[key]!;
    }
    _RegisterViewFocusNodes[key] = FocusNode();
    return _RegisterViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    signupemailController.addListener(() => _updateFormData(model));
    phoneNumberController.addListener(() => _updateFormData(model));
    signuppasswordController.addListener(() => _updateFormData(model));
    confirmPasswordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    signupemailController.addListener(() => _updateFormData(model));
    phoneNumberController.addListener(() => _updateFormData(model));
    signuppasswordController.addListener(() => _updateFormData(model));
    confirmPasswordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          FirstNameValueKey: firstNameController.text,
          LastNameValueKey: lastNameController.text,
          SignupemailValueKey: signupemailController.text,
          PhoneNumberValueKey: phoneNumberController.text,
          SignuppasswordValueKey: signuppasswordController.text,
          ConfirmPasswordValueKey: confirmPasswordController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _RegisterViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _RegisterViewFocusNodes.values) {
      focusNode.dispose();
    }

    _RegisterViewTextEditingControllers.clear();
    _RegisterViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get lastNameValue => this.formValueMap[LastNameValueKey] as String?;
  String? get signupemailValue =>
      this.formValueMap[SignupemailValueKey] as String?;
  String? get phoneNumberValue =>
      this.formValueMap[PhoneNumberValueKey] as String?;
  String? get signuppasswordValue =>
      this.formValueMap[SignuppasswordValueKey] as String?;
  String? get confirmPasswordValue =>
      this.formValueMap[ConfirmPasswordValueKey] as String?;

  set firstNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstNameValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(FirstNameValueKey)) {
      _RegisterViewTextEditingControllers[FirstNameValueKey]?.text =
          value ?? '';
    }
  }

  set lastNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LastNameValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(LastNameValueKey)) {
      _RegisterViewTextEditingControllers[LastNameValueKey]?.text = value ?? '';
    }
  }

  set signupemailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({SignupemailValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(SignupemailValueKey)) {
      _RegisterViewTextEditingControllers[SignupemailValueKey]?.text =
          value ?? '';
    }
  }

  set phoneNumberValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PhoneNumberValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(PhoneNumberValueKey)) {
      _RegisterViewTextEditingControllers[PhoneNumberValueKey]?.text =
          value ?? '';
    }
  }

  set signuppasswordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({SignuppasswordValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(
        SignuppasswordValueKey)) {
      _RegisterViewTextEditingControllers[SignuppasswordValueKey]?.text =
          value ?? '';
    }
  }

  set confirmPasswordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ConfirmPasswordValueKey: value}),
    );

    if (_RegisterViewTextEditingControllers.containsKey(
        ConfirmPasswordValueKey)) {
      _RegisterViewTextEditingControllers[ConfirmPasswordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasFirstName =>
      this.formValueMap.containsKey(FirstNameValueKey) &&
      (firstNameValue?.isNotEmpty ?? false);
  bool get hasLastName =>
      this.formValueMap.containsKey(LastNameValueKey) &&
      (lastNameValue?.isNotEmpty ?? false);
  bool get hasSignupemail =>
      this.formValueMap.containsKey(SignupemailValueKey) &&
      (signupemailValue?.isNotEmpty ?? false);
  bool get hasPhoneNumber =>
      this.formValueMap.containsKey(PhoneNumberValueKey) &&
      (phoneNumberValue?.isNotEmpty ?? false);
  bool get hasSignuppassword =>
      this.formValueMap.containsKey(SignuppasswordValueKey) &&
      (signuppasswordValue?.isNotEmpty ?? false);
  bool get hasConfirmPassword =>
      this.formValueMap.containsKey(ConfirmPasswordValueKey) &&
      (confirmPasswordValue?.isNotEmpty ?? false);

  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasLastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey]?.isNotEmpty ?? false;
  bool get hasSignupemailValidationMessage =>
      this.fieldsValidationMessages[SignupemailValueKey]?.isNotEmpty ?? false;
  bool get hasPhoneNumberValidationMessage =>
      this.fieldsValidationMessages[PhoneNumberValueKey]?.isNotEmpty ?? false;
  bool get hasSignuppasswordValidationMessage =>
      this.fieldsValidationMessages[SignuppasswordValueKey]?.isNotEmpty ??
      false;
  bool get hasConfirmPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey]?.isNotEmpty ??
      false;

  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get lastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey];
  String? get signupemailValidationMessage =>
      this.fieldsValidationMessages[SignupemailValueKey];
  String? get phoneNumberValidationMessage =>
      this.fieldsValidationMessages[PhoneNumberValueKey];
  String? get signuppasswordValidationMessage =>
      this.fieldsValidationMessages[SignuppasswordValueKey];
  String? get confirmPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey];
}

extension Methods on FormStateHelper {
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setLastNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastNameValueKey] = validationMessage;
  setSignupemailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SignupemailValueKey] = validationMessage;
  setPhoneNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PhoneNumberValueKey] = validationMessage;
  setSignuppasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SignuppasswordValueKey] = validationMessage;
  setConfirmPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey] =
          validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    firstNameValue = '';
    lastNameValue = '';
    signupemailValue = '';
    phoneNumberValue = '';
    signuppasswordValue = '';
    confirmPasswordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      SignupemailValueKey: getValidationMessage(SignupemailValueKey),
      PhoneNumberValueKey: getValidationMessage(PhoneNumberValueKey),
      SignuppasswordValueKey: getValidationMessage(SignuppasswordValueKey),
      ConfirmPasswordValueKey: getValidationMessage(ConfirmPasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _RegisterViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _RegisterViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      SignupemailValueKey: getValidationMessage(SignupemailValueKey),
      PhoneNumberValueKey: getValidationMessage(PhoneNumberValueKey),
      SignuppasswordValueKey: getValidationMessage(SignuppasswordValueKey),
      ConfirmPasswordValueKey: getValidationMessage(ConfirmPasswordValueKey),
    });
