import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  
  ProductCard(this.image);
  
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Padding(
        padding: const EdgeInsets.only( right: 10),
        child: Container(

          width: MediaQuery.of(context).size.width / 2 -29,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width / 2 - 64,
                height: 150,
                child: Image.asset(
                    image,
                ),

              ),

              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left:3.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Boat Rockerz 430 Bluetooth On Ear Headphone',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'Montserrat',

                          fontSize: 11,
                          color: Colors.white
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFe0450a).withOpacity(0.51),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      )
                    ),
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xfffbd085).withOpacity(0.46)
          ),
        ),
      ),
    );
  }
}
