import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BlogPostSingleScreen extends StatefulWidget {
  final String title;
  final List<String> image;
  final String subTitle;
  final String tag;

  const BlogPostSingleScreen(
      {super.key,
      required this.title,
      required this.image,
      required this.subTitle,
      required this.tag});

  @override
  State<BlogPostSingleScreen> createState() => _BlogPostSingleScreenState();
}

class _BlogPostSingleScreenState extends State<BlogPostSingleScreen> {
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
                        "BLOG",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF050505),
                            fontFamily: "ManualeBold"),
                      ),
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: SvgPicture.asset("assets/icons/svg/menu.svg"),
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
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 24.0,
                      width: 85.0,
                      color: const Color(0xFFFFD099),
                      child: Center(
                        child: Text(
                          widget.tag,
                          style: TextStyle(
                              color: Color(0xFF050505),
                              fontFamily: "ManualeRegular",
                              fontSize: 12.0),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: "ManualeBold",
                      color: Color(0xFF050505)),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  widget.subTitle,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "ManualeRegular",
                      color: Color(0xFF3C3C3C)),
                  maxLines: 3,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  height: 300.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: widget.image.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding:
                              const EdgeInsets.only(left: 0.0, right: 16.0),
                          child: Image.asset(
                            widget.image[index],
                            fit: BoxFit.fill,
                          ),
                        );
                      }),
                ),
                SizedBox(height: 24.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 12.0,
                      width: 12.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black, width: 1.0)
                      ),
                      child: Center(
                        child: Container(
                          height: 6.0,
                          width: 6.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Container(
                      height: 12.0,
                      width: 12.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black, width: 1.0)
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24.0,),
                const Text(
                  "To belong nowhere is a blessing says London-based artist Tishk Barzanji when poetically finding the words to describe one of his latest works. Emotional and atmospheric, Tishk’s work transports you into his mind like a hauntingly beautiful graphic novel. Pure poetry and art, he speaks to people on a compelling level around subjects such as anxiety, depression, and belonging to name a few. His message is deep and straight to the heart. To belong nowhere is a blessing says London-based artist Tishk Barzanji when poetically finding the words to describe one of his latest works. Emotional and atmospheric, Tishk’s work transports you into his mind like a hauntingly beautiful graphic novel. Pure poetry and art, he speaks to people on a compelling level around subjects such as anxiety, depression, and belonging to name a few. His message is deep and straight to the heart",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF3C3C3C),
                      fontFamily: "ManualeRegular"),
                )
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
