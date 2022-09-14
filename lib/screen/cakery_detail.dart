import 'package:flutter/material.dart';
import 'package:flutter_chake_app/widget/navbar_widget.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CakeryDetail extends StatelessWidget {
  final String assetPath;
  final String cookieprice;
  final String cookiename;

  const CakeryDetail({
    Key? key,
    required this.assetPath,
    required this.cookieprice,
    required this.cookiename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context).pop();
          }),
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff545d68),
          ),
        ),
        title: Text(
          "pesan",
          style: TextStyle(fontSize: 24.0.sp, color: const Color(0xff545d68)),
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xff545d68),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 16.0.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Kue",
              style: TextStyle(
                fontSize: 40.0.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xfff17532),
              ),
            ),
          ),
          SizedBox(
            height: 16.0.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0.sp,
            ),
            child: Hero(
              tag: assetPath,
              child: Container(
                height: 250.h,
                width: 200.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(assetPath),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.0.h,
          ),
          Center(
            child: Text(
              'Rp $cookieprice',
              style: TextStyle(
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xfff17532),
              ),
            ),
          ),
          SizedBox(
            height: 16.0.h,
          ),
          Center(
            child: Text(
              cookiename,
              style: TextStyle(
                fontSize: 24.0.sp,
                color: const Color(0xff575e67),
              ),
            ),
          ),
          SizedBox(
            height: 16.0.h,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 52.0,
              child: Text(
                "Bolu atau kue bolu adalah ...",
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0.sp,
                  color: const Color(0xffb4b8b9),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.0.h,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100.0.w,
              height: 52.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0.sp),
                color: const Color(0xfff17532),
              ),
              child: Center(
                child: InkWell(
                  onTap: () async {
                    await FlutterLaunch.launchWhatsapp(
                        phone: '621829396847', message: 'hi hangga');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 32.sp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Pesan Via Whatsapp",
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28.0.h,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xfff17532),
        child: const Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
