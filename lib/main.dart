import 'package:DogAdoption/data.dart';
import 'package:DogAdoption/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xc0c0c0),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: _width,
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 20,
          ),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: coreColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/images/logo.jpg"),
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                width: _width * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Find a Pet",
                      style: kAppBarStyle,
                    ),
                    Text(
                      "Shop",
                      style: kAppBarStyle,
                    ),
                    Text(
                      "About Pet Adoption",
                      style: kAppBarStyle,
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: _width * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Text(
                              "Login",
                              style: kAppBarStyle,
                            ),
                            VerticalDivider(
                              width: 30,
                              thickness: 5,
                            ),
                            Text(
                              "SignUp",
                              style: kAppBarStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Icon(Icons.search, color: coreColor),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.apps, color: coreColor)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Column(
                    children: [
                      Container(
                        height: _height * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                          gradient: new LinearGradient(
                            colors: [Color(0xff3B0410), Color(0xff67142B)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: _width * 0.1,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Find the Right\nPet For You",
                                        style: GoogleFonts.biryani(
                                          height: 1.3,
                                          fontSize: _width * 0.05,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Take our interactive new quiz to find\nout perfect pet to adopt",
                                        style: GoogleFonts.assistant(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                ),
                                child: Image.asset(
                                  "assets/images/doggie.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: _width,
                        padding: EdgeInsets.only(
                          left: _width * 0.1,
                          top: _width * 0.08,
                          bottom: _width * 0.08,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffF0F1FA),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Find your pets",
                              style: GoogleFonts.hind(
                                fontSize: 22,
                                color: purpleColor,
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 50,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "2K+ Pets Available for\nAdoption Near You",
                                  style: GoogleFonts.hind(
                                    height: 1.3,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                    color: purpleColor,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "See All  ",
                                  style: GoogleFonts.hind(
                                    fontSize: 22,
                                    color: purpleColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: purpleColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: _width * 0.1,
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: _height * 0.05,
                              ),
                              height: _height * 0.5,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: PetData.length,
                                itemBuilder: (ctx, i) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 10,
                                    ),
                                    width: _height * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.black,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: GridTile(
                                        child: Image.asset(
                                          PetData[i].imageUrl,
                                          fit: BoxFit.cover,
                                        ),
                                        footer: GridTileBar(
                                          backgroundColor:
                                              Colors.white.withOpacity(0.9),
                                          title: Text(
                                            PetData[i].name,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.hind(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700,
                                              color: purpleColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: _width,
                        margin: EdgeInsets.symmetric(
                          horizontal: _width * 0.1,
                          vertical: _height * 0.05,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          "assets/images/petlover3.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Image.asset(
                                              "assets/images/petlover1.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(height: 40),
                                          Container(
                                            width: _width * 0.12,
                                            height: _height * 0.4,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              child: Image.asset(
                                                "assets/images/petlover2.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: _width * 0.05,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 5,
                                      width: 50,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: purpleColor,
                                      ),
                                    ),
                                    Text(
                                      "Planning to Adopt\na Pet?",
                                      style: GoogleFonts.hind(
                                        height: 1.3,
                                        fontSize: 50,
                                        fontWeight: FontWeight.w700,
                                        color: purpleColor,
                                      ),
                                    ),
                                    Text(
                                      "Dogs make for the best friends, and it's\nonly right that we celebrate them for all the \njoy and love they've givin us. Whether\nlabled on a dog bandana",
                                      style: GoogleFonts.hind(
                                        fontSize: 22,
                                        color: purpleColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "See All  ",
                                          style: GoogleFonts.hind(
                                            fontSize: 22,
                                            color: purpleColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: purpleColor,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: _width,
                        padding: EdgeInsets.symmetric(
                          horizontal: _width * 0.05,
                          vertical: _height * 0.1,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffEFE8DE),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pets Food",
                              style: GoogleFonts.hind(
                                fontSize: 22,
                                color: purpleColor,
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 50,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: purpleColor,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Save an Extra 5-10% on\n every Autoship Order",
                                  style: GoogleFonts.hind(
                                    height: 1.3,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                    color: purpleColor,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "See All  ",
                                  style: GoogleFonts.hind(
                                    fontSize: 22,
                                    color: purpleColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: purpleColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: _width * 0.1,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                PetFood(
                                  image: "assets/images/food4.jfif",
                                  name: "Pet Treats",
                                ),
                                PetFood(
                                  image: "assets/images/food3.jfif",
                                  name: "Veterinary Diet",
                                ),
                                PetFood(
                                  image: "assets/images/food2.jfif",
                                  name: "Cat Litter",
                                ),
                                PetFood(
                                  image: "assets/images/food1.jfif",
                                  name: "Purnia Pro Plan",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: _height * 0.8,
                        padding: EdgeInsets.symmetric(
                          vertical: _height * 0.05,
                          horizontal: _width * 0.15,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Star(),
                                      Star(),
                                      Star(),
                                      Star(),
                                      Star(),
                                    ],
                                  ),
                                  SizedBox(
                                    height: _width * 0.03,
                                  ),
                                  Text(
                                      '"There were funny parts (most of which\nwere in the trailer), but there were dark\nparts, too. If I had smaller kids younger\nthen 10 or so, I wouldn\'t be seeing this\nmovie."',
                                      style: GoogleFonts.hind(
                                        fontSize: 25,
                                        color: purpleColor,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  SizedBox(
                                    height: _width * 0.03,
                                  ),
                                  Text(
                                    "The Flutter Gal",
                                    style: GoogleFonts.hind(
                                      fontSize: 28,
                                      color: purpleColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'Founder and CEO @ IncognitoStartups',
                                    style: GoogleFonts.hind(
                                      fontSize: 25,
                                      color: purpleColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(40),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    "assets/images/petlover3.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: _height * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            topLeft: Radius.circular(100),
                          ),
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.only(
                          left: _width * 0.1,
                          right: _width * 0.1,
                          top: _height * 0.1,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Heading(
                                        text: "ABOUT PETFINDER",
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Titl(text: "About Petfinder"),
                                      Titl(text: "FAQs"),
                                      Titl(text: "PartnerShip"),
                                      Titl(text: "Terms and service"),
                                      Titl(text: "Mobile site and apps"),
                                      Titl(text: "Put Petfinder on your site"),
                                      Titl(text: "Free widget and graphics"),
                                      Titl(text: "Press"),
                                      Titl(text: "For Developers"),
                                      Titl(text: "Contact us"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Heading(
                                        text: "PET ADOPTION",
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Titl(text: "About Petfinder"),
                                      Titl(text: "FAQs"),
                                      Titl(text: "PartnerShip"),
                                      Titl(text: "Terms and service"),
                                      Titl(text: "Mobile site and apps"),
                                      Titl(text: "Put Petfinder on your site"),
                                      Titl(text: "Free widget and graphics"),
                                      Titl(text: "Press"),
                                      Titl(text: "For Developers"),
                                      Titl(text: "Contact us"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Heading(
                                        text: "PET CARE TOPICS",
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Titl(text: "About Petfinder"),
                                      Titl(text: "FAQs"),
                                      Titl(text: "PartnerShip"),
                                      Titl(text: "Terms and service"),
                                      Titl(text: "Mobile site and apps"),
                                      Titl(text: "Put Petfinder on your site"),
                                      Titl(text: "Free widget and graphics"),
                                      Titl(text: "Press"),
                                      Titl(text: "For Developers"),
                                      Titl(text: "Contact us"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Heading(
                                        text: "NEWSLETTER",
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Titl(
                                          text:
                                              "To get the latest on pet\nadoption and pet care, signup\nfor our newsletter"),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                            width: 5,
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Center(
                                          child: Heading(text: "SIGN UP"),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                bottom: 50,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.android,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  Titl(
                                      text:
                                          "2020, All rights reserved by Rafayel Hasan")
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: _height * 0.53,
              left: _width * 0.1 + 100,
              child: Container(
                height: _height * 0.13,
                width: _width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 30,
                        offset: Offset(-20, 20),
                        spreadRadius: 5,
                      )
                    ]),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: _height * 0.13,
                        width: _width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xfff0f1fa),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: purpleColor,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Enter your location",
                              style: GoogleFonts.hind(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: purpleColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/dogIcon.png",
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Find a Dog",
                            style: GoogleFonts.hind(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: purpleColor,
                            ),
                          )
                        ],
                      ),
                      VerticalDivider(
                        color: purpleColor,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/catIcon.png",
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Find a Cat",
                            style: GoogleFonts.hind(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: purpleColor,
                            ),
                          )
                        ],
                      ),
                      VerticalDivider(
                        color: purpleColor,
                      ),
                      Text(
                        "Find other Pet",
                        style: GoogleFonts.hind(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: purpleColor,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      )
                    ],
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
