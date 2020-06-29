import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khalticlone/model/home_menu_item.dart';
import 'package:khalticlone/model/introitem.dart';
const String logo = "assets/logo.png";

final List<IntroItem> introItems = [
  IntroItem(image: "assets/images.jpg",title: "OLÁ", subtitle: "Bem vindo ao HELP IFTO"),
  IntroItem(image: "assets/logo.png",title: "VAMOS LÁ", subtitle: "Seu Aplicativo de ajuda do IFTO"),
  IntroItem(image: "assets/images1.png",title: "AGORA É SÓ ENTRAR", subtitle: "Estou disposto a te ouvir e aprender"),
];

final List<HomeMenuItem> homeMenuItems = [
  //HomeMenuItem("Topup",FontAwesomeIcons.mobileAlt, subtitle: "CASHBACK 2%"),
  //HomeMenuItem("RC Card",FontAwesomeIcons.addressCard, subtitle: "CASHBACK 2-3%"),
  //HomeMenuItem("Landline",FontAwesomeIcons.intercom, subtitle: "CASHBACK 2%"),
  //HomeMenuItem("Electricity",FontAwesomeIcons.idBadge),
 // HomeMenuItem("Khanepani",FontAwesomeIcons.water),
 // HomeMenuItem("TV",FontAwesomeIcons.tv, subtitle: "CASHBACK 2%"),
  //HomeMenuItem("Internet",FontAwesomeIcons.globe, subtitle: "CASHBACK 0.5-5%"),
 // HomeMenuItem("E-Learning",FontAwesomeIcons.readme, subtitle: "CASHBACK 2%"),
  //HomeMenuItem("Antivirus",FontAwesomeIcons.shieldAlt, subtitle: "CASHBACK 30%"),
  //HomeMenuItem("Insurance",FontAwesomeIcons.userShield),
  //HomeMenuItem("Ride",FontAwesomeIcons.motorcycle, subtitle: "CASHBACK 5%"),
  //HomeMenuItem("Share",FontAwesomeIcons.shareSquare),
  //HomeMenuItem("Newspaper",FontAwesomeIcons.newspaper),
  //HomeMenuItem("Credit Card",FontAwesomeIcons.creditCard),
];
final List<HomeMenuItem> homeBookingsItems = [
  //HomeMenuItem("Flight",FontAwesomeIcons.plane),
  //HomeMenuItem("Movie",FontAwesomeIcons.ticketAlt, subtitle: "CASHBACK 2%"),
  //HomeMenuItem("Hotel",FontAwesomeIcons.hotel),
 // HomeMenuItem("Event",FontAwesomeIcons.calendarCheck)
];