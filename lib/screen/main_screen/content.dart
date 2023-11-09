import 'package:flutter/material.dart';
import 'package:kortoba_task/provider/app_states.dart';
import 'package:provider/provider.dart';

import 'body_content/account.dart';
import 'body_content/catigory.dart';
import 'body_content/fivorate.dart';
import 'body_content/home.dart';
class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    // prvider
    final _index = Provider.of<AppStateAndSettings>(context).itemIndex;
    return Container(
      child: _buildBody(_index),
    );
  }
  Widget _buildBody(int index) {
    Map<int , Widget> _children = {
      0: Home(),
      1: Catigory(),
      2: Fivorate(),
      3: Account(),
    };
    return   _children[index]!;
  }
}
