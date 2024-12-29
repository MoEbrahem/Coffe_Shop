import 'package:coffee_shop/widgets/ItemWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<String> items = [
    "Hot Coffee",
    "Cold Coffee",
    "Cappuiccino",
    "Americano",
  ];
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            left: 15,
            right: 15,
          ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sort_rounded,
                    size: 30,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "It's a Great Day for Coffee",
                style: TextStyle(
                  fontSize: width * 0.07,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                alignment: Alignment.center,
                width: width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      hintText: "Find your coffee",
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.5))),
                ),
              ),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                labelColor: const Color(0xffe57734),
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: Color(0xffe57734)),
                  // insets: EdgeInsets.symmetric(horizontal: 5)
                ),
                labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                labelStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                tabs: [
                  Tab(
                    text: items[0],
                  ),
                  Tab(
                    text: items[1],
                  ),
                  Tab(
                    text: items[2],
                  ),
                  Tab(
                    text: items[3],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: [
                  ItemWidget(),
                  ItemWidget(),
                  ItemWidget(),
                  ItemWidget(),
                ][_tabController.index],
              )
            ],
          ),
        ),
      ),
    );
  }
}
