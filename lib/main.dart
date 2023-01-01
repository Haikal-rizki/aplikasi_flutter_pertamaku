//import 'package:aplikasi_flutter_pertamaku/Ui/produk_form.dart';

import 'package:aplikasi_flutter_pertamaku/Ui/produk_detail.dart';
import 'package:aplikasi_flutter_pertamaku/Ui/produk_form.dart';
import 'package:aplikasi_flutter_pertamaku/Ui/produk_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigatorDrawer(),
    );
  }
}

class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman utama"),
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 150,
            color: Colors.deepPurple,
            alignment: Alignment.bottomLeft,
            child: const Text(
              "MENU PILIHAN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => produkpage(),
              ));
            },
            leading: Icon(
              Icons.home,
              size: 35,
            ),
            title: Text(
              "PRODUK",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => ProdukForm(),
              ));
            },
            leading: Icon(
              Icons.home,
              size: 35,
            ),
            title: Text(
              "TAMBAH PRODUK",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          )
        ]),
      ),
      body: const Center(
        child: Text(
          "SELAMAT DATANG",
          style: TextStyle(
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}
