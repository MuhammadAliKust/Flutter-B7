import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          size: 17,
        ),
        title: Text(
          "Search",
          style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xff27272E)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            Divider(
              height: 1,
              color: Color(0xffE9E9ED),
            ),
            SizedBox(
              height: 18,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/images/post_header.png')),

          SizedBox(height: 10,),
            Row(
              children: [
                Image.asset(
                  'assets/images/channel_logo.png',
                  height: 36,
                  width: 36,
                ),
                SizedBox(width: 7,),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "A protester carries the Confederate flag after breaching US Capitol security",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "5 hours ago    |     News18",
                          style: GoogleFonts.poppins(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff464646)),
                        )
                      ],
                    )),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/like.png', height: 24, width: 24, ),
                Image.asset('assets/images/bookmark.png', height: 24, width: 24,),
                Image.asset('assets/images/copy.png', height: 24, width: 24,),
                Image.asset('assets/images/send.png', height: 24, width: 24,),
              ],
            ),
            SizedBox(height: 6,),
            Divider(
              height: 1,
              color: Color(0xffE9E9ED),
            ),
          ],
        ),
      ),
    );
  }
}
