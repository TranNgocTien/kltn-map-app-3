import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:map_app/widgets/settingTile.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:Text('Setting'),
    );
  }
}