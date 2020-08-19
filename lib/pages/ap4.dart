import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_rider/pages/notifications.dart';
import 'package:tf_rider/pages/orders.dart';
import 'package:tf_rider/pages/profile.dart';

class APfour extends StatefulWidget {
  final data;
  APfour({Key key, this.data}) : super(key: key);
  @override
  _APfourState createState() => _APfourState(this.data);
}

class _APfourState extends State<APfour> {
  var data;
  _APfourState(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Arrived at Client",
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
                  margin: EdgeInsets.all(5.0),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlatButton(
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 30),
                          child: Text(
                            'Cancel Order',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          textColor: Colors.white,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0))),
                      SizedBox(
                        width: 20,
                      ),
                      FlatButton(
                          onPressed: () {
                            orderConfirmation(context);
                          },
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 30),
                          child: Text(
                            'Done',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          textColor: Colors.white,
                          color: Colors.yellow[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0))),
                    ],
                  ),
                ),
              ]))),
    );
  }
}

orderConfirmation(context) {
  var screenSize = MediaQuery.of(context).size;
  var height = screenSize.height;
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    transitionDuration: Duration(milliseconds: 600),
    barrierLabel: MaterialLocalizations.of(context).dialogLabel,
    barrierColor: Colors.black.withOpacity(0.5),
    pageBuilder: (context, _, __) {
      return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 3.0),
                ],
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        verticalDirection: VerticalDirection.down,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.check_circle,
                              color: Colors.amber, size: height / 5),
                          Text(
                            "Thank you for your successful delivery",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "You can now take a new order \n \t if you want",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          ButtonTheme(
                            height: 50.0,
                            minWidth: 100.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Colors.amber,
                              ),
                            ),
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(horizontal: 60),
                              elevation: 5.0,
                              hoverColor: Colors.green,
                              color: Colors.amber,
                              child: Text(
                                "Back To New Order",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Orders()),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ButtonTheme(
                            height: 50.0,
                            minWidth: 100.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(horizontal: 60),
                              elevation: 5.0,
                              hoverColor: Colors.green,
                              color: Colors.black45,
                              child: Text(
                                "Go Offline",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCirc,
        ).drive(Tween<Offset>(
          begin: Offset(0, 2),
          end: Offset(0, .4),
        )),
        child: child,
      );
    },
  );
}
