import 'package:flutter/material.dart';
import 'package:media_player_11/modules/screens/home_screen/views/widgets/appbar.dart';
import '../../../utils/constants/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: myAppBar(),
        body: TabBarView(
          children: Constant.tab_list,
        ),
      ),
    );
  }
}
