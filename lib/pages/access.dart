import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:exhibition2022/parts/drawer.dart';
import 'package:exhibition2022/parts/map.dart';

class AccessPage extends StatelessWidget {
  const AccessPage({super.key});

  @override

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'アクセス',
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
            top: (size.width > 800) ? 100 : 30,
          ),
          child: ResponsiveRowColumn(
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            columnCrossAxisAlignment: CrossAxisAlignment.start,
            layout:  ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: (size.width > 800)
                      ? (size.width * 0.6)
                      : size.width * 1
                  ),
                  child: Column(
                    children: [
                      Card(
                        elevation: 3,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: (size.width > 800) ? 500 : 300,
                          width: double.infinity,
                          child: const QuestionnairePage(),
                        )
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 40, top: 15),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 0, 137, 193),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                              ),
                              onPressed: _googleMapUrl,
                              icon: const FaIcon(
                                FontAwesomeIcons.angleRight,
                                size: 10,
                              ),
                              label: const Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 5),
                                child: Text(
                                  'GoogleMapで見る',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'NotoSansJP',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    height: 1.2
                                  ),
                                )
                              )
                            ),
                          ),
                        )
                      ),
                    ]
                  ),
                )
              ),
              ResponsiveRowColumnItem(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: (size.width > 800)
                      ? (size.width * 0.4 - 80)
                      : size.width * 1
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: (size.width > 800) ? 50 : 5,
                      top: 20
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '開催場所',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 137, 193),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            fontFamily: 'NotoSansJP',
                          )
                        ),
                        Text(
                          '東京電子専門学校 2号館 7階',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 98, 98, 98),
                            fontFamily: 'NotoSansJP',
                            fontWeight: FontWeight.w500,
                            fontSize: (size.width > 800) ? 13.sp : 14,
                            height: 1.7,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text(
                            '第1実習室・第4実習室',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 98, 98, 98),
                              fontFamily: 'NotoSansJP',
                              fontWeight: FontWeight.w500,
                              fontSize: (size.width > 800) ? 13.sp : 14,
                              height: 1.7,
                            ),
                          ),
                        ),
                        Text(
                          '開催日時',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 137, 193),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            fontFamily: 'NotoSansJP',
                          )
                        ),
                        Text(
                          '2022年 3月 3日 (金曜日)  10 : 00 〜 15 : 00',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 98, 98, 98),
                            fontFamily: 'NotoSansJP',
                            fontWeight: FontWeight.w500,
                            fontSize: (size.width > 800) ? 13.sp : 14,
                            height: 1.7,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text(
                            '2022年 3月 4日 (土曜日)  10 : 00 〜 15 : 00',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 98, 98, 98),
                              fontFamily: 'NotoSansJP',
                              fontWeight: FontWeight.w500,
                              fontSize: (size.width > 800) ? 13.sp : 14,
                              height: 1.7,
                            ),
                          ),
                        ),
                        Text(
                          '交通アクセス',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 137, 193),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            fontFamily: 'NotoSansJP',
                          )
                        ),
                        Text(
                          '池袋駅東口より徒歩5〜8分',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 98, 98, 98),
                            fontFamily: 'NotoSansJP',
                            fontWeight: FontWeight.w500,
                            fontSize: (size.width > 800) ? 13.sp : 14,
                            height: 1.7,
                          ),
                        ),
                        Text(
                          '・JR/東武東上線\n・西武池袋線\n・東京メトロ丸の内線/有楽町線/副都心線',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 98, 98, 98),
                            fontFamily: 'NotoSansJP',
                            fontWeight: FontWeight.w500,
                            fontSize: (size.width > 800) ? 13.sp : 14,
                            height: 1.7,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

final Uri _googleMapLink = Uri.parse('https://www.google.co.jp/maps/place/%E5%AD%A6%E6%A0%A1%E6%B3%95%E4%BA%BA%E9%9B%BB%E6%B3%A2%E5%AD%A6%E5%9C%92%E6%9D%B1%E4%BA%AC%E9%9B%BB%E5%AD%90%E5%B0%82%E9%96%80%E5%AD%A6%E6%A0%A1/@35.7314556,139.7143529,15.99z/data=!4m5!3m4!1s0x60188d6f3f07b76b:0x89f2c0ef0e9ee79f!8m2!3d35.7317352!4d139.7170427?hl=ja');
Future<void> _googleMapUrl() async {
  if (!await launchUrl(_googleMapLink)) {
    throw Exception('このURLにはアクセスできません');
  }
}