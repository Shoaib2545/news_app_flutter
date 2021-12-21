import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/favourite_page.dart';
import 'package:news_app/screens/user_profile_page.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    _signOut() async {
      await _firebaseAuth.signOut();
    }

    final name = 'Muhammad Shoaib';
    final email = 'md.shoaib2545@gmail.com';
    final urlImage =
        'https://oldnavy.gap.com/webcontent/0011/228/088/cn11228088.jpg';

    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 75, 205, 1),
        child: Container(
          color: Colors.lightBlue,
          child: ListView(
            children: <Widget>[
              buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () {},
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    buildMenuItem(
                      text: 'Profile',
                      icon: Icons.person_off_outlined,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Favourites',
                      icon: Icons.favorite_border,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Workflow',
                      icon: Icons.workspaces_outline,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Updates',
                      icon: Icons.update,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    const SizedBox(height: 24),
                    const Divider(color: Colors.white70),
                    const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'Notifications',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 4),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Logout',
                      icon: Icons.logout_outlined,
                      onClicked: () {
                        _signOut();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),
              const CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const UserProfilePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const FavouritePage(),
        ));
        break;
    }
  }
}
