import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/page/app.dart';
import 'package:project/page/apps.dart';
import 'package:project/page/new_app_page.dart';
import 'package:project/setting/colors.dart';

import 'detail.dart';

class newapp extends StatelessWidget {
  static List<App> listnewapp(){
    return[
      App("assets/images/tiktok.png",
          "assets/images/tiktok_logo.png",
          "TikTok - วิดีโอคลิปสุดสนุก",
          "วีดีโอ",
          4.5,
          "41,892,123",
          "1,757,535",
          "TikTok เป็นโซเชียลมีเดียสำหรับการถ่ายวิดีโอสั้นที่มีเสียงเพลงประกอบเป็นหลัก มีเนื้อหาวิดีโอที่หลากหลายตอบโจทย์ทุกเพศทุกวัยและเป็นเวทีสำหรับคนที่มีความคิดสร้างสรรค์พร้อมที่ปลดปล่อยจินตนาการให้โลดแล่นและแสดงออกได้อย่างเต็มที่",
          [
            "assets/images/tiktok1.png",
            "assets/images/tiktok2.jpg",
            "assets/images/tiktok3.jpg",
            "assets/images/tiktok.png",
          ]
      ),
      App("assets/images/foodpanda.png",
          "assets/images/foodpanda_logo.png",
          "foodpanda - สั่งอาหาร",
          "อาหาร",
          4.0,
          "2,149,291",
          "124,631",
          "อยากกินของอร่อยเจ้าโปรดใช่มั้ย หรือลืมแวะซื้อของก่อนกลับบ้านล่ะ เราส่งอาหารและของกินของใช้ให้คุณแบบด่วนจี๋ – อยากได้อะไรสั่งเลย",
          [
            "assets/images/foodpanda.png"
          ]
      ),
      App("assets/images/netflix.png",
          "assets/images/netflix_logo.png",
          "Netflix",
          "บันเทิง",
          4.4,
          "13,546,423",
          "646,895",
          "ถ้าอยากรับชมซีรีส์และภาพยนตร์จากทั่วโลกที่ใครๆ ก็พูดถึง พบกับสุดยอดความบันเทิงทั้งหมดได้ที่ Netflix เรามีทั้งซีรีส์ ภาพยนตร์ สารคดี และผลงานสแตนด์อัพคอมเมดี้ระดับรางวัลการันตี",
          [
            "assets/images/netflix.png"
          ]
      ),
      App("assets/images/paotung.png",
          "assets/images/paotung_logo.png",
          "เป๋าตัง - Paotang",
          "การเงิน",
          3.9,
          "1,341,836",
          "425,941",
          "- ใช้จ่าย G-Wallet ตามสิทธิโครงการที่ร้านค้าถุงเงินทั่วประเทศ (ตามเงื่อนไขของโครงการ)",
          [
            "assets/images/paotung.png"
          ]
      ),
      App("assets/images/line.png",
          "assets/images/line_logo.png",
          "LINE: โทรและส่งข้อความฟรี",
          "พูดคุย",
          4.7,
          "13,463,624",
          "1,245,916",
          "LINE ได้เปลี่ยนแปลงวิธีการสื่อสารทั่วโลกให้คุณได้สนุกกับการรับส่งข้อความ การโทรแบบเสียงและแบบวิดีโอคอลฟรีจากทุกที่",
          [
            "assets/images/line.png"
          ]
      ),
    ];
  }

  const newapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.9),
      child: Column(
        children: listnewapp().map((e) =>
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => newapppage(),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.circular(15),
                ),

                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child:
                      Image.asset(
                        e.icon,
                        width: 60,),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(e.name,
                              style: GoogleFonts.sarabun(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment:  CrossAxisAlignment.start,
                                  children: [
                                    Text(e.type,
                                    style: GoogleFonts.sarabun(
                                      color: Colors.grey.withOpacity(0.8),
                                    ),
                                    ),
                                    const SizedBox(height: 2,),
                                    _starnew1(e.score),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                    )
                  ],
                ),
              ),
            ),
        ).toList(),
      ),
    );
  }

  _starnew1(num score){
    return Row(
        children:[
          Icon(Icons.star, size: 15, color: Colors.amber,),
          Text(score.toString(),
            style: GoogleFonts.sarabun(
                fontSize: 12,
                fontWeight: FontWeight.bold
            ),
          ),
        ]
    );
  }

  _buttomnew1(){
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
      color: redbackgroud,
        borderRadius: BorderRadius.circular(15),
    ),
      child: Text(
        'ติดตั้ง',
        style: GoogleFonts.sarabun(color: Colors.white),
      ),
    );
  }
}
