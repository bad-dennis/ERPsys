import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputqtyWidget extends StatefulWidget {
  const InputqtyWidget({Key? key}) : super(key: key);

  @override
  _InputqtyWidgetState createState() => _InputqtyWidgetState();
}

class _InputqtyWidgetState extends State<InputqtyWidget> {
  String? dropDownValue1;
  String? dropDownValue2;
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
          child: FlutterFlowDropDown<String>(
            options: [
              'Kedia 1',
              'Kedia 2',
              'Kedia 4',
              'Kedia 5',
              'Kedia 8',
              'Kedia 10',
              'Kedia 11',
              'Kedia 12',
              'Kedia 13',
              'Kedia 14',
              'Kedia 15'
            ],
            onChanged: (val) => setState(() => dropDownValue1 = val),
            width: 180,
            height: 50,
            textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                  color: Colors.black,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyText1Family),
                ),
            hintText: 'Please select...',
            fillColor: Colors.white,
            elevation: 2,
            borderColor: FlutterFlowTheme.of(context).secondaryText,
            borderWidth: 2,
            borderRadius: 8,
            margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
            hidesUnderline: true,
          ),
        ),
        FlutterFlowDropDown<String>(
          options: <String>[],
          onChanged: (val) => setState(() => dropDownValue2 = val),
          width: 550,
          height: 50,
          textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                color: Colors.black,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyText1Family),
              ),
          hintText: 'Please select...',
          fillColor: Colors.white,
          elevation: 2,
          borderColor: FlutterFlowTheme.of(context).secondaryText,
          borderWidth: 2,
          borderRadius: 8,
          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
          hidesUnderline: true,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
            child: TextFormField(
              controller: textController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Quantity',
                hintStyle: FlutterFlowTheme.of(context).bodyText2,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
              keyboardType: TextInputType.number,
            ),
          ),
        ),
        FFButtonWidget(
          onPressed: () {
            print('Button pressed ...');
          },
          text: 'Add',
          options: FFButtonOptions(
            width: 130,
            height: 50,
            color: FlutterFlowTheme.of(context).primaryColor,
            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                  fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                  color: Colors.white,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).subtitle2Family),
                ),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }
}
