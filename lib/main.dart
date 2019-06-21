import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _tecnica = "TECNICA";
  List<String> tecnicas = List();
  var numRandom = Random();

  void preencheLista(){
    tecnicas.add("Nage-waza  Osoto-Gari");
    tecnicas.add("Nage-waza  Osoto-Guruma");
    tecnicas.add("Nage-waza  Ouchi-Gari");
    tecnicas.add("Nage-waza  Uki-Goshi");
    tecnicas.add("Nage-waza  Koshi-Guruma");
    tecnicas.add("Nage-waza  Ippon-Seoi-Nage");
    tecnicas.add("Nage-waza  O-goshi");
    tecnicas.add("Nage-waza  Kouchi-Gari");
    tecnicas.add("Nage-waza  Deashi-Harai");
    tecnicas.add("Nage-waza  Sasae-tsuikomi-ashi");
    tecnicas.add("Nage-waza  Seoi-Nage");
    tecnicas.add("Nage-waza  Hiza-Guruma");
    tecnicas.add("Nage-waza  Kosoto-Gari");
    tecnicas.add("Nage-waza  Okuri-Ashi-Harai");
    tecnicas.add("Nage-waza  Tani-Otoshi");
    tecnicas.add("Osaekomi-waza Hon-Kesa-Gatame");
    tecnicas.add("Osaekomi-waza Yoko-Shiho-Gatame");
    tecnicas.add("Osaekomi-waza Kami-Shiho-Gatame");
    tecnicas.add("Osaekomi-waza Kata-Gatame");
    tecnicas.add("Osaekomi-waza Ushiro-Kesa-Gatame");
    tecnicas.add("Osaekomi-waza Kuzure-Kesa-Gatame");
    tecnicas.add("Osaekomi-waza Makura-Kesa-Gatame");
    tecnicas.add("Osaekomi-waza Tate-Shiho-Gatame");
    tecnicas.add("Renraku-waza Osoto-Gari Osoto-Gurama");
    tecnicas.add("Renraku-waza Ouchi-Gari Kouchi-Gari");
    tecnicas.add("Renraku-waza Seoi-Nage Ouchi-Gari");
    tecnicas.add("Renraku-waza Sasae-tsuikomi-ashi Osoto-Gari");
    tecnicas.add("Renraku-waza Seoi-Nage Kouchi-Gari");
    tecnicas.add("Renraku-waza Osoto-Gari Osoto-Otoshi");
    tecnicas.add("Renraku-waza Deashi-Harai + Osoto-Gari");
    tecnicas.add("Kaeshi-waza Osoto-Gari Osoto-Gaeshi");
    tecnicas.add("Kaeshi-waza Uki-Goshi Koshi-Guruma");
    tecnicas.add("Kaeshi-waza Daeshi-Harai Tsubame-Gaeshi");
    tecnicas.add("Kaeshi-waza Sasae-tsuikomi-ashi Ouchi-Gari");
    tecnicas.add("Kaeshi-waza Koshi-Guruma Tani-Otoshi");
    tecnicas.add("Shime-waza Nani-Juji-Jime");
    tecnicas.add("Shime-waza Kata-Juji-Jime");
    tecnicas.add("Shime-waza Gyaku-Juji-Jime");
    tecnicas.add("Shime-waza Hadaka-Jime");
    tecnicas.add("Ude-Garami I ");
    tecnicas.add("Ude-Garami II ");
    tecnicas.add("Ude-Hishigi-Juji-Gatame");

  }


  void sorteiaTecnica() {
    int n = numRandom.nextInt(tecnicas.length);
    setState(() {
      if(tecnicas[0] == null){
        _tecnica = "Todas as tecnicas foram execultadas.";
      }else {
        _tecnica = tecnicas[n];
        tecnicas.removeAt(n);
      }
    });

  }

  void resete() {
    setState(() {
      _tecnica = "TECNICA";
    });
    tecnicas.removeRange(0, tecnicas.length);
    preencheLista();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exame de faixa"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: resete,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
             _tecnica,
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sorteiaTecnica,
        tooltip: "Próxima Tecnica",
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
