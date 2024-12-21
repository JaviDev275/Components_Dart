import 'package:flutter/material.dart';

class HomePageTemp extends StatefulWidget {
  const HomePageTemp({super.key});

  @override
  State<HomePageTemp> createState() => _HomePageTempState();
}

class _HomePageTempState extends State<HomePageTemp> {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco',];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                titleTextStyle: TextStyle(color: Colors.white,fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.transparent,
        elevation:6,
        shadowColor: Colors.black38,
        title:Text("Components Template"),
      ),
      body:ListView(
        children: _createdItemsShort()
      ),
    );
  }

  List<Widget> _createdItems() {

    List<Widget> lista = [];
    for (String opt in opciones) {
      
      final tempWidged = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidged)
            ..add(Divider());
    }


    return lista;
  }

  List<Widget> _createdItemsShort() {
    return opciones.map( (item){
      return Column(
        children: <Widget> [
          ListTile(
            title:Text(item),
            subtitle: Text("Este es un subtitulo"),
            leading: Icon(Icons.access_alarm_outlined),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}