// ignore_for_file: library_private_types_in_public_api

import 'package:aplikasi_flutter_pertamaku/Ui/produk_detail.dart';
import 'package:aplikasi_flutter_pertamaku/Ui/produk_form.dart';
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
