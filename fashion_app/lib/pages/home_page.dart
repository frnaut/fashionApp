import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navbarIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[],
        ),
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Summer Colletion",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.local_mall),
            onPressed: () {},
          )
        ],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5.0),
            width: size.width * 0.9,
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _horizontalCard(
                    context, "assets/img/cover3.jpg", "35%", "Hot Summer Sale"),
                _horizontalCard(context, "assets/img/cover2.jpg", "50%",
                    "Total Liquidation"),
                _horizontalCard(
                    context, "assets/img/cover1.jpg", "10%", "Only New")
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Table(children: [
              TableRow(children: [
                _verticalCard(context, "assets/img/img1.jpg"),
                _verticalCard(context, "assets/img/img2.jpg")
              ]),
              TableRow(children: [
                _verticalCard(context, "assets/img/img3.jpg"),
                _verticalCard(context, "assets/img/img4.jpg")
              ]),
              // TableRow(children: [
              //   _verticalCard(context, "assets/img/img5.jpg"),
              //   _verticalCard(context, "assets/img/img2.jpg")
              // ]),
              // TableRow(children: [
              //   _verticalCard(context, "assets/img/img1.jpg"),
              //   _verticalCard(context, "assets/img/img3.jpg")
              // ])
            ]),
          )
        ],
      ),
      floatingActionButton: _floatingBotton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _navbar(context),
    );
  }

  Widget _verticalCard(BuildContext context, String img) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("details", arguments: img);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        width: size.width * 0.3,
        height: size.height * 0.35,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
        child: Stack(
          children: <Widget>[
            Image(
              width: double.infinity,
              height: double.infinity,
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
            Column(
              children: <Widget>[
                Expanded(child: Container()),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.75),
                  height: 45.0,
                  child: Text(
                    "Nombre de la ropa",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black.withOpacity(0.75),
              height: 35.0,
              width: 75.0,
              padding: EdgeInsets.all(3),
              child: Row(
                children: <Widget>[
                  Icon(Icons.attach_money, color: Colors.white),
                  Text(
                    "100",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _horizontalCard(
      BuildContext context, String img, String descuento, String text) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.zero,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            width: size.width * 0.95,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                descuento,
                style: TextStyle(fontSize: 75.0, color: Colors.white, shadows: [
                  Shadow(
                      color: Colors.black,
                      blurRadius: 3.0,
                      offset: Offset(0, 2))
                ]),
              ),
              Text(text,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            blurRadius: 3.0,
                            offset: Offset(0, 2))
                      ]))
            ],
          )
        ],
      ),
    );
  }

  Widget _floatingBotton() {
    final colorGradient = LinearGradient(
      colors: [Colors.deepPurpleAccent, Colors.pinkAccent],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), gradient: colorGradient),
      child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          child: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.star_border,
              color: Colors.deepPurpleAccent,
              size: 30.0,
            ),
          ),
          onPressed: () {}),
    );
  }

  Widget _navbar(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.blue,
      currentIndex: navbarIndex,
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
            backgroundColor: Colors.black.withOpacity(0.9)),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text(""),
            backgroundColor: Colors.black.withOpacity(0.9)),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text(""),
            backgroundColor: Colors.black.withOpacity(0.9)),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(""),
            backgroundColor: Colors.black.withOpacity(0.9))
      ],
      onTap: (value) {
        navbarIndex = value;
        setState(() {});
      },
    );
  }
}
