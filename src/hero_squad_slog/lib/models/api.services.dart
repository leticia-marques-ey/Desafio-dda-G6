 // import 'package:http/http.dart' as http;
 // import 'heroes.dart';
 // import 'dart:async';
 // import 'dart:convert';
 // import 'dart:developer';
 // import 'package:intl/intl.dart';
 // import 'package:flutter/material.dart';
 //
 // class HeroItem {
 //   int id_hero = 0;
 //   final String nome;
 //   final String poder;
 //   final String universo;
 //   //String dt_cad = DateFormat('dd-MM-yyyy').format(DateTime.now());
 //
 //   HeroItem({
 //     this.id_hero = 0,
 //     required this.nome,
 //     required this.poder,
 //     required this.universo,
 // });
 //
 //  factory HeroItem.fromJson(Map<String, dynamic> parsedJson){
 //     return HeroItem(
 //       id_hero: parsedJson['id_Hero'],
 //       nome: parsedJson['nome'],
 //       poder: parsedJson['poder'],
 //       universo: parsedJson['universo'],
 //     );
 //   }
 // Map<String, dynamic> toJSON(){
 //     return <String, dynamic>{
 //       'Id_Hero': id_hero,
 //       'nome': nome,
 //       'poder': poder,
 //       'universo': universo,
 //     };
 // }
 //  }
 //
 //  class HeroItems{
 //   List<HeroItem> _hero = List.empty(growable: true);
 //   late int id_hero;
 //
 //   set id_hero(int idHero){
 //      _id_hero = idHero;
 //   }
 //
 //   List<HeroItem> get hero {
 //    return [..._hero];
 //  }
 //
 //   HeroItem findById(int idHero) {
 //     return _id_hero.firstWhere((element) => element.
 //     id_hero == idHero);
 //   }
 //
 //
 //   Future<void> fetHero () async{
 //     _id_hero = [];
 //     final url = Uri.http('10.0.2.:5081', '/hero_squad/hero/{$id_hero}');
 //
 //     try{
 //       final response = await http.get(url);
 //
 //       if (response.statusCode==200) {
 //         id_hero = List<HeroItem>.from(json.decode(response.body)
 //             .map<HeroItem> ((x)=> HeroItem.fromJson(x)));
 //         _id_hero = _id_hero.reversed.toString();
 //         notifyList
 //
 //
 //       }
 //     }
 //
 //   }
