import 'package:flutter/material.dart';
import 'package:big_music_theory/screens/details.dart';
import 'package:big_music_theory/utils/data.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  int _index = 0;
  TabController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = TabController(
        vsync: this,
        length: 2,
      initialIndex: _index
    );
  }

  var title = '';

  @override
  Widget build(BuildContext context) {
    var body1 = Container(
      color: Theme.of(context).primaryColor,
      child: GridView.builder(
          shrinkWrap: false,
          itemCount: Data.recipes.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                recipe: Data.recipes[index],
                              )));
                },
                child: Card(
                  color: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                            child: Hero(
                              tag: Data.recipes[index].id,
                              child: FadeInImage(
                                image:
                                    AssetImage(Data.recipes[index].imageUrl),
                                fit: BoxFit.cover,
                                placeholder:
                                    AssetImage('assets/images/loading.gif'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            Data.recipes[index].title,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );

    var body2 = Container(
        decoration: BoxDecoration(
          color: Color(0xff263341)
        ),
        child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 16),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.5,
            decoration: BoxDecoration(
              color: Color(0xff8DB646),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(32),
                bottomLeft: Radius.circular(32)
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: <Widget>[
                          Text('Modulos',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Text('12',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/astronaut.jpg')
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        children: <Widget>[
                          Text('Exercícios',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Text('18',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 25),
                  child: Text('Musiconauta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text('MISSÕES CUMPRIDAS:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
            padding: EdgeInsets.all(42),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.assignment_turned_in, color: Colors.white,),
                        Text('Módulo 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.assignment_turned_in, color: Colors.white,),
                        Text('Módulo 2',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.assignment_turned_in, color: Colors.white,),
                        Text('Módulo 3',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.assignment_turned_in, color: Colors.white,),
                        Text('Módulo 4', style: TextStyle(
                          color: Colors.white
                        ))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.assignment_turned_in, color: Colors.white,),
                        Text('Módulo 5', style: TextStyle(
                          color: Colors.white
                        ))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.assignment_turned_in, color: Colors.white,),
                        Text('Módulo 6', style: TextStyle(
                          color: Colors.white
                        ))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
        )
      );
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Módulos / Perfil'),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
           body1,
           body2
          ]
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color(0xff8DB646),
        onItemSelected: (index) => setState(() {
            _index = index;
            _controller.animateTo(_index);
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Módulos'),
            activeColor: Color(0xff263341),
            inactiveColor: Colors.white
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
            activeColor: Color(0xff263341),
            inactiveColor: Colors.white
          ),
        ],
      ),
    );
  }
}
