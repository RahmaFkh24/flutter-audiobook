import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        toolbarHeight:85,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "صلواتي",
              style: TextStyle(
                fontSize: 20,color: Colors.white,
              ),
            ),
            //SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.home, size: 50, color: Colors.white),
                SizedBox(width: 55.0),
                Icon(Icons.book, size: 40, color: Colors.white),
                SizedBox(width: 55),
                Icon(Icons.favorite, size: 40, color: Colors.white),
                SizedBox(width: 55.0),
                Icon(Icons.notifications, size: 50, color: Colors.white),
              ],
            ),
          ],
        ),

    bottom: PreferredSize(
    preferredSize: Size.fromHeight(60.0),  // Hauteur de la barre de recherche
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
    decoration: InputDecoration(
    hintText: 'بحث...',
    prefixIcon: Icon(Icons.search),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
    borderSide: BorderSide.none,
    ),
    filled: true,
    fillColor: Colors.white,
    ),
    ),
    ),
    ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Container(
        margin: EdgeInsets.all(10.0),
          width: double.infinity, // Prend toute la largeur possible
          height: 120.0, // Augmentez la hauteur du Container
        decoration: BoxDecoration(
          color: Colors.green.shade200,
          borderRadius: BorderRadius.circular(15.0),

          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: Offset(0, 10),
            ),
          ],
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.mosque, size: 40, color: Colors.white), // Icon de mosquée
              SizedBox(height: 10.0),
              Text(
                'التوقيت الحالي',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),


        ),

            SizedBox(height: 50.0), // Espace entre le titre et le paragraphe
            const Text(
              'paragraphe Syncing files to device sdk gpho ms).',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20.0),
            Icon(Icons.notifications, size: 40, color: Colors.red),
            SizedBox(height: 20.0),
            Container(
              height: 150.0,
              color: Colors.cyan,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Image.network(
                        'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'salut',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 30,
                            ),
                          ),
                          Icon(Icons.notifications, size: 40, color: Colors.greenAccent),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Image.network(
                        'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
