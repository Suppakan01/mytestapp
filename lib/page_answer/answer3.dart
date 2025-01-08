import 'package:flutter/material.dart';

class Answer3 extends StatelessWidget {
  const Answer3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Product Layout',
            style: TextStyle(
              color: Color.fromARGB(255, 245, 245, 245),
            ),
          ),
          backgroundColor: Colors.lightGreen,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.all(16.0),
              child: const Text("Category: Clothes",
                  style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductDetail(
                  imgUrl:
                      'https://f.ptcdn.info/064/051/000/opqdjw3vv6AsPvv3A0F-o.jpg',
                  name: 'Dress',
                  price: '500 THB',
                ),
                ProductDetail(
                  imgUrl:
                      'https://jackmurphy.ie/cdn/shop/files/Una_Waterproof_Jacket_Navy_9.jpg?v=1731679728&width=1000',
                  name: 'Jacket',
                  price: '900 THB',
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductDetail(
                  imgUrl:
                      'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/8bea8bac07ed75596e5597f6d2997f07cfd81fac_xxl-1.jpg',
                  name: 'Jeans',
                  price: '1,090 THB',
                ),
                ProductDetail(
                  imgUrl:
                      'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/d99f28afda449f0664873515125946ff22d8af3c_xxl-1.jpg',
                  name: 'Blazer',
                  price: '1,699 THB',
                ),
              ],
            )
          ],
        ));
  }
}

class ProductDetail extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String price;

  const ProductDetail({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imgUrl,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          price,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
