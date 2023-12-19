import 'package:flutter/material.dart';
import 'package:flutter_cakery_shop_ui/pages/cakery_page.dart';
import 'package:flutter_cakery_shop_ui/widgets/navbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rani Cakery",
          style: TextStyle(
            color: Colors.black87,
            fontFamily: "Varela",
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "Menu",
            style: TextStyle(
              fontFamily: "Varela",
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TabBar(
            tabs: const [
              Tab(
                child: Text(
                  'Cake Box',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 18.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Cake Slice',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 18.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Chiffon',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.redAccent,
            isScrollable: true,
            labelPadding: const EdgeInsets.symmetric(horizontal: 24),
            unselectedLabelColor: Colors.black54,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 160.0,
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
        backgroundColor: Colors.redAccent,
        child: const Icon(
          Icons.fastfood,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
