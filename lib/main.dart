import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paging Employee',
      home: MyHomePage(
          title:'ScaffoldApp'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key, this.title}):super(key:key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  Icon _corazon = Icon(Icons.favorite_border, color: Colors.white);
  bool _liked= false;

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!)),
        actions: [
          IconButton(onPressed: _cambiarIcono, icon: _corazon)
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text(
              'Menú Drawer',
              style: TextStyle(
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.bold
                ),
              )
            ),
            Text('Enlace 1'),
            Text('Enlace 12'),
            Text('Enlace 3')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _cambiarIcono,
        backgroundColor: Colors.red,
        label:  const Text("Botón"),
      ),
    //  bottomNavigationBar: BottomNavigationBar(
    //    items:  [
    //      BottomNavigationBarItem(
    //          icon: Icon(
    //              Icons.home,
    //              color: Colors.white,
    //             ),
    //          label: "Mi centaurs",
    //      ),
    //    ],
    //  ),
    );
  }

  void _cambiarIcono(){
    setState(() {
      if(_liked){
        _corazon = Icon(Icons.favorite_border, color: Colors.red);
        _liked = false;
      }
      else{
        _corazon = Icon(Icons.favorite, color: Colors.white);
        _liked = true;
      }
    });
  }
}



