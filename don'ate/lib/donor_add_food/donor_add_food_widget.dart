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
import 'donor_add_food_model.dart';
export 'donor_add_food_model.dart';

class DonorAddFoodWidget extends StatefulWidget {
  const DonorAddFoodWidget({Key? key}) : super(key: key);

  @override
  _DonorAddFoodWidgetState createState() => _DonorAddFoodWidgetState();
}

class _DonorAddFoodWidgetState extends State<DonorAddFoodWidget> {
  late DonorAddFoodModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DonorAddFoodModel());

    _model.restaurantNameController ??= TextEditingController();
    _model.mealAvailableController ??= TextEditingController();
    _model.speacialinstructionController ??= TextEditingController();
    _model.addressController ??= TextEditingController();
    _model.cityController ??= TextEditingController();
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFFAA66),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.safePop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        title: Text(
          'Add Food',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Color(0xFF050404),
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 28.0, 0.0),
                        child: Text(
                          'Food Type',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: FlutterFlowChoiceChips(
                          options: [ChipData('VEG'), ChipData('NON VEG')],
                          onChanged: (val) => setState(
                              () => _model.choiceChipsValue = val?.first),
                          selectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            iconColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: Colors.white,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFE3E7ED),
                                    ),
                            iconColor: Color(0xFFE3E7ED),
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          chipSpacing: 20.0,
                          multiselect: false,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsController ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 10.0, 30.0, 10.0),
                            child: TextFormField(
                              controller: _model.restaurantNameController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Restaurant Name',
                                hintText: 'Restaurant Name',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF050404),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              validator: _model
                                  .restaurantNameControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 10.0, 30.0, 10.0),
                            child: TextFormField(
                              controller: _model.mealAvailableController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Meal Available',
                                hintText: 'e.g. Meal Available For 10 people',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF050404),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              validator: _model.mealAvailableControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                31.0, 14.0, 31.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final _datePicked1Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: getCurrentTimestamp,
                                  lastDate: DateTime(2050),
                                );

                                if (_datePicked1Date != null) {
                                  setState(() {
                                    _model.datePicked1 = DateTime(
                                      _datePicked1Date.year,
                                      _datePicked1Date.month,
                                      _datePicked1Date.day,
                                    );
                                  });
                                }
                              },
                              text: 'Food Cook Date',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x720A0808),
                                    ),
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                31.0, 14.0, 31.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final _datePicked2Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: getCurrentTimestamp,
                                  lastDate: DateTime(2050),
                                );

                                if (_datePicked2Date != null) {
                                  setState(() {
                                    _model.datePicked2 = DateTime(
                                      _datePicked2Date.year,
                                      _datePicked2Date.month,
                                      _datePicked2Date.day,
                                    );
                                  });
                                }
                              },
                              text: 'Food Pickup Date',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x720A0808),
                                    ),
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                31.0, 14.0, 31.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final _datePicked3Date = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: getCurrentTimestamp,
                                  lastDate: DateTime(2050),
                                );

                                if (_datePicked3Date != null) {
                                  setState(() {
                                    _model.datePicked3 = DateTime(
                                      _datePicked3Date.year,
                                      _datePicked3Date.month,
                                      _datePicked3Date.day,
                                    );
                                  });
                                }
                              },
                              text: 'Food expiry Date',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x720A0808),
                                    ),
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 10.0, 30.0, 10.0),
                            child: TextFormField(
                              controller: _model.speacialinstructionController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Special instruction',
                                hintText: 'e.g. Pickup Food fast',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF050404),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 0.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              maxLines: null,
                              validator: _model
                                  .speacialinstructionControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 10.0, 30.0, 10.0),
                            child: TextFormField(
                              controller: _model.addressController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Address',
                                hintText: 'e.g. Rajasthan University',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF050404),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 0.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              maxLines: null,
                              validator: _model.addressControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 10.0, 30.0, 10.0),
                            child: TextFormField(
                              controller: _model.cityController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'City',
                                hintText: 'e.g. Jaipur',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF050404),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 0.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              maxLines: null,
                              validator: _model.cityControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final foodResInfoCreateData =
                                    createFoodResInfoRecordData(
                                  restaurantName:
                                      _model.restaurantNameController.text,
                                  mealAvailableFor: int.tryParse(
                                      _model.mealAvailableController.text),
                                  foodType: _model.choiceChipsValue,
                                  pickupTime: _model.datePicked2,
                                  foodCookTime: _model.datePicked1,
                                  foodExpiryTime: _model.datePicked3,
                                  pickupAddress: _model.addressController.text,
                                  specialInfo:
                                      _model.speacialinstructionController.text,
                                  restaurantCity: _model.cityController.text,
                                  resImage: FFAppState().restaurantimage,
                                  user: currentUserReference,
                                );
                                await FoodResInfoRecord.collection
                                    .doc()
                                    .set(foodResInfoCreateData);

                                final usersUpdateData = {
                                  'donations': FieldValue.increment(1),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);

                                context.goNamed('Homepage');
                              },
                              text: 'Add Food',
                              options: FFButtonOptions(
                                width: 280.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFFFAA66),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
