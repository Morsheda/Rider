import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_rider/pages/ap1.dart';
import 'package:tf_rider/pages/notifications.dart';
import 'package:tf_rider/pages/profile.dart';

class ODetails extends StatefulWidget {
  final data;
  ODetails({Key key, this.data}) : super(key: key);
  @override
  _ODetailsState createState() => _ODetailsState(this.data);
}

class _ODetailsState extends State<ODetails> {
  var data;
  _ODetailsState(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Order Details",
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
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 18,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2.0,
                        blurRadius: 5.0),
                  ]),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/Group 2.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //Text("Order Id #54"),
                            Text(data['oid']),
                            Text(
                              //"Restaurant Name",
                              data['resname'],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black54),
                            ),
                            Text(
                              //"Location",
                              data["resloc"],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black54),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              //"5:30 pm",
                              data["otime"],
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black54),
                            ),
                            Text(
                              //"850 tk",
                              data["price"],
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              //"Items: 3",
                              "Items: ${data["items"].toString()}",
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black54),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/profile.svg",
                      color: Colors.black,
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      "Customer Details",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Name",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/profile.svg",
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Location",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/Group 72.svg",
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "+88 018xxxxxxxx",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/Group 73.svg",
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cash on delivery'),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/Icon map-food.svg",
                      color: Colors.black,
                      height: 21,
                      width: 21,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      "Foods Ordered",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/Group 355.svg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Items Name"),
                              Text(
                                "Restaurant Name",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black54),
                              ),
                              Text(
                                "Location",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black54),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "5:30 pm",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black54),
                              ),
                              Text(
                                "850 tk",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Quantity: 3",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black54),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Summery",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    Text(
                      "758 tk",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tax, Delivery Cost",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    Text(
                      "120 tk",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                SvgPicture.asset(
                  "assets/Path 73.svg",
                  width: 398,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "638 tk",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => APone(
                                  data: data,
                                )),
                      );
                    },
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                    child: Text(
                      'Pickup Confirm',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.yellow[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12.0))),
              ]))),
    );
  }
}
