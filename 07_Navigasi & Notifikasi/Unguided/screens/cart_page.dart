// lib/screens/cart_page.dart

import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  static List<CartItem> cartItems = [];
  
  static void addToCart(Product product) {
    var existingItem = cartItems.firstWhere(
      (item) => item.product.id == product.id,
      orElse: () => CartItem(product: product, quantity: 0),
    );
    
    if (existingItem.quantity == 0) {
      cartItems.add(existingItem);
    }
    existingItem.quantity++;
  }

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double get totalAmount {
    return CartPage.cartItems.fold(0, (sum, item) => sum + item.total);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: CartPage.cartItems.isEmpty
          ? const Center(
              child: Text(
                'Your cart is empty!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: CartPage.cartItems.length,
              itemBuilder: (ctx, i) => Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 4,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        CartPage.cartItems[i].product.imageUrl,
                      ),
                    ),
                    title: Text(CartPage.cartItems[i].product.name),
                    subtitle: Text(
                      'Total: Rp${CartPage.cartItems[i].total.toStringAsFixed(0)}',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (CartPage.cartItems[i].quantity > 1) {
                                CartPage.cartItems[i].quantity--;
                              } else {
                                CartPage.cartItems.removeAt(i);
                              }
                            });
                          },
                        ),
                        Text('${CartPage.cartItems[i].quantity}'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              CartPage.cartItems[i].quantity++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
      bottomNavigationBar: CartPage.cartItems.isEmpty
          ? null
          : Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total:',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Rp${totalAmount.toStringAsFixed(0)}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        CartPage.cartItems.clear();
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Order placed successfully!'),
                        ),
                      );
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'CHECKOUT',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}