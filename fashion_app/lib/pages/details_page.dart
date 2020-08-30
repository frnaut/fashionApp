import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _cover(context),
          _appbar(),
          Column(
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
              _contentContainer(context),
            ],
          )
        ],
      ),
    );
  }

  Widget _appbar() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        height: 50.0,
        color: Colors.transparent,
        child: Row(
          children: <Widget>[
            Icon(Icons.arrow_back_ios),
            Expanded(child: Container()),
            IconButton(
              icon: Icon(Icons.shopping_basket),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _cover(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.6,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/img2.jpg"), fit: BoxFit.cover)),
    );
  }

  Widget _contentContainer(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      clipBehavior: Clip.antiAlias,
      height: size.height * 0.55,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "DOCE AND GABBANA",
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.attach_money,
                          color: Colors.blue,
                        ),
                        Text(
                          "1,267",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text("Stylish & Colorful Cotton Grown",
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    height: size.height * 0.2,
                    child: SingleChildScrollView(
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            height: 50.0,
            width: size.width,
            color: Colors.black87,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Color",
                  style: TextStyle(color: Colors.grey, fontSize: 20.0),
                ),
                _cicleColor(Colors.red),
                _cicleColor(Colors.pinkAccent),
                _cicleColor(Colors.purple),
                _cicleColor(Colors.orange),
                _cicleColor(Colors.green),
              ],
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.95),
            height: size.height * 0.10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Size: ",
                    style: TextStyle(color: Colors.grey, fontSize: 20.0)),
                DropdownButton(
                  dropdownColor: Colors.white,
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "S",
                      ),
                    ),
                    DropdownMenuItem(
                      child: Text("M"),
                    ),
                    DropdownMenuItem(
                      child: Text("L"),
                    ),
                    DropdownMenuItem(
                      child: Text("XL"),
                    ),
                  ],
                  onChanged: (value) {},
                ),
                Text("Qty: ",
                    style: TextStyle(color: Colors.grey, fontSize: 20.0)),
                DropdownButton(
                  dropdownColor: Colors.white,
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "1",
                      ),
                    ),
                    DropdownMenuItem(
                      child: Text("2"),
                    ),
                    DropdownMenuItem(
                      child: Text("3"),
                    ),
                    DropdownMenuItem(
                      child: Text("4"),
                    ),
                  ],
                  onChanged: (value) {},
                ),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("ADD TO BAG"),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _cicleColor(Color colors) {
    return Container(
      width: 25.0,
      height: 25.0,
      decoration: BoxDecoration(
          color: colors, borderRadius: BorderRadius.circular(100)),
    );
  }
}
