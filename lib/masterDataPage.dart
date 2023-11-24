import 'package:flutter/material.dart';
import 'package:starbhak_mart_remake/addPage.dart';

class MyMasterDataPage extends StatelessWidget {
  MyMasterDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(30),
                  elevation: 15,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MyAddPage();
                        }));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.orange,
                      ),
                      splashRadius: 20),
                ),
                Material(
                  borderRadius: BorderRadius.circular(30),
                  elevation: 15,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person_2_outlined),
                      splashRadius: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Material(
            elevation: 15,
            borderRadius: BorderRadius.circular(20),
            child: Container(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Input Nama Produk",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Material(
            elevation: 15,
            borderRadius: BorderRadius.circular(20),
            child: Container(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Input Harga Produk",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Material(
            elevation: 15,
            borderRadius: BorderRadius.circular(20),
            child: Container(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Input Jenis Produk",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Material(
            elevation: 15,
            borderRadius: BorderRadius.circular(20),
            child: Container(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Input File Image Produk",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue[700]),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
