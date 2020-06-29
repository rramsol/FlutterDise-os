import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _page1(),
          _page2()
        ],
      )
    );
  }

  _page1() {
    return Stack(
     children: [
       _imagenFondoPagina1(),
       _textoPagina1(),
     ],
    );

  }

  _imagenFondoPagina1() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/uno.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  _textoPagina1() {
    final textstyle = TextStyle(fontSize: 45.0,color: Colors.white);
    return SafeArea(
      child: Column(
        children: [
          Text('11°',style: textstyle,),
          Text('Domingo',style: textstyle,),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 70.0,),
        ],
      ),
    );
  }



  _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 40.0),
            child: Text('Bienvenidos',style: TextStyle(color: Colors.white,fontSize: 20.0),),
          ),
          onPressed: (){},
        ),
      ),
    );
  }




}
