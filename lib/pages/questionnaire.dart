import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:exhibition2022/parts/drawer.dart';

class QuestionnairePage extends StatelessWidget {
  const QuestionnairePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'アンケート',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'NotoSansJP',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      drawer: const CommonDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: (size.width > 800) ? 40 : 17,
            right: (size.width > 800) ? 40 : 17,
            top: (size.width > 800) ? (size.height * 0.2) : 50
          ),
          child: ResponsiveRowColumn(
                layout:  ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
                children: [
                  // 2年生
                  ResponsiveRowColumnItem(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: (size.width > 800)
                            ? (size.width * 0.5 - 65)
                            : size.width * 1
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: (size.width > 800) ? 300 : 250,
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/groupPhoto-2.jpg'),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Card(
                                elevation: 3,
                                margin: EdgeInsets.only(
                                  left: 20,
                                  top: (size.width > 800) ? 200 : 170
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(15),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '2年生作品アンケート',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 137, 193),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'NotoSansJP',
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        '展示会に向けて作った卒業制作の作品達です。2年間学んできたことの集大成となる作品を悔いの残らぬよう作り上げました。',
                                        style: TextStyle(
                                          color: const Color.fromARGB(255, 98, 98, 98),
                                          fontSize: (size.width > 800) ? 13.sp : 14,
                                          height: 1.7,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'NotoSansJP',
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: const Color.fromARGB(255, 0, 137, 193),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                              ),
                                              onPressed: null,
                                              // onPressed: _secondGraderQuestionnaireUrl,
                                              icon: const FaIcon(
                                                FontAwesomeIcons.angleRight,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                              label: const Padding(
                                                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
                                                child: Text(
                                                  '準備中',
                                                  // 'アンケートはこちら',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'NotoSansJP',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    height: 1.2,
                                                    color: Colors.white
                                                  ),
                                                )
                                              )
                                            ),
                                          ),
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const ResponsiveRowColumnItem(child: SizedBox(width: 40, height: 50)),
                  // 1年生
                  ResponsiveRowColumnItem(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: (size.width > 800)
                            ? (size.width * 0.5 - 65)
                            : size.width * 1
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: (size.width > 800) ? 300 : 250,
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/groupPhoto-1.jpg'),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Card(
                                elevation: 3,
                                margin: EdgeInsets.only(
                                  left: 20,
                                  top: (size.width > 800) ? 200 : 170
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(15),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '1年生作品アンケート',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 137, 193),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'NotoSansJP',
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        '1年生は、入学から今までに制作した作品集、「ポートフォリオサイト」などを展示しています。私たちの1年間の成長を是非ご覧ください。',
                                        style: TextStyle(
                                          color: const Color.fromARGB(255, 98, 98, 98),
                                          fontSize: (size.width > 800) ? 13.sp : 14,
                                          height: 1.7,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'NotoSansJP',
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: const Color.fromARGB(255, 0, 137, 193),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                              ),
                                              onPressed: null,
                                              // onPressed: _firstGraderQuestionnaireUrl,
                                              icon: const FaIcon(
                                                FontAwesomeIcons.angleRight,
                                                size: 10,
                                                color: Colors.white,
                                              ),
                                              label: const Padding(
                                                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
                                                child: Text(
                                                  '準備中',
                                                  // 'アンケートはこちら',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'NotoSansJP',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    height: 1.2,
                                                    color: Colors.white
                                                  ),
                                                )
                                              )
                                            ),
                                          ),
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
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

