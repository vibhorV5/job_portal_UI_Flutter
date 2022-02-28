import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String jobTitle;
  final int hourlyRate;
  final String imgUrl;
  final String companyName;

  JobCard(
      {required this.companyName,
      required this.jobTitle,
      required this.hourlyRate,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 280,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset(
                        imgUrl,
                        height: 60,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.grey[500],
                          child: Text(
                            'Part Time',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    jobTitle,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '₹$hourlyRate/hr',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
