import 'package:flutter/material.dart';
import '../constant/color_constant.dart';

class CardModel {
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.cvv,
    required this.expDate,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: "Favour Emma",
    cardNumber: "****  ****  ****  1234",
    cvv: "**4",
    expDate: "12/21",
    cardColor: kPrimaryColor,
  ),
  CardModel(
    cardHolderName: "Habeeb Marcus",
    cardNumber: "****  ****  ****  4321",
    cvv: "**1",
    expDate: "01/22",
    cardColor: kSecondaryColor,
  ),
];
