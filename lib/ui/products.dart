import 'package:flutter/material.dart';
import 'package:login_flutter/ui/navbar.dart';


class ProductCategoriesGrid extends StatelessWidget {
  final List<String> categoryNames = ['Fruits & Vegetables' , 'Cereals & Pulses', 'Organic Foods' , 'Others' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: Text('Product Categories'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 tiles in each row
        ),
        itemCount: categoryNames.length, // Number of tiles
        itemBuilder: (context, index) {
          return CategoryTile(index + 1); // Index starts from 0
        },
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final int categoryIndex;

  CategoryTile(this.categoryIndex);

  @override
  Widget build(BuildContext context) {
    final categoryImage = 'assets/category$categoryIndex.png';
    final List<String> categoryNames = ['','Fruits & Vegetables' , 'Cereals & Pulses', 'Organic Foods' , 'Others' ];

    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            categoryImage,
            width: 120,
            height: 120,
          ),
          SizedBox(height: 10),
          
          Text(
            categoryNames[categoryIndex],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
