import 'package:flutter/material.dart';
import '../models/animal.dart';

class AddAnimalPage extends StatefulWidget {
  final Function(Animal) onSave; // Callback untuk menyimpan data hewan

  AddAnimalPage({required this.onSave});

  @override
  _AddAnimalPageState createState() => _AddAnimalPageState();
}

class _AddAnimalPageState extends State<AddAnimalPage> {
  final _speciesController = TextEditingController();
  final _indonesianController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _imageUrlController = TextEditingController();

  void _addAnimal() {
    final animal = Animal(
      speciesName: _speciesController.text,
      indonesianName: _indonesianController.text,
      description: _descriptionController.text,
      imageUrl: _imageUrlController.text, // URL gambar
    );

    widget.onSave(animal); // Menyimpan data hewan ke halaman sebelumnya
    Navigator.pop(context); // Kembali ke halaman daftar hewan
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Hewan Baru')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _speciesController,
              decoration: InputDecoration(labelText: 'Nama Spesies'),
            ),
            TextField(
              controller: _indonesianController,
              decoration: InputDecoration(labelText: 'Nama Indonesia'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Deskripsi'),
            ),
            TextField(
              controller: _imageUrlController,
              decoration: InputDecoration(labelText: 'URL Gambar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addAnimal,
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
