import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  final Map<String, dynamic>? product;

  const FormWidget({super.key, this.product});

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  late TextEditingController _priceController;

  @override
  void initState() {
    super.initState();
    _nameController =
        TextEditingController(text: widget.product?["name"] ?? "");
    _descriptionController =
        TextEditingController(text: widget.product?["description"] ?? "");
    _priceController =
        TextEditingController(text: widget.product?["price"]?.toString() ?? "");
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final newProduct = {
        "id": widget.product?["id"] ?? DateTime.now().millisecondsSinceEpoch,
        "name": _nameController.text,
        "description": _descriptionController.text,
        "price": double.parse(_priceController.text),
      };

      Navigator.pop(context, newProduct);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.product == null ? 'เพิ่มสินค้า' : 'แก้ไขสินค้า'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'ชื่อสินค้า'),
              validator: (value) =>
                  value!.isEmpty ? 'กรุณากรอกชื่อสินค้า' : null,
            ),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'รายละเอียด'),
            ),
            TextFormField(
              controller: _priceController,
              decoration: const InputDecoration(labelText: 'ราคา'),
              keyboardType: TextInputType.number,
              validator: (value) => value!.isEmpty ? 'กรุณากรอกราคา' : null,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('ยกเลิก'),
        ),
        ElevatedButton(
          onPressed: _submitForm,
          child: Text(widget.product == null ? 'บันทึก' : 'อัปเดต'),
        ),
      ],
    );
  }
}
