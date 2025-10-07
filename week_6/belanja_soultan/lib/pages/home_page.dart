import 'package:flutter/material.dart';
import 'package:belanja_soultan/models/item.dart';
import 'package:belanja_soultan/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Ayam Goreng',
        price: 17500,
        imageUrl:
            'https://images.unsplash.com/photo-1732185269471-b62b52ca46f9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', //ayam
        stock: 50,
        rating: 4.5,
      ),
      Item(
        name: 'Ayam Bakar',
        price: 20000,
        imageUrl:
            'https://images.unsplash.com/photo-1645066803665-d16a79a21566?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // ayam bakar
        stock: 100,
        rating: 4.8,
      ),
      Item(
        name: 'Nasi Putih',
        price: 14000,
        imageUrl:
            'https://images.unsplash.com/photo-1644131447497-8723db691320?q=80&w=1674&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 
        stock: 30,
        rating: 4.7,
      ),
      Item(
        name: 'Ikan Goreng',
        price: 22000,
        imageUrl:
            'https://images.unsplash.com/photo-1673436977947-0787164a9abc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 
        stock: 20,
        rating: 4.6,
      ),
      Item(
        name: 'Ikan Bakar',
        price: 24000,
        imageUrl:
            'https://images.unsplash.com/photo-1661939252817-ebb73304f4c7?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 
        stock: 45,
        rating: 4.4,
      ),
      Item(
        name: 'Ice Tea',
        price: 5000,
        imageUrl:
            'https://images.unsplash.com/photo-1601390395693-364c0e22031a?q=80&w=2831&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 
        stock: 60,
        rating: 4.9,
      ),
      Item(
        name: 'Lemon Tea',
        price: 12000,
        imageUrl:
            'https://images.unsplash.com/photo-1556679343-c7306c1976bc?q=80&w=2899&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        stock: 80,
        rating: 4.3,
      ),
      Item(
        name: 'Coffee Latte',
        price: 18000,
        imageUrl:
            'https://images.unsplash.com/photo-1585494156145-1c60a4fe952b?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 
        stock: 35,
        rating: 4.7,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 17, 76, 159),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemCard(item: item);
                },
              ),
            ),
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 113, 176, 203),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Nama: Soultan Mohammad Agnar Bisyarah',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 55, 91, 222),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'NIM: 2341720191',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 55, 91, 222),
            ),
          ),
        ],
      ),
    );
  }
}