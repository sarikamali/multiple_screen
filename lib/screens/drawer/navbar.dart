import 'package:flutter/material.dart';
import 'package:flutter_simple/screens/drawer/favorites.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Flutter.com'),
            accountEmail: Text('exmple@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage(
                    "assets/images/girl.jpeg",
                  ),
                  width: 70,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/nature.jpeg"),
                  fit: BoxFit.cover),
            ),
          ),

          //  Rowwww
          // const ListTile(
          //   leading: CircleAvatar(),
          //   title: Text('Profile'),
          //   subtitle: Text('sara'),
          //   trailing: Icon(
          //     Icons.arrow_forward_ios_rounded,
          //     size: 18,
          //   ),

          //Simple Drawer
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorites'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoritesScreen(),
                  ));
            },
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ),
          const ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ),
          const ListTile(
            leading: Icon(Icons.notification_important_rounded),
            title: Text('Request'),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ),
          const ListTile(
            leading: Icon(Icons.file_copy),
            title: Text('Policies'),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ),
          const SizedBox(
            height: 30,
          ),

          // ListTile(
          //   leading: Icon(Icons.arrow_back_ios_new, size: 18),
          //   title: Text('Favorite'),
          //   trailing: Icon(Icons.favorite),
          // ),

          // ListTile(
          //   leading: Icon(Icons.arrow_back_ios_new, size: 18),
          //   title: Text('Home'),
          //   trailing: Icon(Icons.home),
          // ),

          // ListTile(
          //   leading: Icon(Icons.arrow_back_ios_new, size: 18),
          //   title: Text('Settings'),
          //   trailing: Icon(Icons.settings),
          // ),

          // ListTile(
          //   leading: Icon(Icons.arrow_back_ios_new, size: 18),
          //   title: Text('Share'),
          //   trailing: Icon(Icons.share),
          // ),

          // Divider(),

          // ListTile(
          //   leading: Icon(Icons.arrow_back_ios_new, size: 18),
          //   title: Text('Profile'),
          //   trailing: Icon(Icons.person),
          // ),
          // Divider(),

          // ListTile(
          //   leading: Icon(Icons.arrow_back_ios_new, size: 18),
          //   title: Text('Exit'),
          //   trailing: Icon(Icons.exit_to_app),
          // ),
        ],
      ),
    );
  }
}
