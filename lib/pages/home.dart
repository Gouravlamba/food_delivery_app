import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/details.dart';
import 'package:food_delivery_app/pages/details2.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 227, 233),
      body: Container(
        margin: EdgeInsets.only(
          top: 50.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Hello Gourav,",
                    style: AppWidget.boldTextFeildStyle(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Text(
                "Delicious Food",
                style: AppWidget.HeadlineTextFeildStyle(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Text(
                "Discover and Get Great Food",
                style: AppWidget.LightTextFeildStyle(),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
                margin: EdgeInsets.only(left: 15, right: 20.0),
                child: showItem()),
            SizedBox(height: 30.0),

            //horizonta; foods
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //first horizontal card
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Details()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 200,
                          height: 265,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color(0xFFff5c30),
                                  Color(0xFFe74b1a),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(14),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/foods/paneer-burger.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "King Burger",
                                style: AppWidget.HoriboldTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text("Bold, tasty bite.",
                                  style: AppWidget.ThirdLigntTextFeildStyle()),
                              SizedBox(height: 5.0),
                              Text("\₹80",
                                  style: AppWidget.SemiBoldTextFeildStyle()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //second horizontal card
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Details2()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 200,
                          height: 265,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color(0xFFff5c30),
                                  Color(0xFFe74b1a),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/foods/nuddles.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Noodles",
                                style: AppWidget.HoriboldTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "Warm,noodles.",
                                style: AppWidget.ThirdLigntTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "\₹80",
                                style: AppWidget.SemiBoldTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //third horizontal cord
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Details()),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 265,
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color(0xFFff5c30),
                                  Color(0xFFe74b1a),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/foods/cheese-pizza.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Cheese-Pizza",
                                style: AppWidget.HoriboldTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "Melty,cheesy,tasty.",
                                style: AppWidget.ThirdLigntTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "\₹180",
                                style: AppWidget.SemiBoldTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //forth horizontal card

                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 200,
                        height: 265,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color(0xFFff5c30),
                                Color(0xFFe74b1a),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/foods/samosa.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Hot Samosa",
                              style: AppWidget.HoriboldTextFeildStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Cranchy,spicy puris.",
                              style: AppWidget.ThirdLigntTextFeildStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "\₹60",
                              style: AppWidget.SemiBoldTextFeildStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //fift horiontal ard

                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 200,
                        height: 265,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color(0xFFff5c30),
                                Color(0xFFe74b1a),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/foods/momos.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Momos",
                              style: AppWidget.HoriboldTextFeildStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text("Soft,juicy dumplings",
                                style: AppWidget.ThirdLigntTextFeildStyle()),
                            SizedBox(height: 5.0),
                            Text(
                              "\₹70",
                              style: AppWidget.SemiBoldTextFeildStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //sixth horizontal card

                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 200,
                        height: 265,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color(0xFFff5c30),
                                Color(0xFFe74b1a),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/foods/dosa.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Dosa",
                              style: AppWidget.HoriboldTextFeildStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Crispy,and tasty.",
                              style: AppWidget.ThirdLigntTextFeildStyle(),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "\₹80",
                              style: AppWidget.SemiBoldTextFeildStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //seven th horizpntal
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Details()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 200,
                          height: 265,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color(0xFFff5c30),
                                  Color(0xFFe74b1a),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/foods/idli.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Idli",
                                style: AppWidget.HoriboldTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "Classic comfort food.",
                                style: AppWidget.ThirdLigntTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                "\₹60",
                                style: AppWidget.SemiBoldTextFeildStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //horizintal card end here
                ],
              ),
            ),
            SizedBox(height: 5.0),

            //vertical foods
            // Vertical foods
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 0.0),
                    Text(""),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // First vertical card
                            Container(
                              width: 500,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Material(
                                elevation: 7.0,
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 130,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 180,
                                        height: 130,
                                        decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16)),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(16)),
                                            child: Center(
                                                //for image size
                                                child: SizedBox(
                                              width: 180,
                                              height: 180,
                                              child: Image.asset(
                                                "images/foods/chole-bhatoore.png",
                                                fit: BoxFit.cover,
                                                height: double.infinity,
                                              ),
                                            ))),
                                      ),

                                      // Foreground text section overlapping left side
                                      Positioned(
                                        left: 180,
                                        right: 0,
                                        top: 0,
                                        // bottom: 0,
                                        child: Container(
                                          width: 100,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Chole Bhature",
                                                style: AppWidget
                                                    .boldTextFeildStyle(),
                                              ),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                "Authentic Punjabi Chole Bhature",
                                                style: AppWidget
                                                    .SecondLigntTextFeildStyle(),
                                              ),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                "\₹35",
                                                style: AppWidget
                                                    .SemiBoldTextFeildStyle(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Second vertical card

                            Container(
                              width: 500,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Material(
                                elevation: 7.0,
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 130,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 180,
                                        height: 130,
                                        decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16)),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(16)),
                                            child: Center(
                                                //for image size
                                                child: SizedBox(
                                              width: 130,
                                              height: 130,
                                              child: Image.asset(
                                                "images/foods/chiken-biryani.png",
                                                fit: BoxFit.cover,
                                                height: double.infinity,
                                              ),
                                            ))),
                                      ),

                                      // Foreground text section overlapping left side
                                      Positioned(
                                        left: 180,
                                        right: 0,
                                        top: 0,
                                        // bottom: 0,
                                        child: Container(
                                          width: 100,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Chicken Biryani",
                                                style: AppWidget
                                                    .boldTextFeildStyle(),
                                              ),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                  "Spiced chicken and fragrant basmati rice.",
                                                  style: AppWidget
                                                      .SecondLigntTextFeildStyle()),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                "\₹180",
                                                style: AppWidget
                                                    .SemiBoldTextFeildStyle(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //third virtical card

                            Container(
                              width: 500,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Material(
                                elevation: 7.0,
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 130,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 180,
                                        height: 130,
                                        decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16)),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(16)),
                                            child: Center(
                                                //for image size
                                                child: SizedBox(
                                              width: 120,
                                              height: 120,
                                              child: Image.asset(
                                                "images/foods/daal-chawal.png",
                                                fit: BoxFit.cover,
                                                height: double.infinity,
                                              ),
                                            ))),
                                      ),

                                      // Foreground text section overlapping left side
                                      Positioned(
                                        left: 180,
                                        right: 0,
                                        top: 0,
                                        // bottom: 0,
                                        child: Container(
                                          width: 100,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Daal Chawal",
                                                style: AppWidget
                                                    .boldTextFeildStyle(),
                                              ),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                  "Delhi-style yellow daal with rice.",
                                                  style: AppWidget
                                                      .SecondLigntTextFeildStyle()),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                "\₹80",
                                                style: AppWidget
                                                    .SemiBoldTextFeildStyle(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //forth virtical card
                            Container(
                              width: 500,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Material(
                                elevation: 7.0,
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 130,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 180,
                                        height: 130,
                                        decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16)),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(16)),
                                            child: Center(
                                                //for image size
                                                child: SizedBox(
                                              width: 160,
                                              height: 160,
                                              child: Image.asset(
                                                "images/foods/dall-makhni.png",
                                                fit: BoxFit.cover,
                                                height: double.infinity,
                                              ),
                                            ))),
                                      ),

                                      // Foreground text section overlapping left side
                                      Positioned(
                                        left: 180,
                                        right: 0,
                                        top: 0,
                                        // bottom: 0,
                                        child: Container(
                                          width: 100,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Daal Makhni",
                                                style: AppWidget
                                                    .boldTextFeildStyle(),
                                              ),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                  "Classic Punjabi-style daal.",
                                                  style: AppWidget
                                                      .SecondLigntTextFeildStyle()),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                "\$₹80",
                                                style: AppWidget
                                                    .SemiBoldTextFeildStyle(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //fifth virtical card

                            Container(
                              width: 500,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Material(
                                elevation: 7.0,
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 130,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 180,
                                        height: 130,
                                        decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16)),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(16)),
                                            child: Center(
                                                //for image size
                                                child: SizedBox(
                                              width: 170,
                                              height: 170,
                                              child: Image.asset(
                                                "images/foods/vegg_thali.png",
                                                fit: BoxFit.cover,
                                                height: double.infinity,
                                              ),
                                            ))),
                                      ),

                                      // Foreground text section overlapping left side
                                      Positioned(
                                        left: 180,
                                        right: 0,
                                        top: 0,
                                        // bottom: 0,
                                        child: Container(
                                          width: 100,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Veg Thali",
                                                style: AppWidget
                                                    .boldTextFeildStyle(),
                                              ),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                  "Dal,Sabzi,Roti,Rice all in one.",
                                                  style: AppWidget
                                                      .SecondLigntTextFeildStyle()),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                "\₹120",
                                                style: AppWidget
                                                    .SemiBoldTextFeildStyle(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //sixth virtical card
                            Container(
                              width: 500,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Material(
                                elevation: 7.0,
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 130,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 180,
                                        height: 130,
                                        decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16)),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(16)),
                                            child: Center(
                                                //for image size
                                                child: SizedBox(
                                              width: 130,
                                              height: 130,
                                              child: Image.asset(
                                                "images/foods/chola-chawal.png",
                                                fit: BoxFit.cover,
                                                height: double.infinity,
                                              ),
                                            ))),
                                      ),

                                      // Foreground text section overlapping left side
                                      Positioned(
                                        left: 180,
                                        right: 0,
                                        top: 0,
                                        // bottom: 0,
                                        child: Container(
                                          width: 100,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Chole Chawal",
                                                style: AppWidget
                                                    .boldTextFeildStyle(),
                                              ),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                  "Flavorful chole paired with fluffy chawal.",
                                                  style: AppWidget
                                                      .SecondLigntTextFeildStyle()),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                "\₹80",
                                                style: AppWidget
                                                    .SemiBoldTextFeildStyle(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //seventh card

                            Container(
                              width: 500,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Material(
                                elevation: 7.0,
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 130,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 180,
                                        height: 130,
                                        decoration: const BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16)),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(16)),
                                            child: Center(
                                                //for image size
                                                child: SizedBox(
                                              width: 170,
                                              height: 170,
                                              child: Image.asset(
                                                "images/foods/chola-pratha.png",
                                                fit: BoxFit.cover,
                                                height: double.infinity,
                                              ),
                                            ))),
                                      ),

                                      // Foreground text section overlapping left side
                                      Positioned(
                                        left: 180,
                                        right: 0,
                                        top: 0,
                                        // bottom: 0,
                                        child: Container(
                                          width: 100,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Paratha Nasta",
                                                style: AppWidget
                                                    .boldTextFeildStyle(),
                                              ),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                  "Stuffed parathas perfect for breakfast.",
                                                  style: AppWidget
                                                      .SecondLigntTextFeildStyle()),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                "\₹40",
                                                style: AppWidget
                                                    .SemiBoldTextFeildStyle(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Add more cards here similarly...
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //vertical cards end here
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: icecream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: salad ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: burger ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
