import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom appBar',
      home: Scaffold(
        backgroundColor: Color(0xFF05668D),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              stretch: true,
              expandedHeight: 150.0,
              collapsedHeight: 70.0,
              shadowColor: Colors.transparent,
              backgroundColor: Color(0xFF05668D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              flexibleSpace: Stack(
                children: [
                  Opacity(
                    opacity: .35,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color(0xFF273043),
                            Color(0xFF232431),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlexibleSpaceBar(
                    title: Text('AppName'),
                    centerTitle: true,
                  ),
                ],
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                ),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.add,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SliverFillRemaining(
              child: Container(
                child: Center(
                  child: Text(
                    'Don\'t care',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
