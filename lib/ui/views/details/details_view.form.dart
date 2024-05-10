// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String DetailsSearchFieldValueKey = 'DetailsSearchField';
const String DetailsFilterFieldValueKey = 'DetailsFilterField';

final Map<String, TextEditingController> _DetailsViewTextEditingControllers =
    {};

final Map<String, FocusNode> _DetailsViewFocusNodes = {};

final Map<String, String? Function(String?)?> _DetailsViewTextValidations = {
  DetailsSearchFieldValueKey: null,
  DetailsFilterFieldValueKey: null,
};

mixin $DetailsView {
  TextEditingController get detailsSearchFieldController =>
      _getFormTextEditingController(DetailsSearchFieldValueKey);
  TextEditingController get detailsFilterFieldController =>
      _getFormTextEditingController(DetailsFilterFieldValueKey);

  FocusNode get detailsSearchFieldFocusNode =>
      _getFormFocusNode(DetailsSearchFieldValueKey);
  FocusNode get detailsFilterFieldFocusNode =>
      _getFormFocusNode(DetailsFilterFieldValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_DetailsViewTextEditingControllers.containsKey(key)) {
      return _DetailsViewTextEditingControllers[key]!;
    }

    _DetailsViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _DetailsViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_DetailsViewFocusNodes.containsKey(key)) {
      return _DetailsViewFocusNodes[key]!;
    }
    _DetailsViewFocusNodes[key] = FocusNode();
    return _DetailsViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    detailsSearchFieldController.addListener(() => _updateFormData(model));
    detailsFilterFieldController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    detailsSearchFieldController.addListener(() => _updateFormData(model));
    detailsFilterFieldController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          DetailsSearchFieldValueKey: detailsSearchFieldController.text,
          DetailsFilterFieldValueKey: detailsFilterFieldController.text,
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

    for (var controller in _DetailsViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _DetailsViewFocusNodes.values) {
      focusNode.dispose();
    }

    _DetailsViewTextEditingControllers.clear();
    _DetailsViewFocusNodes.clear();
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

  String? get detailsSearchFieldValue =>
      this.formValueMap[DetailsSearchFieldValueKey] as String?;
  String? get detailsFilterFieldValue =>
      this.formValueMap[DetailsFilterFieldValueKey] as String?;

  set detailsSearchFieldValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DetailsSearchFieldValueKey: value}),
    );

    if (_DetailsViewTextEditingControllers.containsKey(
        DetailsSearchFieldValueKey)) {
      _DetailsViewTextEditingControllers[DetailsSearchFieldValueKey]?.text =
          value ?? '';
    }
  }

  set detailsFilterFieldValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DetailsFilterFieldValueKey: value}),
    );

    if (_DetailsViewTextEditingControllers.containsKey(
        DetailsFilterFieldValueKey)) {
      _DetailsViewTextEditingControllers[DetailsFilterFieldValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasDetailsSearchField =>
      this.formValueMap.containsKey(DetailsSearchFieldValueKey) &&
      (detailsSearchFieldValue?.isNotEmpty ?? false);
  bool get hasDetailsFilterField =>
      this.formValueMap.containsKey(DetailsFilterFieldValueKey) &&
      (detailsFilterFieldValue?.isNotEmpty ?? false);

  bool get hasDetailsSearchFieldValidationMessage =>
      this.fieldsValidationMessages[DetailsSearchFieldValueKey]?.isNotEmpty ??
      false;
  bool get hasDetailsFilterFieldValidationMessage =>
      this.fieldsValidationMessages[DetailsFilterFieldValueKey]?.isNotEmpty ??
      false;

  String? get detailsSearchFieldValidationMessage =>
      this.fieldsValidationMessages[DetailsSearchFieldValueKey];
  String? get detailsFilterFieldValidationMessage =>
      this.fieldsValidationMessages[DetailsFilterFieldValueKey];
}

extension Methods on FormStateHelper {
  setDetailsSearchFieldValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DetailsSearchFieldValueKey] =
          validationMessage;
  setDetailsFilterFieldValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DetailsFilterFieldValueKey] =
          validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    detailsSearchFieldValue = '';
    detailsFilterFieldValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      DetailsSearchFieldValueKey:
          getValidationMessage(DetailsSearchFieldValueKey),
      DetailsFilterFieldValueKey:
          getValidationMessage(DetailsFilterFieldValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _DetailsViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _DetailsViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      DetailsSearchFieldValueKey:
          getValidationMessage(DetailsSearchFieldValueKey),
      DetailsFilterFieldValueKey:
          getValidationMessage(DetailsFilterFieldValueKey),
    });
