import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({Key? key}) : super(key: key);

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  TextEditingController productnamectl = TextEditingController();
  TextEditingController productpricectl = TextEditingController();
  TextEditingController productdescriptionctl = TextEditingController();
  var image;
  File _file = File("zz");
  Uint8List webImage = Uint8List(10);
  _getphoto() async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      var f = await image.readAsBytes();
      setState(() {
        _file = File("a");
        webImage = f;
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Colors.teal, Colors.white])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Bar Code Generator",
                          style: GoogleFonts.titanOne(fontSize: 25),
                        ),
                      ),
                      const SizedBox(height: 25),
                      TextField(
                        controller: productnamectl,
                        style: GoogleFonts.lato(),
                        decoration: const InputDecoration(
                            hintText: "Product Name",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(height: 25),
                      TextField(
                        style: GoogleFonts.lato(),
                        controller: productpricectl,
                        decoration: const InputDecoration(
                            hintText: "Product Price",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(height: 25),
                      TextField(
                        controller: productdescriptionctl,
                        style: GoogleFonts.lato(),
                        decoration: const InputDecoration(
                            hintText: "Product Description",
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(height: 25),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton(
                            onPressed: _getphoto,
                            child: const Text("Choose Photo")),
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Create Product")),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}