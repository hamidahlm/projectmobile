// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class MovieModal {
  final String bg;
  final String image;
  final String nama;
  final String deskripsi;
  MovieModal({
    required this.bg,
    required this.image,
    required this.nama,
    required this.deskripsi,
  });
}

List<MovieModal> movie = [
  MovieModal(
      bg: "images/1.jpeg",
      image: "images/1.jpeg",
      nama: "Ku Kira Kau Rumah",
      deskripsi:
          "Ku Kira Kau Rumah adalah sebuah film drama yang mengisahkan tentang perjalanan seorang tokoh utama dalam mencari jati diri dan makna rumah. Film ini menggambarkan petualangan emosional yang membawa penonton melalui beragam lika-liku kehidupan, cinta, dan pertemanan"),
  MovieModal(
    bg: "images/2.jpeg",
    image: "images/2.jpeg",
    nama: "Zootopia",
    deskripsi:
        "Zootopia adalah film animasi yang mengambil setting di sebuah kota modern bernama Zootopia di mana hewan-hewan berbicara dan berinteraksi seperti manusia. Cerita ini berfokus pada seorang kelinci bernama Judy Hopps yang bercita-cita menjadi seorang polisi di Zootopia. Film ini mengeksplorasi isu-isu sosial dan persahabatan di tengah keragaman hewan-hewan kota.",
  ),
  MovieModal(
    bg: "images/3.jpeg",
    image: "images/3.jpeg",
    nama: "5CM",
    deskripsi:
        "5cm adalah film petualangan yang mengisahkan tentang persahabatan sekelompok lima sahabat dekat yang memiliki mimpi untuk melakukan perjalanan epik ke puncak Gunung Semeru. Mereka mencari petualangan dan menghadapi berbagai rintangan dalam perjalanan mereka.",
  ),
  MovieModal(
    bg: "images/4.jpeg",
    image: "images/4.jpeg",
    nama: "Big Hero 6",
    deskripsi:
        "Big Hero 6 adalah film animasi yang mengisahkan tentang seorang jenius muda bernama Hiro Hamada yang bersama dengan robot pengasuhnya, Baymax, membentuk tim pahlawan super yang disebut Big Hero 6 untuk melawan penjahat yang mengancam kota San Fransokyo. Film ini menggabungkan unsur-unsur aksi dan humor.",
  ),
  MovieModal(
    bg: "images/5.jpeg",
    image: "images/5.jpeg",
    nama: "Mecuri Raden Saleh",
    deskripsi:
        "Mencuri Raden Saleh adalah film drama yang mengangkat kisah nyata tentang pencurian sebuah lukisan berharga karya Raden Saleh, seorang pelukis terkenal Indonesia. Film ini mengeksplorasi konflik moral dan dilema yang dihadapi para pelaku pencurian serta dampaknya terhadap seni dan budaya.",
  )
];
