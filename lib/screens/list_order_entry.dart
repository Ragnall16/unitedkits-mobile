import 'package:flutter/material.dart';
import 'package:unitedkits/models/order_entry.dart';
import 'package:unitedkits/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:unitedkits/screens/order_detail.dart';

class ECommercePage extends StatefulWidget {
  const ECommercePage({super.key});

  @override
  State<ECommercePage> createState() => _ECommercePageState();
}

class _ECommercePageState extends State<ECommercePage> {
  Future<List<ECommerce>> fetchMood(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');

    var data = response;

    List<ECommerce> listOrder = [];
    for (var d in data) {
      if (d != null) {
        listOrder.add(ECommerce.fromJson(d));
      }
    }
    return listOrder;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMood(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada order-an :(',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Card(
                  child: ListTile(
                    title: Text(
                      "Name: ${snapshot.data![index].fields.name}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Description: ${snapshot.data![index].fields.description}"),
                        Text("Price: ${snapshot.data![index].fields.price}"),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailPage(
                            item: snapshot.data![index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
