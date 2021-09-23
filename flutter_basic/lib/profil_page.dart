import 'package:flutter/material.dart';

class MenuProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        ),
        title: Text(
          'Gitsgram',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            letterSpacing: 3.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_box,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.account_circle_rounded,
                        size: 35,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[Text('dimasbypr')],
                )
              ],
            ),
          ),
          Container(
            height: 350.0,
            width: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/minim2.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
          Container(
            child: Row(
              children: [
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.insert_comment_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.send_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.bookmark_add_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
