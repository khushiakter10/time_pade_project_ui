import 'package:flutter/material.dart';
import '../../../gen/assets.gen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  // Initial list of items
  final List<Map<String, dynamic>> items = [
    {
      "name": "Tomato",
      "weight": "1Kg",
      "price": "\$50",
      "image": Assets.images.dog,
    },
    {
      "name": "Tangerines",
      "weight": "300M",
      "price": "\$50",
      "image": Assets.images.dog,
    },
    {
      "name": "Bananas",
      "weight": "2000m",
      "price": "\$60",
      "image": Assets.images.dog,
    },
    {
      "name": "Grapes",
      "weight": "300M",
      "price": "\$50",
      "image": Assets.images.dog,
    },
    {
      "name": "Apples",
      "weight": "5Kg",
      "price": "\$50",
      "image": Assets.images.dog,
    },
    {
      "name": "Cabbage",
      "weight": "700M",
      "price": "\$50",
      "image": Assets.images.dog,
    },
  ];

  // List to store cart items
  final List<Map<String, dynamic>> cartItems = [];

  // Method to delete an item from the list
  void deleteItem(int index) {
    setState(() {
      items.removeAt(index); // Remove item at the given index
    });
  }

  // Method to add a new item to the list
  void addItem() {
    setState(() {
      items.add({
        "name": "New Item",
        "weight": "1Kg",
        "price": "\$10",
        "image": Assets.images.dog, // You can replace this with a new image if needed
      });
    });
  }

  // Method to add an item to the shopping cart
  void addToCart(Map<String, dynamic> item) {
    setState(() {
      cartItems.add(item); // Add item to the cart
    });

    // Show a snackbar indicating the item has been added to the cart
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${item["name"]} added to cart!')),
    );
  }

  // Method to navigate to the cart screen
  void goToCart() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CartScreen(cartItems: cartItems)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Favorite List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: addItem, // Trigger addItem method when pressed
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemBuilder: (context, index) {
          var item = items[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item["image"].path, // Accessing the path here
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["name"],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${item["weight"]}\n${item["price"]}",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.shopping_cart, color: Colors.black54),
                        onPressed: () => addToCart(item), // Add item to cart when clicked
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => deleteItem(index), // Delete item on press
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorate"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.green), label: "Cart"),
        ],
        onTap: (index) {
          if (index == 2) {
            goToCart(); // Navigate to cart screen when tapped
          }
        },
      ),
    );
  }
}

// Cart Screen to show items added to the cart
class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  CartScreen({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemBuilder: (context, index) {
          var item = cartItems[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item["image"].path, // Accessing the path here
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["name"],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${item["weight"]}\n${item["price"]}",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
