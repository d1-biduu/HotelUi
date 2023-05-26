import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_ui_task5/Screens/home_page.dart';

import '../Widgets/bottombar.dart';

class Details extends StatelessWidget {
 
   Details({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bali.jpg'),
              fit: BoxFit.cover,
              opacity: 1)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()

                          ));
                        },
                        elevation: 1,
                        fillColor: Colors.transparent,
                        padding: const EdgeInsets.all(13.0),
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 22.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}
