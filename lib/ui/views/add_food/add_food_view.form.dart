// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String NameValueKey = 'name';
const String PriceValueKey = 'price';
const String DescriptionValueKey = 'description';
const String RatingValueKey = 'rating';
const String DeliveryCostValueKey = 'deliveryCost';
const String QuantityValueKey = 'quantity';
const String DeliveryTimeValueKey = 'deliveryTime';
const String CategoryValueKey = 'category';

final Map<String, TextEditingController> _AddFoodViewTextEditingControllers =
    {};

final Map<String, FocusNode> _AddFoodViewFocusNodes = {};

final Map<String, String? Function(String?)?> _AddFoodViewTextValidations = {
  NameValueKey: null,
  PriceValueKey: null,
  DescriptionValueKey: null,
  RatingValueKey: null,
  DeliveryCostValueKey: null,
  QuantityValueKey: null,
  DeliveryTimeValueKey: null,
  CategoryValueKey: null,
};

mixin $AddFoodView {
  TextEditingController get nameController =>
      _getFormTextEditingController(NameValueKey);
  TextEditingController get priceController =>
      _getFormTextEditingController(PriceValueKey);
  TextEditingController get descriptionController =>
      _getFormTextEditingController(DescriptionValueKey);
  TextEditingController get ratingController =>
      _getFormTextEditingController(RatingValueKey);
  TextEditingController get deliveryCostController =>
      _getFormTextEditingController(DeliveryCostValueKey);
  TextEditingController get quantityController =>
      _getFormTextEditingController(QuantityValueKey);
  TextEditingController get deliveryTimeController =>
      _getFormTextEditingController(DeliveryTimeValueKey);
  TextEditingController get categoryController =>
      _getFormTextEditingController(CategoryValueKey);

  FocusNode get nameFocusNode => _getFormFocusNode(NameValueKey);
  FocusNode get priceFocusNode => _getFormFocusNode(PriceValueKey);
  FocusNode get descriptionFocusNode => _getFormFocusNode(DescriptionValueKey);
  FocusNode get ratingFocusNode => _getFormFocusNode(RatingValueKey);
  FocusNode get deliveryCostFocusNode =>
      _getFormFocusNode(DeliveryCostValueKey);
  FocusNode get quantityFocusNode => _getFormFocusNode(QuantityValueKey);
  FocusNode get deliveryTimeFocusNode =>
      _getFormFocusNode(DeliveryTimeValueKey);
  FocusNode get categoryFocusNode => _getFormFocusNode(CategoryValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_AddFoodViewTextEditingControllers.containsKey(key)) {
      return _AddFoodViewTextEditingControllers[key]!;
    }

    _AddFoodViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _AddFoodViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_AddFoodViewFocusNodes.containsKey(key)) {
      return _AddFoodViewFocusNodes[key]!;
    }
    _AddFoodViewFocusNodes[key] = FocusNode();
    return _AddFoodViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    nameController.addListener(() => _updateFormData(model));
    priceController.addListener(() => _updateFormData(model));
    descriptionController.addListener(() => _updateFormData(model));
    ratingController.addListener(() => _updateFormData(model));
    deliveryCostController.addListener(() => _updateFormData(model));
    quantityController.addListener(() => _updateFormData(model));
    deliveryTimeController.addListener(() => _updateFormData(model));
    categoryController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    nameController.addListener(() => _updateFormData(model));
    priceController.addListener(() => _updateFormData(model));
    descriptionController.addListener(() => _updateFormData(model));
    ratingController.addListener(() => _updateFormData(model));
    deliveryCostController.addListener(() => _updateFormData(model));
    quantityController.addListener(() => _updateFormData(model));
    deliveryTimeController.addListener(() => _updateFormData(model));
    categoryController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NameValueKey: nameController.text,
          PriceValueKey: priceController.text,
          DescriptionValueKey: descriptionController.text,
          RatingValueKey: ratingController.text,
          DeliveryCostValueKey: deliveryCostController.text,
          QuantityValueKey: quantityController.text,
          DeliveryTimeValueKey: deliveryTimeController.text,
          CategoryValueKey: categoryController.text,
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

    for (var controller in _AddFoodViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _AddFoodViewFocusNodes.values) {
      focusNode.dispose();
    }

    _AddFoodViewTextEditingControllers.clear();
    _AddFoodViewFocusNodes.clear();
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

  String? get nameValue => this.formValueMap[NameValueKey] as String?;
  String? get priceValue => this.formValueMap[PriceValueKey] as String?;
  String? get descriptionValue =>
      this.formValueMap[DescriptionValueKey] as String?;
  String? get ratingValue => this.formValueMap[RatingValueKey] as String?;
  String? get deliveryCostValue =>
      this.formValueMap[DeliveryCostValueKey] as String?;
  String? get quantityValue => this.formValueMap[QuantityValueKey] as String?;
  String? get deliveryTimeValue =>
      this.formValueMap[DeliveryTimeValueKey] as String?;
  String? get categoryValue => this.formValueMap[CategoryValueKey] as String?;

  set nameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NameValueKey: value}),
    );

    if (_AddFoodViewTextEditingControllers.containsKey(NameValueKey)) {
      _AddFoodViewTextEditingControllers[NameValueKey]?.text = value ?? '';
    }
  }

  set priceValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PriceValueKey: value}),
    );

    if (_AddFoodViewTextEditingControllers.containsKey(PriceValueKey)) {
      _AddFoodViewTextEditingControllers[PriceValueKey]?.text = value ?? '';
    }
  }

  set descriptionValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DescriptionValueKey: value}),
    );

    if (_AddFoodViewTextEditingControllers.containsKey(DescriptionValueKey)) {
      _AddFoodViewTextEditingControllers[DescriptionValueKey]?.text =
          value ?? '';
    }
  }

  set ratingValue(String? value) {
    this.setData(
      this.formValueMap..addAll({RatingValueKey: value}),
    );

    if (_AddFoodViewTextEditingControllers.containsKey(RatingValueKey)) {
      _AddFoodViewTextEditingControllers[RatingValueKey]?.text = value ?? '';
    }
  }

  set deliveryCostValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DeliveryCostValueKey: value}),
    );

    if (_AddFoodViewTextEditingControllers.containsKey(DeliveryCostValueKey)) {
      _AddFoodViewTextEditingControllers[DeliveryCostValueKey]?.text =
          value ?? '';
    }
  }

  set quantityValue(String? value) {
    this.setData(
      this.formValueMap..addAll({QuantityValueKey: value}),
    );

    if (_AddFoodViewTextEditingControllers.containsKey(QuantityValueKey)) {
      _AddFoodViewTextEditingControllers[QuantityValueKey]?.text = value ?? '';
    }
  }

  set deliveryTimeValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DeliveryTimeValueKey: value}),
    );

    if (_AddFoodViewTextEditingControllers.containsKey(DeliveryTimeValueKey)) {
      _AddFoodViewTextEditingControllers[DeliveryTimeValueKey]?.text =
          value ?? '';
    }
  }

  set categoryValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CategoryValueKey: value}),
    );

    if (_AddFoodViewTextEditingControllers.containsKey(CategoryValueKey)) {
      _AddFoodViewTextEditingControllers[CategoryValueKey]?.text = value ?? '';
    }
  }

  bool get hasName =>
      this.formValueMap.containsKey(NameValueKey) &&
      (nameValue?.isNotEmpty ?? false);
  bool get hasPrice =>
      this.formValueMap.containsKey(PriceValueKey) &&
      (priceValue?.isNotEmpty ?? false);
  bool get hasDescription =>
      this.formValueMap.containsKey(DescriptionValueKey) &&
      (descriptionValue?.isNotEmpty ?? false);
  bool get hasRating =>
      this.formValueMap.containsKey(RatingValueKey) &&
      (ratingValue?.isNotEmpty ?? false);
  bool get hasDeliveryCost =>
      this.formValueMap.containsKey(DeliveryCostValueKey) &&
      (deliveryCostValue?.isNotEmpty ?? false);
  bool get hasQuantity =>
      this.formValueMap.containsKey(QuantityValueKey) &&
      (quantityValue?.isNotEmpty ?? false);
  bool get hasDeliveryTime =>
      this.formValueMap.containsKey(DeliveryTimeValueKey) &&
      (deliveryTimeValue?.isNotEmpty ?? false);
  bool get hasCategory =>
      this.formValueMap.containsKey(CategoryValueKey) &&
      (categoryValue?.isNotEmpty ?? false);

  bool get hasNameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey]?.isNotEmpty ?? false;
  bool get hasPriceValidationMessage =>
      this.fieldsValidationMessages[PriceValueKey]?.isNotEmpty ?? false;
  bool get hasDescriptionValidationMessage =>
      this.fieldsValidationMessages[DescriptionValueKey]?.isNotEmpty ?? false;
  bool get hasRatingValidationMessage =>
      this.fieldsValidationMessages[RatingValueKey]?.isNotEmpty ?? false;
  bool get hasDeliveryCostValidationMessage =>
      this.fieldsValidationMessages[DeliveryCostValueKey]?.isNotEmpty ?? false;
  bool get hasQuantityValidationMessage =>
      this.fieldsValidationMessages[QuantityValueKey]?.isNotEmpty ?? false;
  bool get hasDeliveryTimeValidationMessage =>
      this.fieldsValidationMessages[DeliveryTimeValueKey]?.isNotEmpty ?? false;
  bool get hasCategoryValidationMessage =>
      this.fieldsValidationMessages[CategoryValueKey]?.isNotEmpty ?? false;

  String? get nameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey];
  String? get priceValidationMessage =>
      this.fieldsValidationMessages[PriceValueKey];
  String? get descriptionValidationMessage =>
      this.fieldsValidationMessages[DescriptionValueKey];
  String? get ratingValidationMessage =>
      this.fieldsValidationMessages[RatingValueKey];
  String? get deliveryCostValidationMessage =>
      this.fieldsValidationMessages[DeliveryCostValueKey];
  String? get quantityValidationMessage =>
      this.fieldsValidationMessages[QuantityValueKey];
  String? get deliveryTimeValidationMessage =>
      this.fieldsValidationMessages[DeliveryTimeValueKey];
  String? get categoryValidationMessage =>
      this.fieldsValidationMessages[CategoryValueKey];
}

