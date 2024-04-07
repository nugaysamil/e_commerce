import 'package:flutter/material.dart';

class IconItem {
  final IconData icon;
  final String title;

  IconItem({required this.icon, required this.title});

  static final List<IconItem> items = [
    IconItem(icon: Icons.shopping_bag, title: 'Bag'),
    IconItem(icon: Icons.watch, title: 'Watch'),
    IconItem(icon: Icons.shop, title: 'Shoes'),
    IconItem(icon: Icons.diamond, title: 'Jewelry'),
    IconItem(icon: Icons.sports_soccer, title: 'Sports'),
    IconItem(icon: Icons.music_note, title: 'Music'),
    IconItem(icon: Icons.card_giftcard, title: 'Gift'),
    IconItem(icon: Icons.spa, title: 'Plant'),
    IconItem(icon: Icons.smartphone, title: 'Phone'),
    IconItem(icon: Icons.weekend, title: 'Furniture'),
    IconItem(icon: Icons.palette, title: 'Cosmetic'),
    IconItem(icon: Icons.extension, title: 'Hobby'),
  ];

}

