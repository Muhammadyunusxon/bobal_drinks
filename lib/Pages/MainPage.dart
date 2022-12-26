import 'package:bobal_drinks/Pages/OrderHistory.dart';
import 'package:bobal_drinks/Pages/SocialPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MenuPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233F3A),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 18),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const MenuPage();
                  }));
                },
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12,),
                  child: Center(
                    child: Text(
                      "Menu",
                      style: GoogleFonts.poppins(
                        color: const Color(0xff9E6B3A),
                        fontSize: 28,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 18),
              child: InkWell(
                onTap: () {},
                child:  SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Bobals Benefits",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff9E6B3A),
                          fontSize: 28,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 18),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const OrderHistoryPage();
                  }));
                },
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12,),
                  child: Center(
                    child: Text(
                      "Order History",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff9E6B3A),
                          fontSize: 28,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 18),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const SocialPage();
                  }));
                },
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12,),
                  child: Center(
                    child: Text(
                      "Social Media",
                      style: GoogleFonts.poppins(
                          color: const Color(0xff9E6B3A),
                          fontSize: 28,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
