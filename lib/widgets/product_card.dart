import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final VoidCallback onAddToCart;

  const ProductCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isListView = MediaQuery.of(context).size.width < 700;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: isListView
          ? _buildListViewLayout(context)
          : _buildGridViewLayout(context),
    );
  }

  Widget _buildGridViewLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
          child: Stack(
            children: [
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 200,
                    maxHeight: 200,
                    minWidth: 200,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Image.network(
                      imageUrl,
                      height: 140,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return SizedBox(
                          height: 140,
                          width: double.infinity,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 140,
                          width: double.infinity,
                          color: Colors.grey[300],
                          child: const Icon(Icons.error, size: 40),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontFamily: 'Suwannaphum',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Suwannaphum',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star_half, color: Colors.amber, size: 16),
                    ],
                  ),

                  IconButton(
                    onPressed: onAddToCart,
                    icon: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.blue,
                    ),
                    iconSize: 20,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildListViewLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          child: Stack(
            children: [
              Image.network(
                imageUrl,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return SizedBox(
                    height: 120,
                    width: 120,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 120,
                    width: 120,
                    color: Colors.grey[300],
                    child: const Icon(Icons.error, size: 40),
                  );
                },
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      fontFamily: 'Suwannaphum',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Product Details
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Suwannaphum',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                // Rating
                Row(
                  children: const [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star_half, color: Colors.amber, size: 16),
                  ],
                ),
                const SizedBox(height: 10),
                // Add to cart button
                ElevatedButton.icon(
                  onPressed: onAddToCart,
                  icon: const Icon(Icons.add_shopping_cart, size: 16),
                  label: const Text(
                    'Add to Cart',
                    style: TextStyle(fontFamily: 'Suwannaphum'),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 5,
                    ),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
