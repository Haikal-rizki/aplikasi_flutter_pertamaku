// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer';

import 'package:flutter/material.dart';

// Press the Navigation Drawer button to the left of AppBar to show
// a simple Drawer with two items.
class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var localization = GalleryLocalizations.of(context)!;
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(
        'KELOMPOK 4',
      ),
      accountEmail: Text(
        ' rizkihaikal741@gmail.com',
      ),
      currentAccountPicture: const CircleAvatar(
        child: FlutterLogo(size: 42.0),
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: Text(
            'Form Produk',
          ),
          leading: const Icon(Icons.favorite),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            'Detail Produk',
          ),
          leading: const Icon(Icons.comment),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[50],
        title: Text(
          'HALAMAN UTAMA',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('PRODUK BERHASIL DITAMPILKAN'),
              // action: SnackBarAction(
              //   //label: localizations.demoSnackbarsActionButtonLabel,
              //   onPressed: () {
              //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
              //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //         content: Text(
              //       'localizations.demoSnackbarsAction',
              //     )));
              //   },
              // ),
            ));
          },
          child: Text('TAMPILKAN PRODUK'),
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
