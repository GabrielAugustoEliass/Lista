import 'package:flutter/material.dart';

class AppBarPadrao extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPadrao({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Contatos',
        style: TextStyle(
          color: Color(0xFF550F12),
          fontSize: 22,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10, top: 5, bottom: 5),
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xFF550F12),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/person 5.png'),
              radius: 20,
            ),
          ),
        ),
      ],
      elevation: 1,
      shadowColor: const Color(0xFF550F12),
      backgroundColor: const Color(0xFFFFFFFF),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
