import 'package:flutter/material.dart';
import 'package:techblog/Model/fake_data.dart';
import 'package:techblog/techblog_colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                HomePoster(),
                const SizedBox(
                  height: 40,
                ),
                const HomeTagList(),
                const SizedBox(
                  height: 20,
                ),
                const SeeMoreHotBlogs(),
                const SizedBox(
                  height: 10,
                ),
                HomeBlogList(),
                const SizedBox(
                  height: 10,
                ),
                const SeeMoreHotPodCasts(),
                const SizedBox(
                  height: 15,
                ),
                HomePodCastsList(),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    var fontTheme = Theme.of(context).textTheme;
    double bodyMargin = Size.width / 9.5;
    return Padding(
      padding: EdgeInsets.fromLTRB(bodyMargin, 20, bodyMargin, 0),
      child: SizedBox(
        height: Size.height / 3.8,
        child: Stack(
          children: [
            Container(
              foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: GradientColors.homePosterGradientColor,
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
              height: Size.height / 3.8,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/home_poster.png'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
                bottom: 40,
                right: 20,
                child: Text(
                  'ملیکا عزیزی - یک روز پیش',
                  style: fontTheme.headline3,
                )),
            Positioned(
                bottom: 35,
                left: 20,
                child: Row(
                  children: [
                    Text(
                      '253',
                      style: fontTheme.headline3,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                      size: 15,
                    )
                  ],
                )),
            Positioned(
                bottom: 10,
                right: 20,
                child: Text(
                  'دوازده قدم تا تبدیل شدن به برنامه نویس ..',
                  style: fontTheme.headline1,
                ))
          ],
        ),
      ),
    );
  }
}

class HomeTagList extends StatelessWidget {
  const HomeTagList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 9.5;
    var fontTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: size.height / 22,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tagList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 0, index == 0 ? bodyMargin : 15, 0),
            child: Container(
              height: size.height / 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: GradientColors.tagListGradientColor)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.tag_sharp,
                    color: Colors.white,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    tagList[index].title,
                    style: fontTheme.headline3,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class SeeMoreHotBlogs extends StatelessWidget {
  const SeeMoreHotBlogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 9.5;
    var fontTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, bodyMargin, 0),
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Image.asset(
              'assets/images/pen_pic.png',
              scale: 3,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'مشاهده ی داغ ترین نوشته ها',
              style: fontTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}

class HomeBlogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 9.5;
    var fontTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: blogList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(15, 0, index == 0 ? bodyMargin : 5, 0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: size.height / 4.9,
                      width: size.width / 2.9,
                      foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              colors: GradientColors.homeBlogListGradientColor,
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                          image: DecorationImage(
                              image: NetworkImage(blogList[index].imageurl),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          blogList[index].writerName,
                          style: fontTheme.headline3,
                        )),
                    Positioned(
                        bottom: 8,
                        left: 10,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                              size: 12,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              blogList[index].views,
                              style: fontTheme.headline3,
                            )
                          ],
                        ))
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                SizedBox(
                  height: 40,
                  width: size.width / 2.9,
                  child: Text(blogList[index].title,
                      style: fontTheme.headline2,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class SeeMoreHotPodCasts extends StatelessWidget {
  const SeeMoreHotPodCasts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 9.5;
    var fontTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Image.asset(
              'assets/images/mic_pic.png',
              scale: 3,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'مشاهده ی داغ ترین پادکست ها',
              style: fontTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}

class HomePodCastsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    double bodyMargin = Size.width / 9.5;
    var fontTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: Size.height / 3.6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: podCastList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 0, index == 0 ? bodyMargin : 10, 0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: Size.height / 4.9,
                      width: Size.width / 2.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image:
                                  NetworkImage(podCastList[index].imageUrl))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 40,
                  child: Text(
                    podCastList[index].title,
                    style: fontTheme.headline2,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
