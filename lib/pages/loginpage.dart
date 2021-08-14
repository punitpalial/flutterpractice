import 'package:flutter/material.dart';
import 'package:flutter_application_codepur/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(milliseconds: 420));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.canvasColor,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Front Page",
            style: TextStyle(
              color: context.theme.accentColor,
            ),
          ),
          centerTitle: true,
          shadowColor: context.theme.accentColor,
        ),
        //color: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/newbglesslogo.png",
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Welcome! $name",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: context.theme.accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be empty";
                            }

                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Material(
                          color: context.theme.buttonColor,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                          child: InkWell(
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 400),
                              width: changeButton ? 50 : 150,
                              height: 50,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? Icon(
                                      Icons.lock_open_sharp,
                                      color: context.theme.cardColor,
                                    )
                                  : Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Text(
                                              "Login",
                                              style: TextStyle(
                                                  color:
                                                      context.theme.cardColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ).keepAlive().objectCenter(),
                                          ),
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  //MainAxisAlignment.end,
                                                  Icons.lock,
                                                  color:
                                                      context.theme.cardColor,
                                                ),
                                              ],
                                            ),
                                          ).centered(),
                                        ],
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
