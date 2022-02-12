import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anboba/models/cart_model.dart';
import 'package:anboba/models/gasclass.dart';

final TextStyle style = GoogleFonts.lato(
    fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700);
const Color bleu = Color(0xFF148BFF);
const Color red = Color(0xFFC3011B);
const Color white = Color(0xFFDCDBEB);

List<Gas> L35 = [
  Gas(
      name: 'Gas 5 KG ',
      img: 'images/l35.jpg',
      company: 'AlGazi Gas',
      price: 35,
      isselected: false,
      color: Colors.amber.shade700),
];

List<Gas> L50 = [
  Gas(
      name: 'Gas 12 KG ',
      img: 'images/l50.jpg',
      company: 'AlGazi Gas',
      price: 70,
      isselected: false,
      color: Colors.teal),
];

List<Gas> L75 = [
  Gas(
      name: 'Gas 24 KG  ',
      img: 'images/l75.jpg',
      company: 'AlGazi Gas',
      price: 140,
      isselected: false,
      color: red),
];

List<Gas> L100 = [
  Gas(
      name: 'Gas 48 KG ',
      img: 'images/l99.jpg',
      company: 'AlGazi Gas',
      price: 210,
      isselected: false,
      color: red),
];

//List<ShoesModel> allshoes = sportshoeslist + menshoeslist + womenshoeslist;

//List sizes = [40, 41, 42, 43, 44];

//List<CartModel> boughtitems = [];
List<Gas> favouriteitems = [];

double total = 0.00;
