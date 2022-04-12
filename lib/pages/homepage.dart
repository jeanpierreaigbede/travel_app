import 'package:flutter/material.dart';
import 'package:travel_app/widgets/large_text.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 70,
                left: 20,
                right: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu, size: 30,
                  color: Colors.black,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black54.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40,),
          // discorver text
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: LargeText(text: "Discover"),
          ),
          const SizedBox(height: 30,),
          // tab Bar
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 0),
                labelColor: Colors.black,
                controller: _tabController,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                tabs:const [
                  Tab(text: "Places",),
                  Tab(text: "Inspiration",),
                  Tab(text: "Emotions",)
                ],),
            ),),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(15),
                      image:const DecorationImage(
                          image: AssetImage(
                              "images/mountain.jpg"
                          )
                      )
                  ),
                ),
                Text("There"),
                Text("Bye")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  class CircleTabIndicator extends Decoration{
    final Color color = Colors.blue;
    late double radius;
    @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]){
      return _CirclePainter(color: color ,radius: radius);
  }
  }
  class _CirclePainter extends BoxPainter{
    final Color color;
    double radius;
    _CirclePainter({required this.color , this.radius=8 });
    @override
  void paint(Canvas canvas,Offset offset ,ImageConfiguration configuration){
      Paint _paint = Paint();
      _paint.color = color;
      _paint.isAntiAlias = true;
      canvas.drawCircle(offset, radius, _paint);
  }
  }

