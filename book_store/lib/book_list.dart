import 'package:flutter/material.dart';

class Booklist extends StatelessWidget {
  const Booklist({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Book List"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            buildbooklist("assets/images/book1.jpg", "Book 1", "\$10"),
            buildbooklist("assets/images/book2.jpg", "Book 2", "\$15"),
            buildbooklist("assets/images/book3.jpg", "Book 3", "\$20"),
            buildbooklist("assets/images/book4.jpg", "Book 4", "\$25"),
            buildbooklist("assets/images/book5.jpg", "Book 5", "\$30"),
            buildbooklist("assets/images/book6.jpg", "Book 6", "\$35"),
            buildbooklist("assets/images/book7.jpg", "Book 7", "\$40"),
            buildbooklist("assets/images/book8.jpg", "Book 8", "\$45"),
          ],
        ));
  }

  Widget buildbooklist(String imagepath, String name, String price) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(children: [
        Image.asset(imagepath, width: 100, height: 100),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name),
            const SizedBox(height: 10),
            Text(price),
          ],
        )
      ]),
    );
  }
}
