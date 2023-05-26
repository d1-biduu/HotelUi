import 'package:flutter/material.dart';
import 'package:hotel_ui_task5/Screens/details.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  String? valueChoose;
  List hotelItems = [
    [
      'assets/images/bali.jpg',
      ' Blue Yoga Motel, Bali',
      'Legian Nort St, Kuta, Bali',
      'The motel is located in the most popular tourist area in Bali, perfect for those of you who like backpackers.',
      '\$15',
      '4.5',
    ],
    [
      'assets/images/hotel1.jpeg',
      'Mongkey Forest House',
      'Mongkey forest st, Ubud, Balli',
      'A comfortable and quiet house located near the monkey forest Ubud, you will have the best holiday ever.',
      '\$20',
      '1.2'
    ]
  ];
  final dropDownList = [
    'Bali, Indonesia',
    'Kathmandu, Nepal',
    'Male, Malvides',
    'Seoul, South Korea',
    'Manila, Philippines'
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0x43C4BFBF),
            leading: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, bottom: 10, right: 3, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search,
                        color: Colors.black, size: 24)),
              ),
            ),
            title: const Center(
              child: Text(
                "Explore",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                    letterSpacing: 0.3,
                    color: Color(0xff333333)),
              ),
            ),
            actions: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    child: Image.asset(
                      'assets/images/girl.jpg',
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Color(0xff333333),
                        size: 30,
                      ))
                ],
              )
            ],
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0x43C4BFBF),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 10, right: 15, ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: const Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Text(
                            'Select Location',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.3,
                                color: Color(0xff828282)),
                          ),
                        ),
                        subtitle: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                            children: [
                          
                              DropdownButton(
                                value: valueChoose,
                                hint: const Text(
                                  "Bali, Indonesia",
                                  style:  TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.3,
                                      color: Color(0xff000000)),
                                ),
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.black,
                                  size: 34,
                                  
                                ),
                                
                            
                                underline: SizedBox(),
                                onChanged: (newValue) {
                                  setState(() {
                                    valueChoose = newValue!;
                                  });
                                },
                                items: dropDownList.map((valueItem) {
                                  return DropdownMenuItem(
                                      value: valueItem,
                                      child: Text(
                                        valueItem,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.3,
                                            color: Color(0xff000000)),
                                      ));
                                }).toList(),
                              
                                
                               
                              ),
                            ]),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 20,
                      child: TabBar(
                        controller: tabController,
                        indicator: const BoxDecoration(),
                    
                        // indicatorColor: Color.fromARGB(255, 91, 89, 226),
                        unselectedLabelColor: Color(0xffbdbdbd),
                        labelColor: Color(0xFF5654E8),
                        isScrollable: true,
                        tabs: const [
                          Tab(
                              child: Text("All",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 1.25,
                                    letterSpacing: 0.3,
                                  ))),
                          Tab(
                            child: Text("Guest House",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25,
                                  letterSpacing: 0.3,
                                )),
                          ),
                          Tab(
                            child: Text("B&B",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25,
                                  letterSpacing: 0.3,
                                )),
                          ),
                          Tab(
                            child: Text("Hotel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25,
                                  letterSpacing: 0.3,
                                )),
                          ),
                          Tab(
                            child: Text("Motel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25,
                                  letterSpacing: 0.3,
                                )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: TabBarView(controller: tabController, children: [
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: hotelItems.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  if (index == 0) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Details()),
                                    );
                                  }
                                  ;
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 18),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    width: MediaQuery.of(context).size.width *
                                        0.57,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.20,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.57,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  hotelItems[index][0]),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(25),
                                              topRight: Radius.circular(25),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: const Color(0xF6EEEEFF),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.bookmark ,
                                                size: 20,
                                                color: Color(0xff5b58e2),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Transform.translate(
                                            offset: Offset(
                                                0,
                                                MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.19 -
                                                    15 +
                                                    11),
                                            child: Container(
                                              height: 26,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: const Color(0xffeeeeff),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Motel',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0.2,
                                                    color: Color(0xff5b58e2),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.221,
                                          left: 10,
                                          right: 10,
                                          bottom: 5,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  hotelItems[index][1],
                                                  style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600,
                                                    height: 1.2,
                                                    letterSpacing: 0.3,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 2.0, bottom: 5),
                                                  child: Text(
                                                    hotelItems[index][2],
                                                    style: const TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.1,
                                                      letterSpacing: 0.3,
                                                      color:
                                                          Color(0xffbdbdbd),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  hotelItems[index][3],
                                                  style: const TextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    height: 1.3,
                                                    letterSpacing: 0.4,
                                                    color: Color(0xFF434343),
                                                  ),
                                                  textAlign:
                                                      TextAlign.justify,
                                                  maxLines: 3,
                                                ),
                                                const SizedBox(
                                                  height: 14,
                                                ),
                                                const Text(
                                                  'Start From',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    height: 1.2,
                                                    letterSpacing: 0.3,
                                                    color: Color(0xffbdbdbd),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      hotelItems[index][4],
                                                      style: const TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1.2,
                                                        letterSpacing: 0.3,
                                                        color:
                                                            Color(0xffea7203),
                                                      ),
                                                    ),
                                                    const Text(
                                                      " /Night",
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2.5,
                                                        letterSpacing: 0.3,
                                                        color:
                                                            Color(0xffbdbdbd),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 85,
                                                    ),
                                                    Text(
                                                      hotelItems[index][5],
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 1.25,
                                                        letterSpacing: 0.3,
                                                        color:
                                                            Color(0xff5b58e2),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              left: 4.0),
                                                      child: Icon(
                                                        Icons.star,
                                                        color:
                                                            Color(0xff5b58e2),
                                                        size: 20,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ]),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Recommendation",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.25,
                            letterSpacing: 0.3,
                            color: Color(0xFF535151),
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              "See All",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.25,
                                letterSpacing: 0.3,
                                color: Color(0xffea7203),
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_sharp,
                                color: Color(0xffea7203))
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      // width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hotelItems.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 18),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.57,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.20,
                                    width: MediaQuery.of(context).size.width *
                                        0.57,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(hotelItems[index][0]),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color(0xF6EEEEFF),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.bookmark,
                                          size: 20,
                                          color: Color(0xff5b58e2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Transform.translate(
                                      offset: Offset(
                                          0,
                                          MediaQuery.of(context).size.height *
                                                  0.19 -
                                              15 +
                                              11),
                                      child: Container(
                                        height: 26,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffeeeeff),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Motel',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.2,
                                              color: Color(0xff5b58e2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: MediaQuery.of(context).size.height *
                                        0.221,
                                    left: 10,
                                    right: 10,
                                    bottom: 5,
                                    child: SingleChildScrollView(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              hotelItems[index][1],
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2,
                                                letterSpacing: 0.3,
                                                color: Color(0xff333333),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 2.0, bottom: 5),
                                              child: Text(
                                                hotelItems[index][2],
                                                style: const TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1,
                                                  letterSpacing: 0.3,
                                                  color: Color(0xffbdbdbd),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              hotelItems[index][3],
                                              style: const TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3,
                                                letterSpacing: 0.4,
                                                color: Color(0xFF434343),
                                              ),
                                              textAlign: TextAlign.justify,
                                              maxLines: 3,
                                            ),
                                            const SizedBox(
                                              height: 14,
                                            ),
                                            const Text(
                                              'Start From',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2,
                                                letterSpacing: 0.3,
                                                color: Color(0xffbdbdbd),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  hotelItems[index][4],
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2,
                                                    letterSpacing: 0.3,
                                                    color: Color(0xffea7203),
                                                  ),
                                                ),
                                                const Text(
                                                  " /Night",
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    height: 2.5,
                                                    letterSpacing: 0.3,
                                                    color: Color(0xffbdbdbd),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 85,
                                                ),
                                                Text(
                                                  hotelItems[index][5],
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.25,
                                                    letterSpacing: 0.3,
                                                    color: Color(0xff5b58e2),
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.0),
                                                  child: Icon(
                                                    Icons.star,
                                                    color: Color(0xff5b58e2),
                                                    size: 20,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(35),
              topLeft: Radius.circular(35),
            ),
            child: BottomAppBar(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    tooltip: 'Home',
                    icon: Icon(Icons.home),
                    onPressed: () {},
                  ),
                  IconButton(
                    tooltip: 'Book Mark',
                    icon: Icon(Icons.bookmark),
                    onPressed: () {},
                  ),
                  IconButton(
                    tooltip: 'List',
                    icon: const Icon(Icons.list),
                    onPressed: () {},
                  ),
                  IconButton(
                    tooltip: 'Save',
                    icon:const Icon(Icons.save_alt),
                    onPressed: () {},
                  ),
                ],
            
        )
        ))));
  }
}
