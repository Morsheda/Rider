import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_rider/pages/notifications.dart';
import 'package:tf_rider/pages/orderdetail.dart';
import 'package:tf_rider/pages/profile.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    Future<List<Widget>> createList() async {
      List<Widget> items = new List<Widget>();
      String dataString =
          await DefaultAssetBundle.of(context).loadString("assets/orders.json");
      List<dynamic> dataJSON = jsonDecode(dataString);

      dataJSON.forEach((object) {
        items.add(InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ODetails(
                          data: object,
                        )));
          },
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 2.0, blurRadius: 5.0),
              ]),
              margin: EdgeInsets.all(5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/Group 355.svg"),
                  ),
                  SizedBox(
                    width: 190,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(object["oid"]),
                          Text(
                            object["resname"],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.black54),
                          ),
                          Text(
                            object["resloc"],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            object["otime"],
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.black54),
                          ),
                          Text(
                            object["price"],
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Items: ${object["items"].toString()}",
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
      });

      return items;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Order List",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            icon: SvgPicture.asset(
              "assets/Icon awesome-user-circle.svg",
              height: 24,
              width: 24,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
            icon: SvgPicture.asset(
              "assets/Icon feather-bell.svg",
              height: 22,
              width: 20,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: <Widget>[
              Container(
                child: FutureBuilder(
                    initialData: <Widget>[Text("")],
                    future: createList(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListView(
                            primary: false,
                            shrinkWrap: true,
                            children: snapshot.data,
                          ),
                        );
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
