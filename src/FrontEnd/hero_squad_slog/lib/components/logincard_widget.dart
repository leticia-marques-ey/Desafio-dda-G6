import '../components/email_widget.dart';
import '../components/password_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../heroes_page/heroes_page_widget.dart';
import 'package:flutter/material.dart';


class LogincardWidget extends StatefulWidget {
  const LogincardWidget({Key key}) : super(key: key);

  @override
  _LogincardWidgetState createState() => _LogincardWidgetState();
}

class _LogincardWidgetState extends State<LogincardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(50, 70, 50, 10),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/WhatsApp_Image_2022-03-22_at_12.25.39.jpeg',
                ).image,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ), //logo
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 10),
          child: Text(
            'Welcome Back to  Heroes Squad!',
            style: FlutterFlowTheme.of(context).title2,
          ),
        ),//welcome
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EmailWidget(),
              PasswordWidget(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 15, 50, 5),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: HeroesPageWidget(),
                      ),
                    );
                  },
                  text: 'Login',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFFFFBD59),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 50,
                  ),
                ),
              ),
            ],
          ),
        ),//email-senha-botão
      ],
    );
  }
}
