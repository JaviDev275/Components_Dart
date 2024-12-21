import 'package:flutter/material.dart';
import 'package:components/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

      body: _list(),
    );
  }
  
  Widget _list() {
    
    return FutureBuilder(
      future: menuProvider.cargarData(), 
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){

        return ListView(
          children: _listItem(snapshot.data ?? []),
        );

      } ,
      );
  }
  
  List<Widget> _listItem(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach ((opt) {

      final widgetTemp = ListTile(
      
        title: Text(opt['texto']),
        leading:Icon(Icons.add_circle_outline_sharp),
        trailing: Icon( Icons.keyboard_arrow_down_outlined),
        onTap: (){},
      );

      opciones..add(widgetTemp)
              ..add(Divider());
  });
  return opciones;
  }
}