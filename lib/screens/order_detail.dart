import 'package:flutter/material.dart';
import 'package:unitedkits/models/order_entry.dart';

class OrderDetailPage extends StatelessWidget {
  final ECommerce item;

  const OrderDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${item.fields.name}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("Description: ${item.fields.description}"),
            const SizedBox(height: 8),
            Text("Quantity: ${item.fields.quantity}"),
            const SizedBox(height: 8),
            Text("Time: ${item.fields.time}"),
            const SizedBox(height: 8),
            Text("Price: ${item.fields.price}"),
            const SizedBox(height: 8),
            Text("Size: ${item.fields.size}"),
            const SizedBox(height: 8),
            Text("Season: ${item.fields.season}"),
            const SizedBox(height: 8),
            Text("Type: ${item.fields.type}"),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Back to Order List"),
            ),
          ],
        ),
      ),
    );
  }
}
