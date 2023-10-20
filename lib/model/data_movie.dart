class DataMovie {
  int? id;
  String? image;
  String? judul;
  String? genre;
  String? rating;

  DataMovie({this.id, this.image, this.judul, this.genre, this.rating});

  DataMovie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    judul = json['judul'];
    genre = json['genre'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['judul'] = this.judul;
    data['genre'] = this.genre;
    data['rating'] = this.rating;
    return data;
  }
}
