import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfectionControlPage extends StatelessWidget {
  const InfectionControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '感染対策',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'NotoSansJP',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    '当展示会の感染対策',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 137, 193),
                      fontFamily: 'NotoSansJP',
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  '当展示会は、お客様の安全のため下記の感染対策を行なっております。',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 98, 98, 98),
                    fontFamily: 'NotoSansJP',
                    fontWeight: FontWeight.w500,
                    fontSize: (size.width > 800) ? 13.sp : 14,
                  ),
                ),
                  ResponsiveRowColumn(
                    rowMainAxisAlignment: MainAxisAlignment.center,
                    columnCrossAxisAlignment: CrossAxisAlignment.center,
                    layout:  ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                    children: [
                      ResponsiveRowColumnItem(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: (size.width > 1000)
                                ? (size.width * 0.5) - 40
                                : size.width * 1
                          ),
                          child: Card(
                            margin: const EdgeInsets.only(right: 17, left: 17, top: 45),
                            elevation: 3,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              height: (size.width > 1000)
                                ? 250
                                : null,
                              padding: const EdgeInsets.only(top: 20, bottom: 25, left: 25, right: 25),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Text(
                                    'お客様に対するお願い',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 137, 193),
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w700,
                                      fontSize: (size.width > 800) ? 15.sp : 16,
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'NotoSansJP',
                                        fontSize: (size.width > 800) ? 13.sp : 14,
                                        color: const Color.fromARGB(255, 98, 98, 98),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      children: const [
                                        TextSpan(text: '・会話時、マスクの着用をお願いいたします。\n（ 何らかの要因により着用が難しい方は、お申しください ）\n',),
                                        TextSpan(text: '\n・会場内では、大声による会話を自粛お願いいたします。\n',),
                                        TextSpan(text: '\n・手洗いうがい、消毒の徹底をお願いいたします。\n',),
                                        TextSpan(text: '\n・会場内では、他のお客様と一定の間隔を開けてご覧ください。',),
                                      ]
                                    )
                                  ),
                                ]
                              )
                            )
                          ),
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: (size.width > 1000)
                                ? (size.width * 0.5) - 40
                                : size.width * 1
                          ),
                          child: Card(
                            margin: const EdgeInsets.only(right: 17, left: 17, top: 45),
                            elevation: 3,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              height: (size.width > 1000)
                                ? 250
                                : null,
                              padding: const EdgeInsets.only(top: 20, bottom: 25, left: 25, right: 25),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Text(
                                    '会場内での感染対策',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 137, 193),
                                      fontFamily: 'NotoSansJP',
                                      fontWeight: FontWeight.w700,
                                      fontSize: (size.width > 800) ? 15.sp : 16,
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontFamily: 'NotoSansJP',
                                        fontSize: (size.width > 800) ? 13.sp : 14,
                                        color: const Color.fromARGB(255, 98, 98, 98),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      children: const [
                                        TextSpan(text: '・入場者への入り口で徹底したアルコール消毒を行います。\n',),
                                        TextSpan(text: '\n・空調設備による徹底した換気を行います。\n',),
                                        TextSpan(text: '\n・当学生のマスクの着用と定期的なアルコール消毒による体\n　調管理を行なっております。\n',),
                                        TextSpan(text: '\n・校内の展示物周辺、お客様が手を触れると考えられる部分\n　の定期的なアルコール消毒を行います。',),
                                      ]
                                    )
                                  ),
                                ]
                              )
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
    );
  }
}

