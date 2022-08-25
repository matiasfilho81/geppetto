import 'package:flutter/material.dart';
import 'package:geppetto/utils/app_responsive/app_responsive_ext.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

static const vermenho = Colors.redAccent;
static const azul = Colors.blueAccent;
static const amarelo = Colors.yellowAccent;
static const verde = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: coluna(),
    );
  }

  Column coluna() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        linha(azul, amarelo, vermenho),
        linha(verde, amarelo, vermenho),
        linha(azul, verde, vermenho),
      ],
    );
  }

  Row linha(Color a, Color b, Color c) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        bloco(100, 100, a),
        bloco(100, 100, b),
        bloco(100, 100, c),
      ],
    );
  }

  Widget bloco(double w, double h, Color cor) {
    return Container(
      color: Colors.black,
      child: Container(
        margin:  const  EdgeInsets.all(6.0),
        width: w,
        height: h,
        color: cor,
        child: const Center(child: Text("OI")),
      ),
    );
  }
}
