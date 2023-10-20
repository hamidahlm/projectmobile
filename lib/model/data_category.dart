class DataCategory {
  int? id;
  String? image;
  String? kategori;

  DataCategory({this.id, this.image, this.kategori});

  DataCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    kategori = json['kategori'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['kategori'] = this.kategori;
    return data;
  }
}
