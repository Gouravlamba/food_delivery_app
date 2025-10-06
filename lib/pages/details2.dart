import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Details2 extends StatefulWidget {
  const Details2({super.key});

  @override
  State<Details2> createState() => _Details2State();
}

class _Details2State extends State<Details2> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 227, 233),
      body: SingleChildScrollView(
        // Makes the layout scrollable
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black),
              ),
              const SizedBox(height: 10.0),

              // Product Image
              Image.asset(
                "images/foods/nuddles.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20.0),

              // Title and quantity controls
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Titles
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hakka-Noodles",
                          style: AppWidget.boldTextFeildStyle()),
                      Text("Warm and Tasty Noodles",
                          style: AppWidget.SemiBoldTextFeildStyle()),
                    ],
                  ),
                  const Spacer(),

                  // Quantity selector
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (a > 1) a--;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.remove, color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Text(a.toString(),
                          style: AppWidget.SemiBoldTextFeildStyle()),
                      const SizedBox(width: 15.0),
                      GestureDetector(
                        onTap: () {
                          a++;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Description
              Text(
                "Stir-fried noodles with fresh veggies and soy sauce, bursting with flavor. Quick, tasty, and satisfying!",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: AppWidget.LightTextFeildStyle(),
              ),
              const SizedBox(height: 30),

              // Delivery time
              Row(
                children: [
                  Text("Delivery Time",
                      style: AppWidget.SemiBoldTextFeildStyle()),
                  const SizedBox(width: 20),
                  const Icon(Icons.alarm, color: Colors.black54),
                  const SizedBox(width: 5),
                  Text("30 min", style: AppWidget.SemiBoldTextFeildStyle()),
                ],
              ),
              const SizedBox(height: 130),

              // Bottom Section: Total Price and Add to Cart
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Total Price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Price",
                          style: AppWidget.SemiBoldTextFeildStyle()),
                      Text("\₹260", style: AppWidget.boldTextFeildStyle()),
                    ],
                  ),

                  // Add to Cart Button
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("Add To Cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            )),
                        const SizedBox(width: 15),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.shopping_cart_outlined,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
