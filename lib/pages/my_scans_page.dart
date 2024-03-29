import 'package:flutter/material.dart';
import 'package:tap_scan/components/components.dart';

class MyScansPage extends StatelessWidget {
  const MyScansPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    List<String> items = [
      'ID Card 1',
      'ID Card 2',
      'ID Card 3',
      'ID Card 4',
    ];
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //background
            Container(
              color: const Color.fromRGBO(0, 198, 232, 1),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          showSearch(
                            context: context,
                            delegate: DataSearch(),
                          );
                        },
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "My Scans",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  MainNavBar(activeIndex: 0),
                ],
              ),
            ),
            //white box
            Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                SizedBox(
                  width: double.infinity,
                  height: mediaQueryData.size.height - 293,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Sort:",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: MainDropDown(items: items),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "View:",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.view_list,
                                    color: const Color.fromRGBO(0, 198, 232, 1),
                                  ),
                                  Icon(
                                    Icons.grid_view_sharp,
                                    color:
                                        const Color.fromRGBO(214, 247, 253, 1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: const <Widget>[
                                    SizedBox(
                                      height: 20,
                                    ),
                                    KtpCard(),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        floatingActionButton: const MainFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const MainBottomNavBar(),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    return Container();
  }
}
