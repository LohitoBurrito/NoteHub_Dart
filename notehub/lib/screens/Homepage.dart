import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notehub/utils/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(40),
                  Container (
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFeeedf2)
                    ),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                        Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Search",
                            style: Styles.headlineStyle4
                          )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}