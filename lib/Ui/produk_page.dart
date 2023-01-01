// ignore_for_file: library_private_types_in_public_api

import 'package:aplikasi_flutter_pertamaku/Ui/produk_detail.dart';
import 'package:aplikasi_flutter_pertamaku/Ui/produk_form.dart';
import 'package:aplikasi_flutter_pertamaku/main.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class produkpage extends StatefulWidget {
  const produkpage({Key? key}) : super(key: key);

  @override
  _produkpageState createState() => _produkpageState();
}

// ignore: camel_case_types
class _produkpageState extends State<produkpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data produk'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProdukForm()));
            },
          )
        ],
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
                builder: (context) => MyApp(),
              ));
            },
            leading: Icon(
              Icons.home,
              size: 35,
            ),
            title: Text(
              "HOME",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
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
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Kulkas'),
              subtitle: Text('2500000'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('tv'),
              subtitle: Text('5000000'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Mesin Cuci'),
              subtitle: Text('1500000'),
            ),
          )
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => ProdukDetail(
                      kodeProduk: kodeProduk,
                      namaProduk: namaProduk,
                      harga: harga,
                    ))));
      },
    );
  }
}
