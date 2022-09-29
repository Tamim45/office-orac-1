import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AppCard extends StatefulWidget {
  const AppCard({super.key});

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return
      Card(
        // elevation: 4,
        // shadowColor: Colors.black12,
        // margin: const EdgeInsets.all(20),
        child: Stack(alignment: Alignment.bottomRight, children: <Widget>[
          Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Image.asset('images/10.png'),
            Text(
              'Chicken Biriyani',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80.0),
              child: Text(
                "\$5",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ]),
        ),
        FloatingActionButton.small(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: Color(0xffFB931C),
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.add, color: Colors.white,),
        ),
        // ElevatedButton(
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(5.0)),
        //       backgroundColor: const Color(0xffFB931C)),
        //   child: const Center(
        //       child: Icon(
        //     Icons.add,
        //     color: Colors.white,
        //   )),
        // )
      ]),
      );
  }
}
