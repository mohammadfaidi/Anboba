import 'package:anboba/models/consts.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:badges/badges.dart';

import '../models/gasclass.dart';

class IndexScreen extends StatefulWidget {
  @override
  _indexScreenState createState() => _indexScreenState();
}

class _indexScreenState extends State<IndexScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "ANBOBA Delievery",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 23, 101, 121),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10),
        child: Column(
          children: [
            TabBar(
                controller: _controller,
                unselectedLabelStyle:
                    TextStyle(fontSize: 16, fontFamily: 'Family Name'),
                labelStyle: TextStyle(fontSize: 16, fontFamily: 'Family Name'),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 23, 101, 121)),
                unselectedLabelColor: Colors.grey.shade800,
                tabs: const [
                  Tab(
                    text: '35 L',
                  ),
                  Tab(
                    text: '50 L',
                  ),
                  Tab(
                    text: '75 L',
                  ),
                  Tab(
                    text: '100 L',
                  ),
                ]),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: TabBarView(controller: _controller, children: [
                _buildlistitem(items: L35),
                _buildlistitem(items: L50),
                _buildlistitem(items: L75),
                _buildlistitem(items: L100),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildlistitem({required List<Gas> items}) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return index % 2 == 0
              ? BounceInLeft(
                  duration: const Duration(milliseconds: 1000),
                  child: _builditem(myitems: items, index: index))
              : BounceInRight(
                  duration: const Duration(milliseconds: 1000),
                  child: _builditem(myitems: items, index: index));
        });
  }

  Widget _builditem({required List<Gas> myitems, required int index}) {
    return GestureDetector(
      onTap: () {
        /*  Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => DetailsPage(
                      item: myitems[index],
                    )));
                    */
        print("hello");
      },
      child: AspectRatio(
        aspectRatio: 3 / 2.3,
        child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: myitems[index].color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10, color: Colors.grey, offset: Offset(0, 10))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    myitems[index].img,
                    fit: BoxFit.cover,
                    width: 130,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          myitems[index].name,
                          style: style.copyWith(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              myitems[index].isselected =
                                  !myitems[index].isselected;
                            });
                            myitems[index].isselected
                                ? favouriteitems.add(myitems[index])
                                : favouriteitems.remove(myitems[index]);
                          },
                          child: Icon(
                            Icons.favorite_sharp,
                            color:
                                myitems[index].isselected ? Colors.red : white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      myitems[index].company,
                      style: style.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    const Spacer(),
                    Text(
                      '${myitems[index].price} \$',
                      style: style.copyWith(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
