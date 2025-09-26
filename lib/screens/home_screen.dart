import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  final List<Map<String, dynamic>> _products = [
    {
      'id': 1,
      'title': 'Smart Watch',
      'image':
          'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      'price': 199.99,
    },
    {
      'id': 2,
      'title': 'Headphones',
      'image':
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'price': 149.99,
    },
    {
      'id': 3,
      'title': 'Sunglasses',
      'image':
          'https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'price': 99.99,
    },
    {
      'id': 4,
      'title': 'Backpack',
      'image':
          'https://images.unsplash.com/photo-1547949003-9792a18a2601?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'price': 79.99,
    },
    {
      'id': 5,
      'title': 'Camera',
      'image':
          'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'price': 499.99,
    },
    {
      'id': 6,
      'title': 'Sneakers',
      'image':
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      'price': 129.99,
    },
  ];

  final List<String> _featuredImages = [
    'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1560343090-f0409e92791a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1564466809058-bf4114d55352?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
  ];

  final List<Map<String, dynamic>> _hotOffers = [
    {
      'id': 1,
      'title': 'Summer Sale! 50% Off',
      'description': 'Get amazing discounts on summer collection',
      'image':
          'https://images.unsplash.com/photo-1607083206968-13611e3d76db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHNob3BwaW5nJTIwc2FsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    },
    {
      'id': 2,
      'title': 'New Arrivals',
      'description': 'Check out our latest products',
      'image':
          'https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvcHBpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    },
    {
      'id': 3,
      'title': 'Free Shipping',
      'description': 'On all orders over \$50',
      'image':
          'https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNob3BwaW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    },
    {
      'id': 4,
      'title': 'Flash Sale',
      'description': '24 hours only! Hurry up',
      'image':
          'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2hvcHBpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    },
    {
      'id': 5,
      'title': 'Clearance',
      'description': 'Last chance to buy',
      'image':
          'https://images.unsplash.com/photo-1591085686350-798c0f9faa7f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2hvcHBpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int _calculateCrossAxisCount(double width) {
    if (width > 1200) {
      return 4;
    } else if (width > 900) {
      return 3;
    } else if (width > 700) {
      return 2;
    } else {
      return 1;
    }
  }

  void _addToCart(BuildContext context, String productName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Item added to the cart',
          style: const TextStyle(fontFamily: 'Suwannaphum'),
        ),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'View Cart',
          onPressed: () {
            // TODO: Navigate to cart page
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Our Products',
          style: TextStyle(
            fontFamily: 'Suwannaphum',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(milliseconds: 1500));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _featuredImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          _featuredImages[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value:
                                    loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[300],
                              child: const Center(
                                child: Icon(Icons.error, size: 50),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'All Products',
                      style: TextStyle(
                        fontFamily: 'Suwannaphum',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        if (constraints.maxWidth < 700) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: _products.length,
                            itemBuilder: (context, index) {
                              final product = _products[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: ProductCard(
                                  title: product['title'],
                                  imageUrl: product['image'],
                                  price: product['price'],
                                  onAddToCart: () =>
                                      _addToCart(context, product['title']),
                                ),
                              );
                            },
                          );
                        } else {
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: _calculateCrossAxisCount(
                                    constraints.maxWidth,
                                  ),
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                            itemCount: _products.length,
                            itemBuilder: (context, index) {
                              final product = _products[index];
                              return SizedBox(
                                height: 100,
                                child: ProductCard(
                                  title: product['title'],
                                  imageUrl: product['image'],
                                  price: product['price'],
                                  onAddToCart: () =>
                                      _addToCart(context, product['title']),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hot Offers',
                      style: TextStyle(
                        fontFamily: 'Suwannaphum',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _hotOffers.length,
                      itemBuilder: (context, index) {
                        final offer = _hotOffers[index];
                        return Card(
                          margin: const EdgeInsets.only(bottom: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 4,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                                child: Image.network(
                                  offer['image'],
                                  width: 120,
                                  height: 100,
                                  fit: BoxFit.cover,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                        if (loadingProgress == null)
                                          return child;
                                        return SizedBox(
                                          width: 120,
                                          height: 100,
                                          child: Center(
                                            child: CircularProgressIndicator(
                                              value:
                                                  loadingProgress
                                                          .expectedTotalBytes !=
                                                      null
                                                  ? loadingProgress
                                                            .cumulativeBytesLoaded /
                                                        loadingProgress
                                                            .expectedTotalBytes!
                                                  : null,
                                            ),
                                          ),
                                        );
                                      },
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 120,
                                      height: 100,
                                      color: Colors.grey[300],
                                      child: const Icon(Icons.error, size: 30),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        offer['title'],
                                        style: const TextStyle(
                                          fontFamily: 'Suwannaphum',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        offer['description'],
                                        style: const TextStyle(
                                          fontFamily: 'Suwannaphum',
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      TextButton(
                                        onPressed: () {
                                          // TODO: Navigate to offer details
                                        },
                                        style: TextButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 5,
                                          ),
                                          backgroundColor: Colors.blue
                                              .withOpacity(0.1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          'View Offer',
                                          style: TextStyle(
                                            fontFamily: 'Suwannaphum',
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
