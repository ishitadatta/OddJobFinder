import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'applypages.dart';
import 'cart.dart';
import 'page3.dart';
import 'application1.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePageApply(),
  ));
}

class HomePageApply extends StatefulWidget {
  @override
  _HomePageApplyState createState() => _HomePageApplyState();
}

class _HomePageApplyState extends State<HomePageApply> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      color: Colors.red,
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/b1.jpeg'),
          AssetImage('images/b2.jpeg'),
          AssetImage('images/b3.jpeg'),
          AssetImage('images/b4.jpeg'),
          AssetImage('images/b5.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        indicatorBgPadding: 3.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('OddJobFinder'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.event_available,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart_jobsApply()));
              }),
          IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page()));
              })
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Ishita'),
            accountEmail: Text('isheeta50@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red
            ),
            ),

            //body

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('HomePage'),
              leading: Icon(Icons.home, color: Colors.purple),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('MyAccount'),
              leading: Icon(Icons.person, color: Colors.purple),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Popular Jobs'),
              leading: Icon(Icons.accessibility, color: Colors.purple),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
            },
            child: ListTile(
              title: Text('Services Available'),
              leading: Icon(Icons.event_available, color: Colors.purple),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite, color: Colors.red),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings,color: Colors.blue),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.green),
            ),
          ),
        ],
      )),
      body: ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,

          //padding widget
         /* Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),*/

          //Horizontal ListView begins here
         // HorizontalList(),

          //padding widget
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Job Categories'),
          ),

          //grid view
          Container(
            height: 320.0,
            child: Jobs(),
          )
        ],
      ),
    );
  }
}

/*class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220.0,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Category(
            image_location: 'images/plumbing.jpg',
            image_caption: 'Plumber',
          ),
          Category(
            image_location: 'images/carpentry.jpg',
            image_caption: 'Carpenter',
          ),
          Category(
            image_location: 'images/gardener.jpg',
            image_caption: 'Gardener',
          ),
          Category(
            image_location: 'images/maid.jpg',
            image_caption: 'Maid',
          ),
          Category(
            image_location: 'images/cook.jpg',
            image_caption: 'Cook',
          ),
          Category(
            image_location: 'images/driver.jpg',
            image_caption: 'Driver',
          ),
        ]));
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 300.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 170.0,
                height: 170.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: TextStyle(fontSize: 20.0),
                ),
              )),
        ),
      ),
    );
  }
}*/

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  var job_list = [
    {
      "name": "Carpentry",
      "picture": "images/carpentry.jpg",
      "old_cost": 200,
      "new_cost": 600,
    },
    {
      "name": " Gardening ",
      "picture": "images/gardener.jpg",
      "old_cost": 200,
      "new_cost": 600,
    },
    {
      "name": "House maid",
      "picture": "images/maid.jpg",
      "old_cost": 400,
      "new_cost": 600,
    },
    {
      "name": "Cook ",
      "picture": "images/cook.jpg",
      "old_cost": 600,
      "new_cost": 1000,
    },
    {
      "name": "Driver",
      "picture": "images/driver.jpg",
      "old_cost": 300,
      "new_cost": 700,
    },
    {
      "name": "Plumbing",
      "picture": "images/plumbing.jpg",
      "old_cost": 800,
      "new_cost": 1000,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: job_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_job(
            job_name: job_list[index]['name'],
            job_picture: job_list[index]['picture'],
            job_old_cost: job_list[index]['old_cost'],
            job_new_cost: job_list[index]['new_cost'],

          );
        });
  }
}

class Single_job extends StatelessWidget {
  final job_name;
  final job_picture;
  final job_old_cost;
  final job_new_cost;


  Single_job({
    this.job_name,
    this.job_picture,
    this.job_old_cost,
    this.job_new_cost,

  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(
                new MaterialPageRoute(
                  //here we are passing the values of the job to the job details page
                  builder: (context) =>  ApplyJobDetails(
                    job_detail_name: job_name,
                    job_detail_new_cost: job_new_cost,
                    job_detail_old_cost: job_old_cost,
                    job_detail_picture: job_picture,

                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                   
                   /* child: ListTile(
                      leading: Text(
                        job_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$job_new_cost",
                        style: TextStyle(
                           color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                       subtitle: Text(
                        "\$$job_old_cost",
                        style: TextStyle(
                           color: Colors.black54, fontWeight: FontWeight.w800/*,
                           decoration: TextDecoration.lineThrough*/),
                      ),*/
                       child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(job_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
                        ),
                         // Text("\$${job_new_cost}", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),)
                      ]
                    )
                      

                    ),
                  
                  child: Image.asset(
                    job_picture,
                    fit: BoxFit.cover,
                  )),
          ),
            ),
          ));
  }
}
