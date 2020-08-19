import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_rider/pages/welcome.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool vals = true;
  String msgs = "Available";
  bool valn = true;
  String msgn = "On";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: Column(
            children: <Widget>[
              Center(
                child: SvgPicture.asset(
                  "assets/profile.svg",
                  height: 140,
                  width: 140,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Center(
                  child: Text(
                "User Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              )),
              SizedBox(
                height: 8.0,
              ),
              Center(
                  child: Text(
                "+88 018xxxxxxxx",
                style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 20.0),
              )),
              SizedBox(
                height: 22.0,
              ),
              SvgPicture.asset(
                "assets/Path 73.svg",
                width: 380,
              ),
              SizedBox(
                height: 12.0,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(fontSize: 18),
                            ),
                            new Text(
                              msgs,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Switch(
                        value: vals,
                        onChanged: (bool e) => toglS(e),
                        activeColor: Colors.teal[400],
                        inactiveTrackColor: Colors.grey[400],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Notification",
                              style: TextStyle(fontSize: 18),
                            ),
                            new Text(
                              msgn,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Switch(
                        value: valn,
                        onChanged: (bool e) => toglN(e),
                        activeColor: Colors.teal[400],
                        inactiveTrackColor: Colors.grey[400],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              SvgPicture.asset(
                "assets/Path 73.svg",
                width: 380,
              ),
              SizedBox(
                height: 15.0,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/Icon material-history.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Order history",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SvgPicture.asset(
                "assets/Path 73.svg",
                width: 380,
              ),
              SizedBox(
                height: 18.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Path 68.svg",
                    height: 21,
                    width: 21,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Bike No.",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.edit),
                  )
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Group 318.svg",
                    height: 18,
                    width: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "License Number",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.edit),
                  )
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Group 319.svg",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "National Id",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.edit),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              SvgPicture.asset(
                "assets/Path 73.svg",
                width: 380,
              ),
              SizedBox(
                height: 18.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Icon ionic-ios-mail.svg",
                    height: 18,
                    width: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.edit),
                  )
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 27,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Address",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.edit),
                  )
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              SvgPicture.asset(
                "assets/Path 73.svg",
                width: 380,
              ),
              SizedBox(
                height: 18.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Welcome()));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/Icon open-account-logout.svg",
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Log out",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toglS(bool e) {
    setState(() {
      if (e) {
        msgs = "Available";
        vals = true;
      } else {
        msgs = "Unavailable";
        vals = false;
      }
    });
  }

  void toglN(bool e) {
    setState(() {
      if (e) {
        msgn = "On";
        valn = true;
      } else {
        msgn = "Off";
        valn = false;
      }
    });
  }
}
