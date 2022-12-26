import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233F3A),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Social Media",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 60,
                      width: 60,
                      child: Image.asset("images/Telegram.png")),
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("images/Instagram.png")),
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("images/Tiktok.png")),
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset("images/Twitter.png")),


                ],
              ),
            ),
            Container(
              height: 5,
              margin: const EdgeInsets.symmetric(horizontal: 36,vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white.withOpacity(0.2)),
            ),
            Text(
              "@bobal.drink",
              style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xffF47500).withOpacity(0.88)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
