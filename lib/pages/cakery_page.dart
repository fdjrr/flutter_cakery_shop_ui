import 'package:flutter/material.dart';
import 'package:flutter_cakery_shop_ui/data/cake.dart';
import 'package:flutter_cakery_shop_ui/pages/cakery_detail_page.dart';

class CakeryPage extends StatefulWidget {
  const CakeryPage({super.key});

  @override
  State<CakeryPage> createState() => _CakeryPageState();
}

class _CakeryPageState extends State<CakeryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return _buildCard(
                  listCakes[index],
                  context,
                );
              },
              itemCount: listCakes.length,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Cake cake, context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CakeryDetailPage(
                  image: cake.image,
                  price: cake.price,
                  name: cake.name,
                );
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.2),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    cake.isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.redAccent,
                          ),
                  ],
                ),
              ),
              Hero(
                tag: cake.image,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(cake.image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                "Rp. ${cake.price}",
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontFamily: "Varela",
                  fontSize: 14.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 1.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_basket,
                          color: Colors.redAccent,
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Beli",
                          style: TextStyle(
                            fontFamily: "Varela",
                            color: Colors.redAccent,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.redAccent,
                          size: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
