import 'package:flutter/material.dart';
import 'package:flutter_chake_app/screen/cakery_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/cake.dart';

class CakeryPage extends StatelessWidget {
  const CakeryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        // padding: EdgeInsets.only(
        //   bottom: 80.sp,
        // ),
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.sp,
                mainAxisSpacing: 8.sp,
                childAspectRatio: 0.7.sp,
              ),
              itemBuilder: (context, index) {
                return _buildCard(listCakes[index], context);
              },
              itemCount: listCakes.length,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    Cake cake,
    context,
  ) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CakeryDetail(
              assetPath: cake.imageUrl,
              cookieprice: cake.price,
              cookiename: cake.name,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white,
          ),
          child: Column(
            // physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    cake.isFaforite
                        ? const Icon(
                            Icons.favorite,
                            color: Color(0xFFEF7532),
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Color(0xFFEF7532),
                          )
                  ],
                ),
              ),
              Hero(
                tag: cake.imageUrl,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(cake.imageUrl),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 7),
              Text(
                'Rp ${cake.price}',
                style: TextStyle(
                    color: const Color(0xFFCC8053),
                    fontFamily: 'Varela',
                    fontSize: 14),
              ),
              Text(
                cake.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: const Color(0xFF575E67),
                    fontFamily: 'Varela',
                    fontSize: 14.sp),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: const Color(0xFFEBEBEB),
                  height: 1.0.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_basket,
                          color: const Color(0xFFD17E50),
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Beli',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: const Color(0xFFD17E50),
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.remove_circle_outline,
                          color: const Color(0xFFD17E50),
                          size: 16.sp,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: const Color(0xFFD17E50),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Icon(
                          Icons.add_circle_outline,
                          color: const Color(0xFFD17E50),
                          size: 16.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
