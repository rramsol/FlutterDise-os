import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Imagen top
            _crearImagenTop(),
            //titulo con subtitulo estrella y calificacion
            _crearTiTulo(),
            //crear acciones para llamar route y compartir
            _crearAcciones(),
            //parrafo para ver la descripcion de la fotos o del lugar
            _crearDescripccion(),
            _crearDescripccion(),
            _crearDescripccion(),
            _crearDescripccion(),
          ],
        ),
      ),
    );
  }

  _crearImagenTop() {
   return SafeArea(
     child: Image(
        image: NetworkImage('https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine.jpg'),
      ),
   );
  }

  _crearTiTulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lago hermoso', style: estiloTitulo,),
                SizedBox(height: 7.0, ),
                Text('Un lago En Guate',style: estiloSubTitulo,),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red,size: 30.0,),
          Text('41')
        ],
      ),
    );
  }

  _accionParaCrearAcciones(IconData icon ,String text) {
    return Column(
      children: [
        Icon(icon,color: Colors.blue,size: 30.0,),
        SizedBox(height: 7.0,),
        Text(text),
      ],
    );
  }

  _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accionParaCrearAcciones(Icons.call,'CALL'),
        _accionParaCrearAcciones(Icons.adjust,"ROUTE"),
        _accionParaCrearAcciones(Icons.share, "SHARE")
      ],
    );
  }

  _crearDescripccion() {
    return Container(
      padding: EdgeInsets.only(left: 30.0, top: 20.0,right: 30.0),
      child: Text(
        'Cur tata ridetis? When the particle views for astral city, all suns transfer apocalyptic, united hurCur tata ridetis? When the particle views for astral city, all suns transfer apocalyptic, united hurCur tata ridetis? When the particle views for astral city, all suns transfer apocalyptic, united hur',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 18.0
        ),
      ),
    );
  }




}
