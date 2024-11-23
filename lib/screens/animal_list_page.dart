import 'package:flutter/material.dart';
import '../models/animal.dart';
import 'add_animal_page.dart';

class AnimalListPage extends StatefulWidget {
  @override
  _AnimalListPageState createState() => _AnimalListPageState();
}

class _AnimalListPageState extends State<AnimalListPage> {
  List<Animal> animals = []; // Daftar hewan yang disimpan dalam memori

  void _addAnimal(Animal animal) {
    setState(() {
      animals.add(animal); // Menambah data hewan ke dalam list
    });
  }

  void _editAnimal(int index, Animal updatedAnimal) {
    setState(() {
      animals[index] = updatedAnimal; // Memperbarui data hewan yang sudah ada
    });
  }

  void _deleteAnimal(int index) {
    setState(() {
      animals.removeAt(index); // Menghapus data hewan berdasarkan index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Hewan')),
      body: ListView.builder( 
        itemCount: animals.length,
        itemBuilder: (context, index) {
          final animal = animals[index];
          return ListTile(
            title: Text(animal.speciesName),
            subtitle: Text(animal.indonesianName),
            leading: Image.network(animal.imageUrl, width: 50, height: 50),
            onTap: () {
              // Menambahkan aksi untuk navigasi ke halaman edit jika diperlukan
            },
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Navigasi ke halaman edit jika diperlukan
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteAnimal(index), // Menghapus data hewan
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddAnimalPage(onSave: _addAnimal),
            ),
          );
        },
      ),
    );
  }
}
