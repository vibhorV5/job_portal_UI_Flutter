import 'package:flutter/material.dart';
import 'package:simple_ui/widgets/job_card.dart';
import 'package:simple_ui/widgets/recent_job_card.dart';
import 'nav_bar.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<List<dynamic>> jobForYou = [
    // [companyName, jobTitle, hourlyRate, imgUrl]

    ['Uber', 'UI/UX Designer', 250, 'assets/images/uber.png'],
    ['Google', 'Product Developer', 900, 'assets/images/google.png'],
    ['Apple', 'Software Engineer', 780, 'assets/images/apple.png'],
  ];

  final List recentlyAddedJobs = [
    ['assets/images/nike.png', 'Web Developer', 'Nike', 570],
    ['assets/images/apple.png', 'Software Designer', 'Apple', 660],
    ['assets/images/google.png', 'Product Designer', 'Google', 780],
    ['assets/images/nike.png', 'UI/UX Designer', 'Nike', 680],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //appbar
          SizedBox(
            height: 75,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white)),
                  height: 40,
                  child: Image.asset(
                    'assets/images/menuleft.png',
                    color: Colors.grey[800],
                  ),
                ),
              );
            }),
          ),
          const SizedBox(
            height: 25,
          ),

          //discover a new path

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a New Path',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          //search bar

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'assets/images/search.png',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: ('Search for a job..'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('assets/images/settings.png',
                      color: Colors.white),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          //for you -> job cards

          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'For You',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          Container(
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobForYou.length,
                itemBuilder: (context, index) {
                  return JobCard(
                      companyName: jobForYou[index][0],
                      jobTitle: jobForYou[index][1],
                      hourlyRate: jobForYou[index][2],
                      imgUrl: jobForYou[index][3]);
                }),
          ),
          //recently added -> job tiles
          SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Recently Added',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: recentlyAddedJobs.length,
              itemBuilder: (context, index) => RecentJobCard(
                imgUrl: recentlyAddedJobs[index][0],
                jobTitle: recentlyAddedJobs[index][1],
                companyName: recentlyAddedJobs[index][2],
                hourlyRate: recentlyAddedJobs[index][3],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
