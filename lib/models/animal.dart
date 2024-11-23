class Animal {
  String speciesName; // Nama spesies
  String indonesianName; // Nama Indonesia
  String description; // Deskripsi hewan
  String imageUrl; // URL atau path gambar hewan

  Animal({
    required this.speciesName,
    required this.indonesianName,
    required this.description,
    required this.imageUrl,
  });

  // Convert to JSON (untuk penggunaan di dalam aplikasi atau jika dibutuhkan untuk serialisasi)
  Map<String, dynamic> toJson() {
    return {
      'speciesName': speciesName,
      'indonesianName': indonesianName,
      'description': description,
      'imageUrl': imageUrl,
    };
  }

  // Convert from JSON (berguna jika menggunakan database atau API)
  factory Animal.fromJson(Map<String, dynamic> json) {
    return Animal(
      speciesName: json['speciesName'],
      indonesianName: json['indonesianName'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }
}
    