import 'package:flutter/material.dart';
import 'package:kogachiflutter/leftdrawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return webUI(context);
          } else {
            return mobileUI(BuildContext);
          }
        },
      ),
    );
  }
}

Widget mobileUI(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text("Ateneo De Davao University",
            style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.grey[400],
      ),
      drawer: LeftDrawer(),
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                Center(
                  child: Text("Dashboard"),
                ),
              ],
            ),
          ],
        ),
      ));
}

Widget webUI(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Row(children: [
        LeftDrawer(),
        Center(
          child: Column(
            children: [
              Center(
                child: Text("Dashboard"),
              ),
            ],
          ),
        ),
      ]),
    ),
  );
}
