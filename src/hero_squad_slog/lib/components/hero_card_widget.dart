import 'dart:convert';
import '../detail/detail_widget.dart';
import '../edit/edit_widget.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:hero_squad/models/api.services.dart';
import 'package:http/http.dart' as http;


class HeroCardWidget extends StatefulWidget {
  const HeroCardWidget({Key key}) : super(key: key);

  @override
  _HeroCardWidgetState createState() => _HeroCardWidgetState();
}

class _HeroCardWidgetState extends State<HeroCardWidget> {

 void  pegarHeros() async{
    var url = Uri.http( '10.0.2.:5081', '/hero_squad/hero/{id_hero}');
    var response = await http.get(url);
    if(response.statusCode == 200){
      return jsonDecode(utf8.decode(response.bodyBytes));
    }else{
      throw Exception('Erro ao carregar heróis, tente novamente mais tarde');
    }
  }




  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xFF82BBEE),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Color(0x002552E4),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nome', //add var pra pegar do banco
                          style:  TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          'Power', //add var pra pegar do banco
                          style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        Text(
                          'Universe', //add var pra pegar do banco
                          style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
                            child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration: Duration(milliseconds: 300),
                                    child: EditWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(3, 5, 0, 0),
                            child: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                               //Navigator.pop(context, );
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 2, 0),
                        child: FFButtonWidget(
                          text: 'Detalhes',
                          onPressed: (){
                            showModalBottomSheet(context: context, builder:(context) => DetailWidget());
                          },
                          options: FFButtonOptions(
                            width: 120,
                            height: 40,
                            color: Color(0xFFFFBD59),
                            textStyle: GoogleFonts.getFont(
                              'Lexend Deca',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
