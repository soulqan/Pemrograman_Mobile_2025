# Praktikum 1

Soal 1

```dart
appBar: AppBar(
        title: const Text('JSON - Soultan'),
        backgroundColor: const Color.fromARGB(255, 17, 125, 179),
      ),
```

<img src="img/soal1.jpeg" alt="Demo Photo Filter" width="300">

# Praktikum 2

<img src="img/prak2.png" alt="Demo Photo Filter" width="300">

Soal 2

Menambahkan field baru yaitu category

```json
{ 
      "id": 4, 
      "pizzaName": "Carciofi", 
      "description": "Pizza with tomato, fresh mozzarella and artichokes",
      "price": 8.80, 
      "imageUrl": "images/marinara.png",
      "category": "Vegetarian"
    }, 
```
<img src="img/prak2_1.png" alt="Demo Photo Filter" width="600">

<img src="img/soal2.gif" alt="Demo Photo Filter" width="300">

# Praktikum 3

<img src="img/prak3.png" alt="Demo Photo Filter" width="600">

Soal 3

<img src="img/soal3.gif" alt="Demo Photo Filter" width="300">

# Praktikum 4

<img src="img/prak4.png" alt="Demo Photo Filter" width="600">

Soal 4 

kode untuk menghapus

```dart
return ListView.builder(
  itemCount: pizzas.length,
  itemBuilder: (BuildContext context, int position) {
    final pizza = pizzas[position];
    return Dismissible(
      key: Key(position.toString()),
      onDismissed: (item) {
        HttpHelper helper = HttpHelper();
        setState(() {
          pizzas.removeAt(position);
        });
        helper.deletePizza(pizza.id!);
      },
      child: ListTile(
        title: Text(pizza.pizzaName ?? 'No Name'),
        subtitle: Text(
          '${pizza.description ?? 'No Description'} - € ${pizza.price ?? 0.0}\nCategory: ${pizza.category ?? 'No Category'}',
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  PizzaDetailScreen(pizza: pizza, isNew: false),
            ),
          );
        },
      ),
    );
  },
);
```
<img src="img/soal4.gif" alt="Demo Photo Filter" width="300">
