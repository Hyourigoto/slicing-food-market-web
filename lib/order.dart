import 'package:flutter/material.dart';
import 'profile.dart'; // Import file profile.dart

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        "image": 'image.png',
        "name": "Burger King Medium",
        "price": "Rp. 50.000,00",
      },
      {
        "image": 'prime-hydration-case-12-x-500ml-all-flavours-678887.png',
        "name": "Teh Botol",
        "price": "Rp. 4.000,00",
      },
      {
        "image": 'images.jpeg',
        "name": "Burger King Small",
        "price": "Rp. 35.000,00",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Page'),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            icon: const Icon(Icons.add),
            label: const Text('Add Data'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              elevation: 0,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Tambahkan logika profil di sini
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: ListTile(
              leading: Image.asset(
                product["image"]!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(product["name"]!),
              subtitle: Text(product["price"]!),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  // Tambahkan logika hapus item
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
