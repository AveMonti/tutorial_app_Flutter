import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // = =======================================================================================PART 2
          SizedBox(height: 40.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                Text(
                  'Healthy',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
                ),
                SizedBox(width: 10.0),
                Text('Food',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          // = =======================================================================================PART 3
          Container(
           height: MediaQuery.of(context).size.height - 185.0,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
           ),
           child: ListView(
             primary: false,
             padding: EdgeInsets.only(left: 25.0, right: 20.0),
             children: [
               Padding(
                 padding: EdgeInsets.only(top: 45.0),
                 child: Container(
                   height: MediaQuery.of(context).size.height - 300.0,
                   child: ListView(
                     children: [
                       // = =======================================================================================PART 4 CD   
                       _buildFoodItem('assets/plate1.png', 'Salmon bowl', '\$24.00'),
                       _buildFoodItem('assets/plate2.png', 'Spring bowl', '\$24.00'),
                       _buildFoodItem('assets/plate3.png', 'Avocado bowl', '\$24.00'),
                       _buildFoodItem('assets/plate4.png', 'Berry bowl', '\$24.00'),
                       _buildFoodItem('assets/plate5.png', 'Salmon bowl', '\$24.00'),
                       _buildFoodItem('assets/plate6.png', 'Salmon bowl', '\$24.00'),
                       _buildFoodItem('assets/plate1.png', 'Salmon bowl', '\$24.00'),
                       _buildFoodItem('assets/plate2.png', 'Spring bowl', '\$24.00'),
                       _buildFoodItem('assets/plate3.png', 'Avocado bowl', '\$24.00'),
                       _buildFoodItem('assets/plate4.png', 'Berry bowl', '\$24.00'),
                       _buildFoodItem('assets/plate5.png', 'Salmon bowl', '\$24.00'),
                       _buildFoodItem('assets/plate6.png', 'Salmon bowl', '\$24.00'),
                     ],
                   ),
                 ),
               )
             ],
           ),
          )
        ],
      ),
    );
  }
}

// = =======================================================================================PART 4 
Widget _buildFoodItem(String imgPath, String foodName, String price) {
  return Padding(
    padding: EdgeInsets.only(left: 10.0,right: 10.0, top:  10.0),
    child: InkWell(
      onTap: () {

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Hero (
                  tag: imgPath,
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,
                  ),
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
              color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}