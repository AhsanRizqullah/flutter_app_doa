import 'package:flutter/material.dart';
import 'package:flutter_app_doa/public_element.dart';

import 'list_detail.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('List Doa'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.blue.withOpacity(0.2), BlendMode.luminosity),
            image: AssetImage('images/background.jpg'),
          ),
        ),
        child: ListView.builder(
            itemCount: ListDoa.length,
            itemBuilder: (BuildContext context, int index) {
              final title = ListDoa[index].toString();
              // ignore: non_constant_identifier_names
              final DoaArab = ListDoaArab[index].toString();
              // ignore: non_constant_identifier_names
              final DoaArti = ListDoaArti[index].toString();
              return Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Stack(
                        children: <Widget>[
                          backgroundImage(),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  title,
                                  style: bigHeaderTextStyle,
                                ),
                                Container(
                                  height: 2,
                                  width: 300,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 50,)
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detail(
                                      itemTitle: title,
                                      itemArabDoa: DoaArab,
                                      itemArtiDoa: DoaArti,
                                    )));
                      },
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
