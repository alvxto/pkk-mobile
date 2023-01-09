import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

const primary = Color(0xFF696FFF);
const secondary = Color(0xFF000DFF);
const Light = Color(0xFF4246E7);
const dark = Color.fromARGB(255, 40, 42, 97);
const accent = Color(0xFF0208B0);

const background = Color(0xFFF2F2F2);
const fontfield = Color(0xFF757575);

const colors = [
  Color(0xffff6767),
  Color(0xff66e0da),
  Color(0xfff5a2d9),
  Color(0xfff0c722),
  Color(0xff6a85e5),
  Color(0xfffd9a6f),
  Color(0xff92db6e),
  Color(0xff73b8e5),
  Color(0xfffd7590),
  Color(0xffc78ae5),
];

Color getUserAvatarNameColor(types.User user) {
  final index = user.id.hashCode % colors.length;
  return colors[index];
}

String getUserName(types.User user) =>
    '${user.firstName ?? ''} ${user.lastName ?? ''}'.trim();
