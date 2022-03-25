import 'dart:convert';
import 'package:http/http.dart' as http;

class Hero {
  int Id;
  String nome;
  String poder;
  String universo;

  Hero({
    this.Id,
    this.nome,
    this.poder,
    this.universo
  });

   factory Hero.fromJson(Map<String, dynamic> parsedJson){
      return Hero(
        Id: parsedJson["Id"],
        nome: parsedJson['nome'],
        poder: parsedJson['poder'],
        universo: parsedJson['universo'],
      );
    }
  Map<String, dynamic> toJSON(){
      return <String, dynamic>{
        'Id': Id,
        'nome': nome,
        'poder': poder,
        'universo': universo,
      };
  }
   }

class HerosList {
  List<Hero> _heros =[];

List<Hero> get getHero {
  return [..._heros];
}

Hero findById(Hero newHero){
  _heros.add(
    Hero(
      Id: newHero.Id,
      nome: newHero.nome,
      universo: newHero.universo,
      poder: newHero.poder,
    ),
  );
  return newHero;
}
  void updateHero(Hero newHero, String id) {
    int _index = _heros.indexWhere((hero) => hero.Id == id);
    _heros[_index] = newHero;
  }

  void deleteHero(String id) {
    int _index = _heros.indexWhere((hero) => hero.Id == id);
    _heros.removeAt(_index);
  }


Future<void> fetchHeros() async {
  final url = Uri.https('localHost:5081', 'path/pegarHero/{$Id}');

  try{
    final response = await http.get(url);

    if(response.statusCode == 200){
      final List<Hero> = [];
      final Map<String, dynamic>? extractedData
      = json.decode(response.body) as Map <String, dynamic>;
    }
    }catch (error) {
    throw Exception('Não foi possível carregar heróis');
  }

  Future<void> newHero (var Hero) async{
    final url = Uri.https('localHost:5081', 'path/addhero/{$Id}');
    try{
      Hero = Hero(
      id: Hero["Id"],
      nome:Hero["nome"],
      poder:Hero["poder"],
      universo: Hero["universo"],);

      final response = await http.post(url,
      body: json.encode(Hero.toJSON()));
      if (response.statusCode == 200){
        Hero.Id = json.decode(response.body)["Id"];
        Hero.nome = json.decode(response.body)["nome"];
        Hero.poder = json.decode(response.body)["poder"];
        Hero.universo = json.decode(response.body)["universo"];
        return 'Herói criado com sucesso!';
      }catch (error){
        throw Exception('Não foi possível criar herói. Tente novamente mais tarde.')
    }
    }
  }
}
}

