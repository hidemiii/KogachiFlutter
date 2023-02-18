import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width < 600
          ? MediaQuery.of(context).size.width / 2
          : MediaQuery.of(context).size.width / 3,
      child: Container(
        child: Drawer(
          backgroundColor: Colors.grey[400],
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              Container(
                color: Colors.white,
                child: ListTile(
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                  ),
                  title: const Text('Dashboard'),
                  onTap: () {
                    Navigator.pushNamed(context, "/second");
                  },
                ),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                  ),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.pushNamed(context, "/third");
                  },
                ),
              ),
              Container(
                color: Colors.white,
                child: ListTile(
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                  ),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.pushNamed(context, "/fourth");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
