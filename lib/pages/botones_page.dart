import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0,0.6),
          end: FractionalOffset(0.0,1.1),
          colors: [
            Color.fromRGBO(52,54, 101, 1.0),
            Color.fromRGBO(35,37, 57, 1.0),
          ]
        )
      ),
    );

    final cajarosa = Transform.rotate(

      angle: -pi/5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(236,98, 188, 1.0),
                  Color.fromRGBO(241,142, 172, 1.0),
                ]
            )
        ),
      ),
    );


    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100,
            child: cajarosa
        )
      ],
    );


  }

  _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Clasificacion de transaccion ', style:TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('Clasificacion de transaccion, Clasificacion de transaccion  ', style:TextStyle(color: Colors.white, fontSize: 20.0),),
          ],
        ),
      ),
    );
  }

  _bottomNavigationBar(context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
         caption: TextStyle(color: Colors.grey)
        )
      ),
      child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Container()
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart_outlined),
                title: Container()
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                title: Container()
            ),
          ],
        ),
      );


  }

  _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
            children: [
              _crearBotonRedondeado(),
              _crearBotonRedondeado(),
            ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(),
              _crearBotonRedondeado(),
            ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(),
              _crearBotonRedondeado(),
            ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(),
              _crearBotonRedondeado(),
            ]
        )
      ],
    );
  }

  _crearBotonRedondeado() {

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0,sigmaY: 3.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 35.0,
                child: Icon(Icons.swap_calls,color: Colors.white,size: 30.0,),
              ),
              Text('Cosa',style: TextStyle(color: Colors.pinkAccent),),
              SizedBox(height: 5.0,)
            ],
          ),

        ),
      ),
    );
  }

}
