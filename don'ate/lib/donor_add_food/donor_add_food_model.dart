import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonorAddFoodModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsController;
  // State field(s) for restaurant_name widget.
  TextEditingController? restaurantNameController;
  String? Function(BuildContext, String?)? restaurantNameControllerValidator;
  // State field(s) for MealAvailable widget.
  TextEditingController? mealAvailableController;
  String? Function(BuildContext, String?)? mealAvailableControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for Speacialinstruction widget.
  TextEditingController? speacialinstructionController;
  String? Function(BuildContext, String?)?
      speacialinstructionControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for city widget.
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    restaurantNameController?.dispose();
    mealAvailableController?.dispose();
    speacialinstructionController?.dispose();
    addressController?.dispose();
    cityController?.dispose();
  }

  /// Additional helper methods are added here.

}
