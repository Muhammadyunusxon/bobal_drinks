import 'package:bobal_drinks/Pages/Model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  final MenuModel data;

  const ProductPage({Key? key, required this.data}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              widget.data.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    Text(
                      widget.data.name,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Text(
                    widget.data.info,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white.withOpacity(0.9),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  if(count>0){
                                    count-=1;
                                    setState(() {
                                    });
                                  }
                                }, icon: const Icon(Icons.remove),),
                            Text(
                              count.toString(),
                              style: GoogleFonts.poppins(
                                color: const Color(0xfff47500).withOpacity(0.6),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                count+=1;
                                setState(() {
                                });
                              }, icon: const Icon(Icons.add),),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 7,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color(0xffF47500).withOpacity(0.8),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Add",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "${widget.data.price*count} k",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
