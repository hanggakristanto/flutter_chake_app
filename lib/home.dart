import 'package:flutter/material.dart';
import 'package:flutter_chake_app/screen/cakery_page.dart';
import 'package:flutter_chake_app/widget/navbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color(0xFF545D68),
          ),
          onPressed: () {},
        ),
        title: Text(
          "Flutter Chake",
          style: TextStyle(
            fontSize: 24.0.sp,
            color: const Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        children: [
          const SizedBox(
            height: 8.0,
          ),
          Text(
            "Menu",
            style: TextStyle(
              fontSize: 40.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8.0.h,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: const Color(0xffc88d67),
            isScrollable: true,
            labelPadding: const EdgeInsets.only(right: 24),
            unselectedLabelColor: const Color(0xffcdcdcd),
            tabs: [
              Tab(
                child: Text(
                  "Chake Box",
                  style: TextStyle(
                    fontSize: 20.0.sp,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Chake Slice",
                  style: TextStyle(
                    fontSize: 20.0.sp,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Chiffon",
                  style: TextStyle(
                    fontSize: 20.0.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: const [
                CakeryPage(),
                CakeryPage(),
                CakeryPage(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xfff17532),
        child: const Icon(Icons.fastfood),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
