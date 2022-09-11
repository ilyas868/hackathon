import 'package:app/components/catageroy.dart';
import 'package:app/screens/dashboard/dashbord_2.dart';
import 'package:app/screens/dashboard/lessons.dart';
import 'package:flutter/material.dart';

class DashBoardMain extends StatelessWidget {
  const DashBoardMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi hafiz `👋👋 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Let’s Find Your ',
                          ),
                          Text(
                            'Course!',
                            style: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          )),
                      child: Icon(
                        Icons.shopping_basket_outlined,
                        size: 28,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          )),
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SearchField(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Categories(),
          )
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        style: const TextStyle(
          color: Colors.grey,
        ),
        decoration: InputDecoration(
            fillColor: Colors.white,
            focusColor: Colors.white,
            filled: true,
            hintText: 'Search your course',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xFFE1E1E1FF), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFFE1E1E1FF), width: 1),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            )),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem(),
            CategoryItem(),
            CategoryItem(),
            CategoryItem()
          ],
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem(),
            CategoryItem(),
            CategoryItem(),
            CategoryItem()
          ],
        ),
        SizedBox(
          height: 35,
        ),
        ContainerProgress(color1: Color(0xff2EC4B6), color2: Color(0xffFFDAA8)),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 20),
              child: Text(
                "Recommendation Course",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            //
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  Dashbaord2()),
                );
              },
              child: Text(
                "(See all)",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            )
          ],
        )
      ],
    );
  }
}
