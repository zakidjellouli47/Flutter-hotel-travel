import 'package:flutter/material.dart';


class lists extends StatelessWidget {
  const lists(
      {super.key, required this.image, required this.rate, required this.expense, required this.title});

  final String image;
  final int rate;
  final String title;
  final double expense;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.20,
      width: MediaQuery
          .of(context)
          .size
          .width * 0.9,
      margin: const EdgeInsets.only(bottom: 15 ,left: 15,right: 15),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            spreadRadius:5,
          offset: Offset(
            4,8
          )

          )
        ]


      ),
      child:  Row(
        children: [

          _image(context),
          _Rate(),

        ],
      ),


    );
  }


  Widget _image(BuildContext context) {
    double size = MediaQuery
        .of(context)
        .size
        .width * 0.48;
    return SizedBox(
      height: size,
      width: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network(
          image,
          fit: BoxFit.contain,
        ),
      ),


    );
  }

  Widget _Rate(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Padding(
        padding: const EdgeInsets.only(left: 15,top: 15),
        child: Text(
        title,
        style: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 11,

        ),
        ),
      ),

        Row(

          children: [

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                expense.toStringAsFixed(
                  1,

                ),
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:4.0),
              child: Icon(
                Icons.star_half_rounded,
                size: 10,
                color: Colors.yellowAccent,

              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(bottom: 3,left: 0),
          child: Text(
            '$rate\$',
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w100,
              fontSize: 10,

            ),
          ),
        ),





      ],
    );


  }

  Widget _hotelStar(){
    return Row(
      children: [

      ],
    );


  }



}
