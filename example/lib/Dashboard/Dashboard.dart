import 'package:example/Dashboard/src/ProjectProgressCard.dart';
import 'package:example/Dashboard/src/ProjectStatisticsCards.dart';
import 'package:example/Dashboard/src/SharedFilesItem.dart';
import 'package:example/Dashboard/src/SubHeader.dart';
import 'package:example/Dashboard/src/Tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.14,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.86,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
              child: Text(
                'Ongoing Projects',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Tabs(),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 200.0,
              width: MediaQuery.of(context).size.width * 0.62,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProjectProgressCard(
                    color: Color(0xffFF4C60),
                    projectName: 'The Maptrix',
                    percentComplete: '34%',
                    progressIndicatorColor: Colors.redAccent[100],
                    icon: Feather.moon,
                  ),
                  ProjectProgressCard(
                    color: Color(0xff6C6CE5),
                    projectName: 'Delivery Club',
                    percentComplete: '78%',
                    progressIndicatorColor: Colors.blue[200],
                    icon: Feather.truck,
                  ),
                  ProjectProgressCard(
                    color: Color(0xffFAAA1E),
                    projectName: 'Travel Comrode',
                    percentComplete: '82%',
                    progressIndicatorColor: Colors.amber[200],
                    icon: Icons.local_airport,
                  ),
                ],
              ),
            ),
            SubHeader(
              title: 'Shared Files',
            ),
            SharedFilesItem(
              color: Colors.blue,
              sharedFileName: 'Company Guidelines',
              members: '28 members',
              et: '10 Oct 2019',
              fileSize: '2.3 MB',
            ),
            SharedFilesItem(
              color: Colors.amber,
              sharedFileName: 'Company Policy',
              members: '30 members',
              et: '27 Sep 2019',
              fileSize: '4.2 MB',
            ),
            SharedFilesItem(
              color: Colors.red,
              sharedFileName: 'Wireframes',
              members: '14 members',
              et: '08 Oct 2019',
              fileSize: '1.6 MB',
            ),
            SubHeader(
              title: 'Project Statistics',
            ),
            ProjectStatisticsCards(),
          ],
        ),
      ),
    );
  }
}


