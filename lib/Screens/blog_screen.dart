import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:journal_concept_ui_kit/Screens/blog_post_single_screen.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  List<String> categoryTitle = [
    "Trending",
    "Design",
    "Culture",
    "Escape",
    "Travel",
    "Visual",
    "Color"
  ];

  int selectedItemCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/jpg/background.jpg",
                  fit: BoxFit.fill,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: ListView(
              children: [
                const SizedBox(
                  height: 26.0,
                ),
                Container(
                  height: 0.75,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 52.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12.0)),
                        child: SizedBox(
                          height: 24.0,
                          width: 24.0,
                          child: SvgPicture.asset("assets/icons/svg/back.svg"),
                        ),
                      ),
                      const Text(
                        "JOURNAL",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF050505),
                            fontFamily: "ManualeBold"),
                      ),
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: SvgPicture.asset("assets/icons/svg/search.svg"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 0.75,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Container(
                  height: 52.0,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFFFFD099),
                  child: Center(
                    child: ListView.builder(
                        itemCount: categoryTitle.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedItemCategory = index;
                              });
                            },
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  categoryTitle[index],
                                  style: TextStyle(
                                      fontFamily:
                                          (selectedItemCategory == index)
                                              ? "ManualeBold"
                                              : "ManualeRegular",
                                      fontSize: 16.0,
                                      color: (selectedItemCategory == index)
                                          ? const Color(0xFF020202)
                                          : const Color(0xFF535353)),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                (index == categoryTitle.length - 1)
                                    ? Container()
                                    : Container(
                                        height: 32.0,
                                        width: 1.0,
                                        color: const Color(0xFF535353),
                                      )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Container(
                  height: 0.75,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlogPostSingleScreen(
                                title: "Inspiration For Gray Days",
                                image: [
                                  Image.asset("assets/images/jpg/image4.jpg", fit: BoxFit.fill,),
                                  Image.asset("assets/images/jpg/image4.jpg", fit: BoxFit.fill,),
                                ],
                                subTitle:
                                    "If it's still snowy where you live, then you're probably tired", tag: "visual culture",)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.52,
                                child: const Text(
                                  "Inspiration For Gray Days",
                                  style: TextStyle(
                                      fontSize: 28.0,
                                      fontFamily: "ManualeBold",
                                      color: Color(0xFF050505)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.52,
                                child: const Text(
                                  "If it's still snowy where you live, then you're probably tired ... More ",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: "ManualeRegular",
                                      color: Color(0xFF3C3C3C)),
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24.0,
                                  width: 85.0,
                                  color: const Color(0xFFFFD099),
                                  child: const Center(
                                    child: Text(
                                      "visual culture",
                                      style: TextStyle(
                                          color: Color(0xFF050505),
                                          fontFamily: "ManualeRegular",
                                          fontSize: 12.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 0.75,
                            width: MediaQuery.of(context).size.width * 0.52,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 200.0,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Image.asset(
                            "assets/images/jpg/image4.jpg",
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlogPostSingleScreen(
                              title: "The Discovery of Self",
                              image: [
                                Image.asset("assets/images/jpg/image1.jpg", fit: BoxFit.fill,),
                                Image.asset("assets/images/jpg/image1.jpg", fit: BoxFit.fill,),
                              ],
                              subTitle:
                              "To belong nowhere is a blessing, says London-based artist", tag: "visual culture",)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.52,
                                child: const Text(
                                  "The Discovery of Self",
                                  style: TextStyle(
                                      fontSize: 28.0,
                                      fontFamily: "ManualeBold",
                                      color: Color(0xFF050505)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.52,
                                child: const Text(
                                  "To belong nowhere is a blessing, says London-based artist ... More ",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: "ManualeRegular",
                                      color: Color(0xFF3C3C3C)),
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24.0,
                                  width: 85.0,
                                  color: const Color(0xFFFFD099),
                                  child: const Center(
                                    child: Text(
                                      "visual culture",
                                      style: TextStyle(
                                          color: Color(0xFF050505),
                                          fontFamily: "ManualeRegular",
                                          fontSize: 12.0),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  height: 24.0,
                                  width: 50.0,
                                  color: const Color(0xFFFFD099),
                                  child: const Center(
                                    child: Text(
                                      "Escape",
                                      style: TextStyle(
                                          color: Color(0xFF050505),
                                          fontFamily: "ManualeRegular",
                                          fontSize: 12.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 0.75,
                            width: MediaQuery.of(context).size.width * 0.52,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 200.0,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Image.asset(
                            "assets/images/jpg/image1.jpg",
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlogPostSingleScreen(
                              title: "The Eccentricities Of Everyday Life",
                              image: [
                                Image.asset("assets/images/jpg/image5.jpg", fit: BoxFit.fill,),
                                Image.asset("assets/images/jpg/image5.jpg", fit: BoxFit.fill,),
                              ],
                              subTitle:
                              "finding the words to describe one of his latest works. Emotional and atmospheric, Tishk’s work", tag: "visual culture",)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.52,
                                child: const Text(
                                  "The Eccentricities Of Everyday Life",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontFamily: "ManualeBold",
                                      color: Color(0xFF050505)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.52,
                                child: const Text(
                                  "finding the words to describe one of his latest works. Emotional and atmospheric, Tishk’s work ... More ",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: "ManualeRegular",
                                      overflow: TextOverflow.ellipsis,
                                      color: Color(0xFF3C3C3C)),
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24.0,
                                  width: 85.0,
                                  color: const Color(0xFFFFD099),
                                  child: const Center(
                                    child: Text(
                                      "visual culture",
                                      style: TextStyle(
                                          color: Color(0xFF050505),
                                          fontFamily: "ManualeRegular",
                                          fontSize: 12.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 0.75,
                            width: MediaQuery.of(context).size.width * 0.52,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 200.0,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Image.asset(
                            "assets/images/jpg/image5.jpg",
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlogPostSingleScreen(
                              title: "grain editSébastien Plassard",
                              image: [
                                Image.asset("assets/images/jpg/image3.jpg", fit: BoxFit.fill,),
                                Image.asset("assets/images/jpg/image3.jpg", fit: BoxFit.fill,),
                              ],
                              subTitle:
                              "Explore the story behind the ghostly beauty of marginalized communities in", tag: "visual culture",)));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.52,
                                child: const Text(
                                  "grain editSébastien Plassard",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontFamily: "ManualeBold",
                                      color: Color(0xFF050505)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.52,
                                child: const Text(
                                  "Explore the story behind the ghostly beauty of marginalized communities in  ... More ",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      overflow: TextOverflow.ellipsis,
                                      fontFamily: "ManualeRegular",
                                      color: Color(0xFF3C3C3C)),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24.0,
                                  width: 85.0,
                                  color: const Color(0xFFFFD099),
                                  child: const Center(
                                    child: Text(
                                      "visual culture",
                                      style: TextStyle(
                                          color: Color(0xFF050505),
                                          fontFamily: "ManualeRegular",
                                          fontSize: 12.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 0.75,
                            width: MediaQuery.of(context).size.width * 0.52,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 200.0,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Image.asset(
                            "assets/images/jpg/image3.jpg",
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color(0xFFE5E2DC),
                const Color(0xFFF6F4F0).withOpacity(0.0)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            ),
          )
        ],
      ),
    );
  }
}
