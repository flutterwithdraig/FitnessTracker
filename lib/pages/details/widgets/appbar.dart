import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const MainAppBar({
    Key? key,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 16,
        ),
      ),
      title: const Text(
        'Activity',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      centerTitle: true,
      actions: [
        TextButton(
          onPressed: () {},
          child: const Icon(
            Icons.notifications,
            size: 16,
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(5),
            maximumSize: const Size(30, 30),
            minimumSize: const Size(30, 30),
            shape: const CircleBorder(),
            primary: const Color(0xffffe6da),
            onPrimary: const Color(0xfffa7a3b),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
