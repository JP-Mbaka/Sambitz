import 'package:flutter/material.dart';

AppBar SMtopNavigation(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.menu_rounded,
        ),
        onPressed: () {
          key.currentState!.openDrawer();
        },
      ),
      title: const Text('Sambitz'),
    );