extension Methods on FormStateHelper {
  setNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NameValueKey] = validationMessage;
  setPriceValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PriceValueKey] = validationMessage;
  setDescriptionValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DescriptionValueKey] = validationMessage;
  setRatingValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[RatingValueKey] = validationMessage;
  setDeliveryCostValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DeliveryCostValueKey] = validationMessage;
  setQuantityValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[QuantityValueKey] = validationMessage;
  setDeliveryTimeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DeliveryTimeValueKey] = validationMessage;
  setCategoryValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CategoryValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    nameValue = '';
    priceValue = '';
    descriptionValue = '';
    ratingValue = '';
    deliveryCostValue = '';
    quantityValue = '';
    deliveryTimeValue = '';
    categoryValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      NameValueKey: getValidationMessage(NameValueKey),
      PriceValueKey: getValidationMessage(PriceValueKey),
      DescriptionValueKey: getValidationMessage(DescriptionValueKey),
      RatingValueKey: getValidationMessage(RatingValueKey),
      DeliveryCostValueKey: getValidationMessage(DeliveryCostValueKey),
      QuantityValueKey: getValidationMessage(QuantityValueKey),
      DeliveryTimeValueKey: getValidationMessage(DeliveryTimeValueKey),
      CategoryValueKey: getValidationMessage(CategoryValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _AddFoodViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _AddFoodViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      NameValueKey: getValidationMessage(NameValueKey),
      PriceValueKey: getValidationMessage(PriceValueKey),
      DescriptionValueKey: getValidationMessage(DescriptionValueKey),
      RatingValueKey: getValidationMessage(RatingValueKey),
      DeliveryCostValueKey: getValidationMessage(DeliveryCostValueKey),
      QuantityValueKey: getValidationMessage(QuantityValueKey),
      DeliveryTimeValueKey: getValidationMessage(DeliveryTimeValueKey),
      CategoryValueKey: getValidationMessage(CategoryValueKey),
    });
