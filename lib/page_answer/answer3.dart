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
                      'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/8de1d4312f5c28cb227e8529eee9312c2e078618_xxl-1.jpg ',
                  name: 'Dress',
                  price: '500 THB',
                ),
                ProductDetail(
                  imgUrl:
                      'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/34544fb41774a3b1784cb12759b1e64524f856b3_xxl-1.jpg',
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
                      'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/54ae8144f177b53cde883514f1555daa4e0aefac_xxl-1.jpg',
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
