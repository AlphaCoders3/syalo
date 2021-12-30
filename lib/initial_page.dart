import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syalo_app/DrawerScreens/app_drawer.dart';
import 'package:syalo_app/HomeScreens/consult_page.dart';
import 'package:syalo_app/HomeScreens/home_page.dart';
import 'package:syalo_app/HomeScreens/me_page.dart';
import 'package:syalo_app/HomeScreens/path_page.dart';
import 'package:syalo_app/HomeScreens/people_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: DefaultTabController(
            initialIndex: 0,
            length: 5,
            child: Builder(
              builder: (context) => Stack(
                children: [
                  TabBarView(
                    children: [
                      HomePage(),
                      ConsultPage(),
                      PathPage(),
                      PeoplePage(),
                      MePage(),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                        height: 70,
                        width: size.width,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          // color: Colors.black38,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: TabBar(
                          isScrollable: false,
                          labelColor: Colors.black,
                          indicatorColor: Colors.white,
                          indicator: BoxDecoration(
                              color: Colors.blue.withOpacity(.45),
                              borderRadius: BorderRadius.circular(25)),
                          tabs: [
                            Tab(
                              child: Column(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.home,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Column(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.stethoscope,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Consult',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Column(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.book,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Path',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Column(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.userFriends,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'People',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Column(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.user,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Me',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    top: 0,
                    child: Builder(builder: (context) {
                      return Container(
                        padding: EdgeInsets.only(top: 10),
                        width: size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Color.fromRGBO(
                                    255, 255, 255, 0.20000000298023224),
                              ]),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 60),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hello,Shreyas',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Open Sans',
                                        fontSize: 28,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  ),
                                  Text(
                                    'Conquer the day!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Open Sans',
                                        fontSize: 16,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: InkWell(
                                  onTap: () {
                                    print('App drawer button pressed');
                                    Scaffold.of(context).openDrawer();
                                  },
                                  child: Icon(
                                    Icons.menu,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: InkWell(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.message,
                                        size: 35,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Refer',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
