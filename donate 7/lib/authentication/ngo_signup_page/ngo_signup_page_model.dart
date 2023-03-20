import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NgoSignupPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nameoforganisation widget.
  TextEditingController? nameoforganisationController;
  String? Function(BuildContext, String?)?
      nameoforganisationControllerValidator;
  // State field(s) for Contatc widget.
  TextEditingController? contatcController;
  String? Function(BuildContext, String?)? contatcControllerValidator;
  // State field(s) for address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for mission widget.
  TextEditingController? missionController;
  String? Function(BuildContext, String?)? missionControllerValidator;
  // State field(s) for about widget.
  TextEditingController? aboutController;
  String? Function(BuildContext, String?)? aboutControllerValidator;
  // State field(s) for totalpeoplehelped widget.
  TextEditingController? totalpeoplehelpedController;
  String? Function(BuildContext, String?)? totalpeoplehelpedControllerValidator;
  // State field(s) for volunteers widget.
  TextEditingController? volunteersController;
  String? Function(BuildContext, String?)? volunteersControllerValidator;
  // State field(s) for cityname widget.
  TextEditingController? citynameController;
  String? Function(BuildContext, String?)? citynameControllerValidator;
  // State field(s) for ngoid widget.
  TextEditingController? ngoidController;
  String? Function(BuildContext, String?)? ngoidControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameoforganisationController?.dispose();
    contatcController?.dispose();
    addressController?.dispose();
    missionController?.dispose();
    aboutController?.dispose();
    totalpeoplehelpedController?.dispose();
    volunteersController?.dispose();
    citynameController?.dispose();
    ngoidController?.dispose();
  }

  /// Additional helper methods are added here.

}
