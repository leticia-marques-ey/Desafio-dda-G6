import 'package:flutter/material.dart';


class Power extends StatelessWidget {
  const Power({
    Key key,
    @required this.textController2,
  }) : super(key: key);

  final TextEditingController textController2;


@override
Widget build(BuildContext context) {
  return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
        child: TextFormField(
          controller: textController2,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Poder',
            labelStyle: TextStyle(
              color: Color(0xFF95A1AC),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            hintText: 'Poder',
            hintStyle: TextStyle(
              fontFamily: 'Lexend Deca',
              color: Color(0xFF95A1AC),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFDBE2E7),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFDBE2E7),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
          ),
        ),
      );

  }
}



