import 'package:flutter/material.dart';

import 'customRectangle.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.82,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Container(
                height: 5,
                width: 74,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 137, 137, 137),
                    borderRadius: BorderRadius.circular(20)),
              )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Blue Yoga Motel, Bali",
                          style: TextStyle(
                              color:  Color(0xff333333),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          "Leglan Nort St, Kuta, Bali",
                          style: TextStyle(
                              color: Color.fromARGB(255, 178, 177, 177),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.3),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                                height: 26,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Color(0xffeeeeff),
                                    borderRadius: BorderRadius.circular(12)),
                                child: const Center(
                                    child: Text(
                                  'Motel',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2125,
                                    letterSpacing: 0.2,
                                    color: Color(0xff5b58e2),
                                  ),
                                ))),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 6),
                              child: Text(
                                "4.5",
                                style: TextStyle(
                                  color: Color(0xff5b58e2),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 1.25,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xff5b58e2),
                              size: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 2.0,
                              ),
                              child: Text(
                                "729 Reviews",
                                style: TextStyle(
                                  color:  Color(0xff828282),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25,
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                  Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfffff1e4),
                      ),
                      child: Center(
                        child: RichText(
                          text: const TextSpan(
                              text: ' \$15\n',
                              style: TextStyle(
                                  color: Color(0xffea7203),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' /Night',
                                  style: TextStyle(
                                      color: Color(0xffea7203),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )
                              ]),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              const Text(
                "Description",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.4),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "The motel is located in the most popular tourist area in Bali, Indonesia. We’ll bring you through some of the most unique hotels that you never thought you’ll find here in Bali. Let\'s find out!",
                style: TextStyle(
                    color: Color.fromARGB(255, 105, 105, 105),
                    fontSize: 14,
                    height: 1.3,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.3),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Amenities",
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rectangle(icon: Icons.card_travel, text: 'Parking',),
                  Rectangle(icon: Icons.wifi, text: 'Wifi',),
                  Rectangle(icon: Icons.dry_cleaning, text: 'Laundry',),
                  Rectangle(icon: Icons.ac_unit_outlined, text: 'AC',),
                  Rectangle(icon: Icons.wine_bar, text: 'Wine',),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                
                children: [
                  Container(
                          height:52,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffeeeeff),
                          ),
                          child: const Center(
                            child: Icon(Icons.save_alt_outlined, size: 30,color:Color(0xff5b58e2) ,)
                          )),
               const   SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      height: 52,
                      
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff5d5fef), 
                          shape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Book Now",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              height: 1.3,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.3),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
