import 'package:flutter/material.dart';
import 'package:flutter_application_codepur/utils/routes.dart';
import 'package:flutter_application_codepur/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  final int days = 31;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(
        //   color: Colors.black,

        title: Text(
          "Feed",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Text(
              'You have been blessed by the BONK! God Hurrrrrrrrrrrrrray',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                backgroundColor: Colors.yellow,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              "assets/images/bonk.jpg",
              //fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'BONK!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text('Back'),
              style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
