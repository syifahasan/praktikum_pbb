import 'package:flutter/material.dart';
class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.amber,
              ],
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://instagram.fcgk18-2.fna.fbcdn.net/v/t51.2885-19/131273797_3443126325765426_5167344177874070297_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fcgk18-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=ELWnKdyS_gAAX_Y8rCK&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfDqGH_cCpOCO5lnCOWkZCvkEfL181W4HLCMlYGcSwkMjw&oe=6411212E&_nc_sid=1527a3",
                ),
              ),
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(60),
              color: Colors.blue),
        ),
      ],
    );
  }
}