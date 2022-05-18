import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 22),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/3.jpg',
                      fit: BoxFit.fill,
                      width: 180,
                      height: 250,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "AGRA",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 22),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/4.jpg',
                      fit: BoxFit.fill,
                      width: 180,
                      height: 250,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "MANALI",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
