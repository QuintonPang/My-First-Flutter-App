import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // home: Text('Hello World!'), // specifies what is on home screen
    home: Home(),
  ));
}

// stateless widget updates on hot reload, not just hot restart
class Home extends StatelessWidget { // stateless widget means the state of widget cannot change over time
  @override
  Widget build(BuildContext context) {
    return Scaffold( // scaffold is a wrapper to a few different layouts
      appBar: AppBar(
        title: Text('My First Flutter App'), // title
        centerTitle: true, // center the title
        backgroundColor: Colors.yellow[600], // the number indicates strength
      ),
      // body: Center(  // body
      //   // child: Text(
      //   //   'Hello World!',
      //   //   style:TextStyle(
      //   //     fontSize:20.0,
      //   //     fontWeight: FontWeight.bold,
      //   //     letterSpacing: 2.0,
      //   //     color: Colors.black87,
      //   //     fontFamily: 'DosisLight',
      //   //   ),
      //   // ),
      //   // child: Image(
      //   //   // image: NetworkImage('https://images.app.goo.gl/CWwqc9rn7gthn2TV8'), // online image
      //   //   // image: AssetImage('assets/plant.png'),
      //   // )
      //   // child: Image.asset('assets/plant.png'), // shorthand for offline image
      //   // child: Image.network('https://images.app.goo.gl/CWwqc9rn7gthn2TV8') // shorthand for online image
      //   // child: Icon(
      //   //   Icons.face,
      //   //   color: Colors.limeAccent, // this color has no strength
      //   //   size: 100.0,
      //   // ),
      //   // child: RaisedButton( // button with shadow
      //   //   onPressed:() {},
      //   //   child: Text('Click Me!'),
      //   //   color: Colors.blueAccent,
      //   // ),
      //   // child: FlatButton( // button without shadow
      //   //   onPressed:(){
      //   //     print('You clicked me!');
      //   //   },
      //   //   child:Text('Click me!'),
      //   //   color: Colors.amber[500],
      //   // ),
      // //   child: RaisedButton.icon(
      // //     onPressed:(){},
      // //     icon: Icon(
      // //       Icons.mail,
      // //       color:Colors.white,
      // //     ),
      // //     label: Text('Mail me!'),
      // //     color: Colors.amberAccent,
      // //   )
      //   child:IconButton( // clickable icon
      //     onPressed:(){
      //       print('You clicked the icon!');
      //     },
      //     icon: Icon(Icons.alternate_email),
      //     color:Colors.amberAccent,
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: Text('Click!'),
      //   onPressed: (){}, // compulsory property
      // ),
      // body: Container( // when without child, it takes the whole space available
      //   color:Colors.grey[500],
      //   child: Text('Hello'),
      //   // padding: EdgeInsets.all(20.0), // apply padding in pixels on all edges
      //   // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical:50.0), // takes in parameter of horizontal padding and vertical padding
      //   padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0), // takes in values for padding of each side
      //   margin: EdgeInsets.all(30.0),
      // ),
      // body: Padding( // padding only, margin and color are not allowed
      //   padding:EdgeInsets.all(100.0),
      //   child:Text('Hello World!'),
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly, // justify content
      //   crossAxisAlignment: CrossAxisAlignment.start, // align items
      //   children:<Widget>[
      //     Text("Hello World!"),
      //     FlatButton(
      //         onPressed:(){},
      //         child:Text("A button"),
      //     ),
      //     Container(
      //       color:Colors.grey,
      //       padding: EdgeInsets.all(30.0),
      //       child:Text('Inside Container'),
      //     ),
      //   ], // list of widgets
      // )
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center, // vertically centered
      //   crossAxisAlignment: CrossAxisAlignment.stretch, // horizontally stretched
      //   children: <Widget>[
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children:<Widget>[
      //         Container(
      //           color:Colors.amber,
      //           child:Text('Hello'),
      //           padding: EdgeInsets.all(30.0),
      //         ),
      //         Text('World!'),
      //       ]
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(20.0),
      //       color:Colors.cyan[900], // max value of strength is 900
      //       child:Text('Hello World!'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(50.0),
      //       color:Colors.yellow[900], // max value of strength is 900
      //       child:Text('Hello World!'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(100.0),
      //       color:Colors.red[900], // max value of strength is 900
      //       child:Text('Hello World!'),
      //     ),
      //   ],
      // )
      body:(
        Row(
          children:<Widget>[
            Expanded(
                flex: 2,
                child: Image.asset('assets/plant.png')
            ),
            Expanded( // expanded is same as flex grow
              flex: 4,
              child: Container(
                padding:EdgeInsets.all(20.0),
                color:Colors.amber,
                child:Text("1"),
              ),
            ),
            Expanded(
              flex:2,
              child: Container(
                padding:EdgeInsets.all(30.0),
                color:Colors.pink,
                child:Text("2"),
              ),
            ),
            Expanded(
              flex:1, // default is 1
              child: Container(
                padding:EdgeInsets.all(40.0),
                color:Colors.teal,
                child:Text("3"),
              ),
            ),
          ]
        )
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times!',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
