import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'role_choose_page_model.dart';
export 'role_choose_page_model.dart';

class RoleChoosePageWidget extends StatefulWidget {
  const RoleChoosePageWidget({Key? key}) : super(key: key);

  @override
  _RoleChoosePageWidgetState createState() => _RoleChoosePageWidgetState();
}

class _RoleChoosePageWidgetState extends State<RoleChoosePageWidget> {
  late RoleChoosePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoleChoosePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 2.0,
                    sigmaY: 2.0,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Image.asset(
                          'assets/images/How_Many_Fun_Fall_Activities_Can_You_Cross_Off_This_Bucket_List_.jpg',
                          width: 423.3,
                          height: 845.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 441.4,
                        height: 868.2,
                        decoration: BoxDecoration(
                          color: Color(0x720A0808),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, -0.09),
                child: FFButtonWidget(
                  onPressed: () async {
                    final usersUpdateData = createUsersRecordData(
                      type: 'DONOR',
                    );
                    await currentUserReference!.update(usersUpdateData);

                    context.pushNamed('restaurant_signup_page');
                  },
                  text: 'Donor',
                  options: FFButtonOptions(
                    width: 180.0,
                    height: 45.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0x530A0808),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, -0.29),
                child: FFButtonWidget(
                  onPressed: () async {
                    final usersUpdateData = createUsersRecordData(
                      type: 'NGO',
                    );
                    await currentUserReference!.update(usersUpdateData);

                    context.goNamed('ngo_signup_page');
                  },
                  text: 'NGO',
                  options: FFButtonOptions(
                    width: 180.0,
                    height: 45.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0x530A0808),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.03, 0.11),
                child: FFButtonWidget(
                  onPressed: () async {
                    final usersUpdateData = createUsersRecordData(
                      type: 'VOLUNTEER',
                    );
                    await currentUserReference!.update(usersUpdateData);

                    context.goNamed('Homepage');
                  },
                  text: 'Volunteer',
                  options: FFButtonOptions(
                    width: 180.0,
                    height: 45.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0x530A0808),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, -0.58),
                child: Text(
                  'Select your Role!',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFFFFBA66),
                        fontSize: 45.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
