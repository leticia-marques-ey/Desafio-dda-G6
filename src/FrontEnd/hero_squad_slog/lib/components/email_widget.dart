// ignore_for_file: unused_import

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailWidget extends StatefulWidget {
  const EmailWidget({Key key}) : super(key: key);

  @override
  _EmailWidgetState createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
      child: TextFormField(
        controller: textController,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Enter email',
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
        ),
        style: FlutterFlowTheme.of(context).bodyText1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
