import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_market_app/constance.dart';
import 'package:shopping_market_app/view/widget/custom_text.dart';

class HomeScreen extends StatelessWidget {
  final List<String> name = <String>['a', 'b', 'c', 'd'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          children: [
             _searchTextFormField(),
            TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            CustomText(
              text: "Category",
            ),
            SizedBox(
              height: 30,
            ),
            _listVieWCategory(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Best Selling',
                  fontSize: 18,
                ),
                CustomText(
                  text: 'See all',
                  fontSize: 16,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade100),
    );
  }

 Widget _listVieWCategory() {
    return Container(
      height: 100,
      child: ListView.separated(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade100),
                height: 60,
                width: 60,
                child: Image.asset('assets/images/Icon_Mens Shoe.png'),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: name[index],
              ),
            ],
          );
        },
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 20,
        ),
      ),
    );
 }

  Widget _listViewProducts(){
    return Container(
      height: 350,
      child: ListView.separated(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width*.4,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade100
                  ),
                  child: Container(
                    height:220,
                      width: MediaQuery.of(context).size.width*.4,
                      child: Image.asset(
                          'assets/images/Image.png',
                        fit: BoxFit.fill,
                      ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: "BeoPlay Speaker",
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: "BeoPlay Speaker",
                  color: Colors.grey,
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: "\$755",
                  color: primaryColor,
                  alignment: Alignment.bottomLeft,
                ),

              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 20,
        ),
      ),
    );
  }
}


