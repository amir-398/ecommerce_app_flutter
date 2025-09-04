import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _go(BuildContext context, String route) {
    // Ferme le drawer puis remplace la route courante pour éviter d'empiler
    Navigator.pop(context);
    final current = ModalRoute.of(context)?.settings.name;
    if (current == route) return;
    Navigator.pushReplacementNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Drawer Header',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(title: const Text('Home'), onTap: () => _go(context, '/')),
          ListTile(
            title: const Text('Second Page'),
            onTap: () => _go(context, '/second'),
          ),
          ListTile(
            title: const Text('Third Page'),
            onTap: () => _go(context, '/third'),
          ),
        ],
      ),
    );
  }
}
