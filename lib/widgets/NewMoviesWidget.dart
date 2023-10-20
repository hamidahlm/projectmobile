import 'package:flutter/material.dart';
import 'package:projectmobile/model/data_movie.dart';
import 'package:projectmobile/model/datalengkap.dart';

class NewMoviesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataMovie> data =
        data_movie.map((e) => DataMovie.fromJson(e)).toList();
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( // judul bagian
                "New Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 300,
          child: ListView.builder( // menampilkan beberapa film yang terbaru 
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: ClampingScrollPhysics(),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (index == 0) { // menuju halaman detail page
                    Navigator.pushNamed(context, "moviePage");
                  } else if (index == 1) {
                    Navigator.pushNamed(context, "moviePage2");
                  } else if (index == 2) {
                    Navigator.pushNamed(context, "moviePage3");
                  } else if (index == 3) {
                    Navigator.pushNamed(context, "moviePage4");
                  } else if (index == 4) {
                    Navigator.pushNamed(context, "moviePage5");
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF292B37).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset( // menampilkan gambar dari datalist
                          data[index].image!,
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text( // menampilkan judul dari datalist
                              data[index].judul!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text( // menampilkan genre dari datalist
                              data[index].genre!,
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 5),
                                Text( // menampilkan data dari datalist
                                  data[index].rating!,
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
