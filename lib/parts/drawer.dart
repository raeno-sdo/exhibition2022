import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'package:exhibition2022/pages/works.dart';
import 'package:exhibition2022/pages/infectionControl.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
          canvasColor: const Color.fromARGB(255, 0, 137, 193),
        ),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 65,
                child: DrawerHeader(
                  padding: const EdgeInsets.only(bottom: 10),
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 1,
                      )
                    )
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 7),
                        child: IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Transform.translate(
                            offset: const Offset(-3, -3),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                          child:Text(
                          'Menu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'NotoSansJP',
                            fontWeight: FontWeight.w700,
                            height: 2.7,
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 30, bottom: 0, top: 30),
                    leading: const FaIcon(
                      FontAwesomeIcons.solidFolder,
                      color: Colors.white,
                      size: 20,
                    ),
                    title: Transform.translate(
                      offset: const Offset(-15, 0),
                      child: const Text(
                        '展示作品',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'NotoSansJP',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    onTap: _firstGraderUrl,
                    contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 60, right: 30),
                    trailing: FaIcon(
                      FontAwesomeIcons.angleRight,
                      size: 15,
                      color: Colors.white,
                    ),
                    title: Text(
                      '・1年生',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    )
                  ),
                  ListTile(
                    onTap: () => pushNewScreen<dynamic>(
                      context,
                      screen: WorksPage(),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    ),
                    contentPadding: const EdgeInsets.only(top: 0, bottom: 0, left: 60, right: 30),
                    trailing: const FaIcon(
                      FontAwesomeIcons.angleRight,
                      size: 15,
                      color: Colors.white,
                    ),
                    title: const Text(
                      '・2年生',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    )
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 30, bottom: 0, top: 20),
                    leading: const FaIcon(
                      FontAwesomeIcons.solidPenToSquare,
                      color: Colors.white,
                      size: 23,
                    ),
                    title: Transform.translate(
                      offset: const Offset(-15, 0),
                      child: const Text(
                        'アンケート',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'NotoSansJP',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    onTap: null,
                    // onTap: _firstGraderQuestionnaireUrl,
                    contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 60, right: 30),
                    trailing: FaIcon(
                      FontAwesomeIcons.angleRight,
                      size: 15,
                      color: Colors.white,
                    ),
                    title: Text(
                      '・1年生 (準備中)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    )
                  ),
                  const ListTile(
                    onTap: null,
                    // onTap: _secondGraderQuestionnaireUrl,
                    contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 60, right: 30),
                    trailing: FaIcon(
                      FontAwesomeIcons.angleRight,
                      size: 15,
                      color: Colors.white,
                    ),
                    title: Text(
                      '・2年生 (準備中)',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    )
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  onTap: () => pushNewScreen<dynamic>(
                    context,
                    screen: const InfectionControlPage(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  ),
                  contentPadding: const EdgeInsets.only(left: 30, right: 30),
                  leading: const FaIcon(
                    FontAwesomeIcons.virus,
                    color: Colors.white,
                    size: 23,
                  ),
                  trailing: const FaIcon(
                    FontAwesomeIcons.angleRight,
                    size: 15,
                    color: Colors.white,
                  ),
                  title: Transform.translate(
                    offset: const Offset(-15, 0),
                    child: const Text(
                      '感染対策',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'NotoSansJP',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

final Uri _firstGrader = Uri.parse('https://2022graduation.tokyo-ec.net/first/');
Future<void> _firstGraderUrl() async {
  if (!await launchUrl(_firstGrader)) {
    throw Exception('このURLにはアクセスできません');
  }
}

// 1年アンケート
final Uri _firstGraderQuestionnaire = Uri.parse('https://2022graduation.tokyo-ec.net/survey/first');
Future<void> _firstGraderQuestionnaireUrl() async {
  if (!await launchUrl(_firstGraderQuestionnaire)) {
    throw Exception('このURLにはアクセスできません');
  }
}

// 2年アンケート
final Uri _secondGraderQuestionnaire = Uri.parse('https://2022graduation.tokyo-ec.net/survey/second');
Future<void> _secondGraderQuestionnaireUrl() async {
  if (!await launchUrl(_secondGraderQuestionnaire)) {
    throw Exception('このURLにはアクセスできません');
  }
}

