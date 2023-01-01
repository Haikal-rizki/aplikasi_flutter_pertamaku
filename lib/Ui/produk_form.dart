import 'package:aplikasi_flutter_pertamaku/Ui/produk_detail.dart';
import 'package:aplikasi_flutter_pertamaku/Ui/produk_page.dart';
import 'package:aplikasi_flutter_pertamaku/main.dart';
import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxHargaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaProdukTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String kodeProduk = _kodeProdukTextboxController.text;
          String namaProduk = _namaProdukTextboxController.text;
          int harga = int.parse(_hargaProdukTextboxController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => ProdukDetail(
                    kodeProduk: kodeProduk,
                    namaProduk: namaProduk,
                    harga: harga,
                  ))));
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Produk Berhasil Disimpan."),
            action: SnackBarAction(
              label: "CANCEL",
              onPressed: () {
                print("Tidak Jadi Disimpan");
              },
            ),
          ));
        },
        child: const Text('Simpan'));
  }
}
