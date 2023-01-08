import 'package:flutter/material.dart';

class ArtistsListWidget extends StatelessWidget {
  String artistImage, artistName;
  int artistSongNumber;
  ArtistsListWidget({
    Key? key,
    required this.artistImage,
    required this.artistName,
    required this.artistSongNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20, right: 20, left: 5),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFF30314D),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, "albumPage");
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(artistImage,
                    fit: BoxFit.cover, height: 60, width: 60,),
                ),
              ),
              SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    artistName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    artistSongNumber.toString(),
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.more_vert_rounded,
                color: Colors.white.withOpacity(0.6),
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}