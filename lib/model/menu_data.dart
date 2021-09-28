import 'package:flutter/material.dart';

class MenuData {
  String name;
  List ingredients;
  List howtomake;
  String description;
  String cookingtime;
  String imageAsset;
  String rating;
  List category;

  MenuData({
    required this.name,
    required this.ingredients,
    required this.howtomake,
    required this.description,
    required this.cookingtime,
    required this.imageAsset,
    required this.rating,
    required this.category,
  });
}

var menuDataList = [
  MenuData(
      name: 'Telur Crispy',
      ingredients: ['telur', 'Tepung terigu', 'Air', 'Daun Bawang'],
      howtomake: [
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
      ],
      description:
          'Resep sajian telur crispy 2 bahan yang simple dan ekonomis. Bisa banget nih jadi menu andalan anak kost ataupun menu akhir bulan kamu.',
      cookingtime: '10 menit',
      imageAsset: 'assets/images/telur-crispy.jpg',
      rating: '(3,5)',
      category: ['Menu Harian']),
  MenuData(
      name: 'Tempe Kecap',
      ingredients: ['telur', 'Tepung terigu', 'Air', 'Daun Bawang'],
      howtomake: [
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
      ],
      description:
          'Tempe Kecap merupakan menu harian yang disukai oleh siapa pun',
      cookingtime: '30 menit',
      imageAsset: 'assets/images/tempe-kecap.jpg',
      rating: '(3,6)',
      category: ['Menu Harian']),
  MenuData(
      name: 'Cecek Bumbu Kuning',
      ingredients: ['telur', 'Tepung terigu', 'Air', 'Daun Bawang'],
      howtomake: [
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
      ],
      description: 'Tempe Kecap',
      cookingtime: '30 menit',
      imageAsset: 'assets/images/tumis-cecek.jpg',
      rating: '(3,7)',
      category: ['Menu Harian']),
  MenuData(
      name: 'Tomat Telur',
      ingredients: ['telur', 'Tepung terigu', 'Air', 'Daun Bawang'],
      howtomake: [
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
      ],
      description: 'Tempe Kecap',
      cookingtime: '30 menit',
      imageAsset: 'assets/images/tomat-telur.jpg',
      rating: '(3,5)',
      category: ['Menu Harian']),
  MenuData(
      name: 'Risol Mayo',
      ingredients: ['telur', 'Tepung terigu', 'Air', 'Daun Bawang'],
      howtomake: [
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
      ],
      description: 'Tempe Kecap',
      cookingtime: '30 menit',
      imageAsset: 'assets/images/risol-mayo.jpg',
      rating: '(3,6)',
      category: ['Menu Harian']),
  MenuData(
      name: 'Indomie Kuah',
      ingredients: ['telur', 'Tepung terigu', 'Air', 'Daun Bawang'],
      howtomake: [
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
      ],
      description: 'Indomie',
      cookingtime: '30 menit',
      imageAsset: 'assets/images/indomie-kuah.jpg',
      rating: '(3,8)',
      category: ['Menu Harian']),
  MenuData(
      name: 'Telur Orak-Arik',
      ingredients: ['telur', 'Tepung terigu', 'Air', 'Daun Bawang'],
      howtomake: [
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
      ],
      description: 'Indomie',
      cookingtime: '30 menit',
      imageAsset: 'assets/images/telur-orak-arik.jpg',
      rating: '(3,6)',
      category: ['Menu Harian']),
  MenuData(
      name: 'Udang Saus Mentega',
      ingredients: ['telur', 'Tepung terigu', 'Air', 'Daun Bawang'],
      howtomake: [
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
      ],
      description: 'Indomie',
      cookingtime: '30 menit',
      imageAsset: 'assets/images/udang-mentega.jpg',
      rating: '(3,7)',
      category: ['Menu Harian']),
  MenuData(
      name: 'Sate Aci',
      ingredients: ['telur', 'Tepung terigu', 'Air', 'Daun Bawang'],
      howtomake: [
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
        'assets/images/howtomake.jpg',
      ],
      description: 'Indomie',
      cookingtime: '30 menit',
      imageAsset: 'assets/images/sate-aci.jpg',
      rating: '(3,5)',
      category: ['Menu Harian']),
];

const List<String> menuCategory = [
  'MPASI',
  'Menu Harian',
  'Minuman',
  'Snack',
  'Kue & Jajanan Pasar'
];
