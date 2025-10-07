import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Build decorated image with border
  Widget _buildDecoratedImage(String imagePath) => Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    ),
  );

  // Build row with 2 images
  Widget _buildImageRow(String imagePath1, String imagePath2) => Row(
    children: [
      _buildDecoratedImage(imagePath1),
      _buildDecoratedImage(imagePath2),
    ],
  );

  // Build image column with 2 rows
  Widget buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(color: Colors.black26),
      child: Column(
        children: [
          _buildImageRow('img/hotel.png', 'img/jungle.png'),
          _buildImageRow('img/mountain.png', 'img/pavlova.png'),
        ],
      ),
    );
  }

  // Build GridView with extent
  Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(30),
  );

  // Generate grid tiles
  List<Widget> _buildGridTileList(int count) => List.generate(
    count,
    (i) => Container(
      color: Colors.primaries[i % Colors.primaries.length],
      child: Center(
        child: Text(
          'Item $i',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );

  // Build ListView
  Widget _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile(
          'United Artists Stonestown Twin',
          '501 Buckingham Way',
          Icons.theaters,
        ),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        const Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }

  // Build ListTile
  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      ),
      subtitle: Text(subtitle),
      leading: Icon(icon, color: Colors.blue[500]),
    );
  }

  @override
  Widget build(BuildContext context) {
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // Title text
    final titleText = Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Strawberry Pavlova',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );

    // Subtitle text
    final subTitle = const Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
    );

    // Rating stars row
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    // Icon list with 3 columns structure
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    // Left column content
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [titleText, subTitle, ratings, iconList],
      ),
    );

    // Main image
    final mainImage = Image.asset('img/pavlova.png', fit: BoxFit.cover);

    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text('Flutter Layout Demo'),
            backgroundColor: Colors.green[500],
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Recipe Card'),
                Tab(text: 'Image Grid'),
                Tab(text: 'GridView'),
                Tab(text: 'ListView'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Tab 1: Recipe Card
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                  height: 600,
                  child: Card(
                    elevation: 4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 440, child: leftColumn),
                        Expanded(child: mainImage),
                      ],
                    ),
                  ),
                ),
              ),
              // Tab 2: Image Grid (2x2)
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildImageColumn(),
              ),
              // Tab 3: GridView
              _buildGrid(),
              // Tab 4: ListView
              _buildList(),
            ],
          ),
        ),
      ),
    );
  }
}