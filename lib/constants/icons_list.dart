import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habitly/models/icon_model.dart';

List<IconModel> iconsList = [
  IconModel(
    name: "arrow",
    icon: FontAwesomeIcons.arrowRight,
    iconColor: Color(0xff3B82F6),
    backgroundColor: Color(0xffDBEAFE),
  ),
  IconModel(
    name: "book",
    icon: FontAwesomeIcons.book,
    iconColor: Color(0xff8B5CF6),
    backgroundColor: Color(0xffEDE9FE),
  ),
  IconModel(
    name: "trending",
    icon: Icons.trending_up,
    iconColor: Color(0xffF59E0B),
    backgroundColor: Color(0xfffef3c7),
  ),
  IconModel(
    name: "clipboard",
    icon: FontAwesomeIcons.clipboard,
    iconColor: Color(0xff10B981),
    backgroundColor: Color(0xffD1FAE5),
  ),
  IconModel(
    name: "heart",
    icon: FontAwesomeIcons.heart,
    iconColor: Color(0xffEF4444),
    backgroundColor: Color(0xffFEE2E2),
  ),
  IconModel(
    name: "pencil",
    icon: Icons.edit_outlined,
    iconColor: Color(0xff6366F1),
    backgroundColor: Color(0xffE0E7FF),
  ),
];
