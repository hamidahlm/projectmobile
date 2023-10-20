class DataFavorite {
  int? id;
  String? image;
  String? judul;
  String? rating;

  DataFavorite({this.id, this.image, this.judul, this.rating});

  DataFavorite.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    judul = json['judul'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['judul'] = this.judul;
    data['rating'] = this.rating;
    return data;
  }
}
