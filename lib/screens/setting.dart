import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingBar extends StatefulWidget {
  const SettingBar({Key? key}) : super(key: key);

  @override
  State<SettingBar> createState() => _SettingBarState();
}

class _SettingBarState extends State<SettingBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Center(
              child: Container(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search))
                  ],
                ),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    'General',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            const Divider(),
            general(),
            const Divider(),
            advanced(),
            const Divider(),
            // Container(),
            // const Divider(),
            // Container(),
          ],
        ),
      ),
    );
  }

  Widget general() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Icon(Icons.monitor),
            ),
            Text(
              'Project Info',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }

  Widget advanced() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Icon(FontAwesomeIcons.sliders),
            ),
            Text(
              'Advanced',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
