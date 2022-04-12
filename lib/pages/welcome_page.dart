import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/large_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List Images=[
    "montagne.jpg",
    "travel-two.jpg",
    "mountains-g.jpg",
  ];

  List text =[
    ""
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: Images.length,
          itemBuilder: (_,index){
          return Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
               image:DecorationImage(
                 image: AssetImage(
                   'images/'+Images[index],
                 ),
                     fit: BoxFit.cover,
               )
            ),
            child: Container(
              margin: const EdgeInsets.only(
                  top: 120,
                left: 20,
                right: 20
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    LargeText(text: "Trips"),
                    AppText(text: "Mountain",
                    size: 30,),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: 250,
                        child: AppText(
                            text: "Moutain hikes give you an "
                            "incredible sense of freedom along with endurance test",
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                     const SizedBox(height: 50,),
                      ResponsiveButton(width: 90,)
                    ],
                  ),
                  Column(
                    children:List.generate(3, (indexDot){
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: 14,
                        height: (index==indexDot)?30:20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: (index==indexDot)?const Color(0xFF5d398d):Colors.grey
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          );
      }),
    );
  }
}
