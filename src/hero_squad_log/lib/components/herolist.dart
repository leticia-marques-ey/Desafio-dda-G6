// import 'package:flutter/material.dart';
// import 'package:hero_squad/models/heroes.dart';
//
// import '../components/hero_card_widget.dart';
// import '../flutter_flow/flutter_flow_icon_button.dart';
// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import 'package:easy_debounce/easy_debounce.dart';
// import 'package:flutter/material.dart';
//
// class HeroList extends StatefulWidget {
//   // const HeroList({Key? key}) : super(key: key);
//   @override
//   State<HeroList> createState() => _HeroListState();
// }
//
// class _HeroListState extends State<HeroList> {
//
//   List<Heroes> Heroes = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: Heroes.length,
//         itemBuilder: (context,)
//
//     );
//   }
// }
//
//
//
//
// class HeroesPageWidget extends StatefulWidget {
//   const HeroesPageWidget({Key key}) : super(key: key);
//   @override
//   _HeroesPageWidgetState createState() => _HeroesPageWidgetState();
// }
//
// class _HeroesPageWidgetState extends State<HeroesPageWidget> {
//   TextEditingController searchFieldController;
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     searchFieldController = TextEditingController();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: Color(0xFF006DCB),
//         automaticallyImplyLeading: false,
//         leading: FlutterFlowIconButton(
//           borderColor: Colors.transparent,
//           borderRadius: 30,
//           borderWidth: 1,
//           buttonSize: 60,
//           icon: Icon(
//             Icons.arrow_back,
//             color: Color(0xFFEFF2F3),
//             size: 30,
//           ),
//           onPressed: () async {
//             await Navigator.push(
//               context,
//               PageTransition(
//                 type: PageTransitionType.rightToLeft,
//                 duration: Duration(milliseconds: 300),
//                 reverseDuration: Duration(milliseconds: 300),
//                 child: HomePageWidget(),
//               ),
//             );
//           },
//         ),
//         title: Text(
//           'Base dos Heróis',
//           style: FlutterFlowTheme.of(context).title1,
//         ),
//         actions: [],
//         centerTitle: false,
//         elevation: 2,
//       ),
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             // Row(
//             //   mainAxisSize: MainAxisSize.max,
//             //   children: [
//             //     Material(
//             //       color: Colors.transparent,
//             //       elevation: 3,
//             //       child: Container(
//             //         width: MediaQuery.of(context).size.width,
//             //         height: 60,
//             //         decoration: BoxDecoration(
//             //           color: Colors.white,
//             //         ),
//             //         child: Padding(
//             //           padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
//             //           child: TextFormField(
//             //             onChanged: (_) => EasyDebounce.debounce(
//             //               'searchFieldController',
//             //               Duration(milliseconds: 2000),
//             //                   () => setState(() {}),
//             //             ),
//             //             controller: searchFieldController,
//             //             obscureText: false,
//             //             decoration: InputDecoration(
//             //               labelText: 'Procurer',
//             //               hintText: 'Search by name, location etc...',
//             //               enabledBorder: OutlineInputBorder(
//             //                 borderSide: BorderSide(
//             //                   color: Color(0xFF262D34),
//             //                   width: 2,
//             //                 ),
//             //                 borderRadius: BorderRadius.circular(8),
//             //               ),
//             //               focusedBorder: OutlineInputBorder(
//             //                 borderSide: BorderSide(
//             //                   color: Color(0xFF262D34),
//             //                   width: 2,
//             //                 ),
//             //                 borderRadius: BorderRadius.circular(8),
//             //               ),
//             //               prefixIcon: Icon(
//             //                 Icons.search_rounded,
//             //                 color: Color(0xFF95A1AC),
//             //               ),
//             //               suffixIcon: searchFieldController.text.isNotEmpty
//             //                   ? InkWell(
//             //                   onTap: () => setState(
//             //                       () => searchFieldController.clear(),
//             //                   ),
//             //                    child: Icon(
//             //                   Icons.clear,
//             //                   color: Color(0x7F757575),
//             //                   size: 22,
//             //                 ),
//             //               )
//             //                   : null,
//             //             ),
//             //             style: FlutterFlowTheme.of(context).bodyText1.override(
//             //               fontFamily: 'Lexend Deca',
//             //               color: Color(0x6695A1AC),
//             //               fontSize: 14,
//             //               fontWeight: FontWeight.normal,
//             //             ),
//             //           ),
//             //         ),
//             //       ),
//             //     ),
//             //   ],
//             // ), //procurar
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 8),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Lista de Heróis',
//                     textAlign: TextAlign.center,
//                     style: FlutterFlowTheme.of(context).subtitle2.override(
//                       fontFamily: 'Poppins',
//                       color: FlutterFlowTheme.of(context).secondaryColor,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ],
//               ),
//             ), //texto lista
//             SingleChildScrollView( //alterar pra listview
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
//                     child: HeroCardWidget(),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
