import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String itemTitle;
  final String itemArabDoa;
  final String itemArtiDoa;

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  const Detail({Key key, this.itemTitle, this.itemArabDoa, this.itemArtiDoa})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(itemTitle),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        itemArabDoa,
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        itemArtiDoa,
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
