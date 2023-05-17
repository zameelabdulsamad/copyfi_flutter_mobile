import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/presentation/manager/formcubit/formbutton.state.dart';

class FormValidationCubit extends Cubit<FormButtonState> {
  final TextEditingController controller;
  final bool Function(String) validator;

  FormValidationCubit({required this.controller, required this.validator})
      : super(FormButtonState(isButtonEnabled: false)) {
    controller.addListener(_formChanged);
  }

  void _formChanged() {
    emit(FormButtonState(
      isButtonEnabled: validator(controller.text),
    ));
  }


  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}