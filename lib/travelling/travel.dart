import 'package:flutter/material.dart';

import 'listview.dart';


class travel extends StatelessWidget {
  const travel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body:Stack(
         children: [
           upperUi(context),
           lowerUi(context),
           const Padding(
             padding: EdgeInsets.only(bottom: 100),
             child: Column(

               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 90,),
                  child: Text(
   'Algeria',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w700,


                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 90),
                  child: Text(
                    '20 october',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,


                    ),
                  ),
                )
              ],
             ),
           )
         ],
       )




    );

  }
}



Widget upperUi(BuildContext context){
  return
    Container(
        height: MediaQuery.of(context).size.height * .55,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(image:DecorationImage(image:
        NetworkImage(
          'https://images.pexels.com/photos/8861691/pexels-photo-8861691.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',

        ),
            fit: BoxFit.fill
        )

        )


    );





}

Widget lowerUi(BuildContext context){
  return
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0
                ),
              topRight: Radius.circular(25.0)
            )


          ),
          child: ListView(
            children:  const [
              lists(
                image:'https://www.africaguide.com/accomm/images/uploads/605/stand_605_1213193999.jpg',
                title: 'Swheraton hotel oran',
                expense: 4.55, rate: 200,
              ),
              lists(
                image:'https://cache.marriott.com/content/dam/marriott-renditions/ORNMD/ornmd-terrace-7586-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1846px:*', rate: 250,title: 'Rodina hotel oran',expense: 5,
              ),


            ],


      ),

          ),
    );








}


