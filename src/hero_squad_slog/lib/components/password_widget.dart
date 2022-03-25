// ignore_for_file: unused_import

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({Key key}) : super(key: key);

  @override
  _PasswordWidgetState createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  TextEditingController textController;
  bool passwordVisibility;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
      child: TextFormField(
        controller: textController,
        obscureText: !passwordVisibility,
        decoration: InputDecoration(
          labelText: 'PassWord',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          filled: true,
          fillColor: Color(0xFF82BBEE),
          suffixIcon: InkWell(
            onTap: () => setState(
              () => passwordVisibility = !passwordVisibility,
            ),
            child: Icon(
              passwordVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: Color(0xC7F4FBFD),
              size: 22,
            ),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyText1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }
}
