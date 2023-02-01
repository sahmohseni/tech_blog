import 'package:flutter/material.dart';
import 'package:techblog/techblog_colors.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var fontTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/tech_bot.png',
            height: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'به تک بلاگ خوش آمدی',
            style: fontTheme.headline6,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'برای ارسال مطالب و پادکست\nحتما باید ثبت نام کنی',
            style: fontTheme.headline6,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      SingleColors.primaryColor)),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Container(
                          height: size.height / 2,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "لطفا ایمیلت رو وارد کن",
                                style: fontTheme.headline6,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 300,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintTextDirection: TextDirection.ltr,
                                      hintText: 'codeyad@gmail.com',
                                      hintStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 168, 167, 167),
                                          fontFamily: 'dana',
                                          fontSize: 12),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: const BorderSide(
                                              color: Colors.grey))),
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              SingleColors.primaryColor)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: EdgeInsets.only(
                                                bottom: MediaQuery.of(context)
                                                    .viewInsets
                                                    .bottom),
                                            child: Container(
                                              height: size.height / 2,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  25),
                                                          topRight:
                                                              Radius.circular(
                                                                  25))),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "لطفا ایمیلت رو وارد کن",
                                                    style: fontTheme.headline6,
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 300,
                                                    height: 40,
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                          hintTextDirection:
                                                              TextDirection.ltr,
                                                          hintText:
                                                              'codeyad@gmail.com',
                                                          hintStyle:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          168,
                                                                          167,
                                                                          167),
                                                                  fontFamily:
                                                                      'dana',
                                                                  fontSize: 12),
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15),
                                                              borderSide:
                                                                  const BorderSide(
                                                                      color: Colors
                                                                          .grey))),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 50,
                                                  ),
                                                  ElevatedButton(
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStateProperty.all<
                                                                      Color>(
                                                                  SingleColors
                                                                      .primaryColor)),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        showModalBottomSheet(
                                                            context: context,
                                                            builder: (context) {
                                                              return Container(
                                                                height:
                                                                    size.height /
                                                                        2,
                                                                decoration: const BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                                25),
                                                                        topRight:
                                                                            Radius.circular(25))),
                                                              );
                                                            });
                                                      },
                                                      child: Text(
                                                        'مرحله بعد',
                                                        style:
                                                            fontTheme.headline1,
                                                      ))
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: Text(
                                    'مرحله بعد',
                                    style: fontTheme.headline1,
                                  ))
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Text(
                'بزن بریم',
                style: fontTheme.headline1,
              ))
        ],
      )),
    );
  }
}
