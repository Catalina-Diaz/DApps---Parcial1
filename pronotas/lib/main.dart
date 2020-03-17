// paso 1  - importar material
import 'package:flutter/material.dart';

//paso 2 - crear la funcion main
void main() {
// paso 3  -  invocar el metodo run()
  runApp(Myapp());
  print("hola mundo");
}

// paso 4  -  crear la case principal
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  TextEditingController n1 = new TextEditingController();

  TextEditingController n2 = new TextEditingController();

  TextEditingController n3 = new TextEditingController();


  double a,b; 
  double res = 0.00;
  double ope1, ope2, opet;

  @override
  Widget build(BuildContext context) {

    // paso 5  -  retornar el widget principal
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Notas"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[_crearInputs(), _crearButton()],
          ),
        ),
      ),
    ));
  }

  Widget _crearInputs() {
    final campos = Column(
      children: <Widget>[
        TextField(
          controller: n1,
          decoration: InputDecoration(
            hintText: "Digite la nota 1",
            labelText: "Nota 1 - 30%",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0))), keyboardType:TextInputType.number
        ),
        Container(
          height: 10.0,
        //-----------------------------
        ),
        TextField(
          controller: n2,
          decoration: InputDecoration(
              hintText: "Digite la nota 2",
              labelText: "Nota 2 - 30%",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0))), keyboardType:TextInputType.number
        ),
        //-----------------------------------------

        
      ],
    );

    return campos;
  }

  Widget _crearButton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: RaisedButton(
            child: Text("Calcular"),
            onPressed: () {
              print("Tap");

                setState(() {
                  a =  double.parse(n1.text);
                  b =  double.parse(n2.text);

                  ope1= (a*(0.3));
                  ope2= (b*(0.3));
                  res =  (ope1 + ope2);
                  opet= ((res-3)/0.4);
                });     
            },
          ),
        ),
         Text("NOTA FINAL: $opet")
      ], 
    );
  }
}
