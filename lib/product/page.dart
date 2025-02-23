import 'package:flutter/material.dart';
import 'package:mytestapp/form_product/form_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<Map<String, dynamic>> _products = [
    {
      "id": 1,
      "name": "iPhone 16 Plus",
      "description": "Apple mobile phone",
      "price": 55900.0
    },
    {
      "id": 2,
      "name": "Samsung S25 Ultra",
      "description": "Samsung mobile phone",
      "price": 50900.0
    },
    {
      "id": 3,
      "name": "iPhone 5s",
      "description": "Apple smartphone",
      "price": 21999.0
    },
  ];

  // ฟังก์ชันเพิ่มสินค้า
  void _addProduct(Map<String, dynamic> newProduct) {
    setState(() {
      _products.add(newProduct);
    });
  }

  // 🔥 ฟังก์ชันแก้ไขสินค้า
  void _editProduct(int id, Map<String, dynamic> updatedProduct) {
    setState(() {
      final index = _products.indexWhere((product) => product["id"] == id);
      if (index != -1) {
        _products[index] = updatedProduct;
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('อัปเดตสินค้าสำเร็จ!')),
    );
  }

  // 🔥 ฟังก์ชันลบสินค้า
  void _deleteProduct(int id) {
    setState(() {
      _products.removeWhere((product) => product["id"] == id);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('ลบสินค้าสำเร็จ!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];

          return ListTile(
            title: Text(product["name"]),
            subtitle: Text(product["description"]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${product["price"]}',
                  style: const TextStyle(color: Colors.green),
                ),
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.blue),
                  onPressed: () async {
                    final updatedProduct =
                        await showDialog<Map<String, dynamic>>(
                      context: context,
                      builder: (context) => FormWidget(product: product),
                    );
                    if (updatedProduct != null) {
                      _editProduct(product["id"], updatedProduct);
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('ยืนยันการลบ'),
                        content: const Text('คุณต้องการลบสินค้านี้ใช่หรือไม่?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('ยกเลิก'),
                          ),
                          TextButton(
                            onPressed: () {
                              _deleteProduct(product["id"]);
                              Navigator.pop(context);
                            },
                            child: const Text('ลบ',
                                style: TextStyle(color: Colors.red)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newProduct = await showDialog<Map<String, dynamic>>(
            context: context,
            builder: (context) => const FormWidget(),
          );
          if (newProduct != null) {
            _addProduct(newProduct);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
