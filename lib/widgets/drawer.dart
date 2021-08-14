import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_codepur/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://pbs.twimg.com/profile_images/1403662347617505282/LN-uakvJ_400x400.jpg";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(
              color: Colors.black,
              child: Column(
                //margin: EdgeInsets.zero,
                //decoration: BoxDecoration(
                //color: Colors.black,
                //),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(imageUrl),
                        ),
                      ],
                    ),
                  ),
                  //accountName:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Punit Palial",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "punit.palial@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.black,
            ),
            title: Text(
              "Email me",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
