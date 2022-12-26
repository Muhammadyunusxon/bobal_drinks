import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Model.dart';
import 'ProductPage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<MenuModel> data = [
    MenuModel(
      name: "Coffee",
      price: 20,
      description: "Include Topping+ 2k for jahe",
      info: 'a sweet milk-coffee with topping ginger/sinom/curcuma boba',
      image: 'images/coffee.jpg',
    ),
    MenuModel(
      name: "Soda",
      price: 20,
      description: "Include Topping + 2k for jahe",
      info:
          'a refreshing soda & little ginger hint with topping ginger/sinom/curcuma boba',
      image: 'images/soda.jpg',
    ),
    MenuModel(
      name: "Milk Tea",
      price: 15,
      description: "Include Topping + 2k for jahe",
      info: 'a good mixed milk&tea with topping ginger/sinom/curcuma boba',
      image: 'images/milktea.png',
    ),
    MenuModel(
      name: "Latte",
      price: 18,
      description: "Include Topping + 2k for jahe",
      info: 'a original fresh milk with topping ginger/sinom/curcuma boba',
      image: 'images/latte.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233F3A),
      appBar: AppBar(
        backgroundColor: const Color(0xff233F3A),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: GoogleFonts.abhayaLibre(
                    fontSize: 48,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xffF47500).withOpacity(0.88),
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ProductPage(data: data[index],)),);
                      },
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 18),
                        decoration: BoxDecoration(
                            color: const Color(0xffF47500).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  data[index].name,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  data[index].description,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              "${data[index].price} k",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
