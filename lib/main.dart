import 'package:ecommerce_productoption/card_color.dart';
import 'package:ecommerce_productoption/product_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int active = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final List<List<Color>> colorList = [
            [
              Color.fromRGBO(248, 54, 45, 1),
              Color.fromRGBO(128, 28, 24, 1),
              Color.fromRGBO(124, 27, 23, 1),
            ],

            [
              Color.fromRGBO(161, 45, 248, 1),
              Color.fromRGBO(100, 28, 54, 1),
              Color.fromRGBO(81, 23, 124, 1),
            ],

            [
              Color.fromRGBO(77, 45, 248, 1),
              Color.fromRGBO(54, 32, 173, 1),
              Color.fromRGBO(39, 23, 124, 1),
            ],
            [
              Color.fromRGBO(45, 153, 248, 1),
              Color.fromRGBO(32, 108, 175, 1),
              Color.fromRGBO(23, 77, 124, 1),
            ],
            [
              Color.fromRGBO(248, 228, 45, 1),
              Color.fromRGBO(187, 172, 34, 1),
              Color.fromRGBO(124, 114, 23, 1),
            ],
            [
              Color.fromRGBO(37, 40, 49, 1),
              Color.fromRGBO(37, 40, 49, 1),
              Color.fromRGBO(37, 40, 49, 1),
            ],


    ];

    return Scaffold(
      backgroundColor: Color(0xfffdc054),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(icon: new Image.asset('assets/Hamburger-menu.png'), onPressed: null),
        actions: <Widget>[
          IconButton(
            icon: new Image.asset('assets/Search.png',), onPressed: null,
          )
        ],
        title: Text(
          'Headphones',
          style: const TextStyle(
            color: Color(0xFF202020),
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat',
            fontSize: 18.0
          ),
        ),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 16.0,
                      child: Image.asset('assets/headphones.png'),
                      height: 200,
                      width: 200,
                    ),
                    Positioned(
                      right: -10.0,
                      child: Container(
                        height: 180,
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                              child: Text(
                                'Boat Rockerz 350 On-Ear Bluetooth Headphones',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0, 3),
                                        blurRadius: 6
                                    )
                                  ]
                                ),

                              ),
                            ),

                            InkWell(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                width: MediaQuery.of(context).size.width/ 2.5,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(236, 60, 3, 1),
                                        Color.fromRGBO(234, 60, 3, 1),
                                        Color.fromRGBO(216, 78, 16, 1),

                                      ],
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.16),
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0,

                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)
                                  ),

                                ),
                                child: Center(
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            InkWell(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                width: MediaQuery.of(context).size.width/ 2.5,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(236, 60, 3, 1),
                                          Color.fromRGBO(234, 60, 3, 1),
                                          Color.fromRGBO(216, 78, 16, 1),

                                        ],
                                        begin: FractionalOffset.topCenter,
                                        end: FractionalOffset.bottomCenter
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.16),
                                        offset: Offset(0, 5),
                                        blurRadius: 10.0,

                                      )
                                    ],
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)
                                  ),

                                ),
                                child: Center(
                                  child: Text(
                                      'Add to cart',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),

                      ),
                    )

                  ],

                ),
              ),

              // Description
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Nec nam aliquam sem et tortor consequat id porta nibh. Orci porta non pulvinar ',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color.fromRGBO(255, 255, 255, 0.6)
                  ),
                ),
              ),

              // Colors List Selection
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: SizedBox(
                  height: 82,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Color',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 11,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 3),
                                  blurRadius: 6
                              )
                            ]
                          ),

                        ),
                      ),

                      Container(
                        height: 50,

                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: colorList.length,
                          itemBuilder: (_, index) => InkWell(
                            onTap: () {
                              setState(() {
                                active = index;
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 8.0,
                                ),
                              child: Transform.scale(
                                  scale: active == index ? 1.2 : 1,
                                  child: CardColor(
                                    colorList[index],
                                  ),
                              ),
                            ),

                          )

                          ,
                        ),
                      )

                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 8),
                    child: Text(
                      'More Product',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.white, shadows: [BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 6
                      )]),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 235,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ProductCard('assets/headphones_3.png'),
                          ProductCard('assets/headphones_4.png'),
                          ProductCard('assets/headphones.png')
                        ],
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
