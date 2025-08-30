class ClothCategory {
  final String image;
  final String title;
  final double price; // price instead of subTypes

  ClothCategory({
    required this.image,
    required this.title,
    required this.price,
  });
}

final List<ClothCategory> clothCategories = [
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1604904612715-47bf9d9bc670?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    title: "Shirts",
    price: 999.0,
  ),
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1612878569417-a62601be8d7d?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    title: "One-Piece",
    price: 599.0,
  ),
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1724414768806-5e2787688f24?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8amVhbnMlMjBmZW1hbGUlMjBtb2RlbHxlbnwwfHwwfHx8MA%3D%3D",
    title: "Jeans",
    price: 1499.0,
  ),
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1592301933927-35b597393c0a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fGZlbWFsZSUyMG1vZGVsfGVufDB8fDB8fHww",
    title: "Trousers",
    price: 1299.0,
  ),
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1630255733678-cf82ac59eef8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjZ8fGZlbWFsZSUyMG1vZGVsfGVufDB8fDB8fHww",
    title: "Dresses",
    price: 1799.0,
  ),
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1621784562807-cb450c2f5efc?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    title: "Jackets",
    price: 2499.0,
  ),
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1716504628105-bd76d91e85f2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTF8fHNhcmVlJTIwZmVtYWxlJTIwbW9kZWx8ZW58MHx8MHx8fDA%3D",
    title: "Sarees",
    price: 1999.0,
  ),
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1737085725643-e751bcf7ff2b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTExfHxzYXJlZSUyMGZlbWFsZSUyMG1vZGVsfGVufDB8fDB8fHww",
    title: "Kurtas",
    price: 899.0,
  ),
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1590583256569-1071aaab934e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGhvb2RpZXMlMjBmZW1hbGUlMjBtb2RlbHxlbnwwfHwwfHx8MA%3D%3D",
    title: "Hoodies",
    price: 1299.0,
  ),
  ClothCategory(
    image:
        "https://images.unsplash.com/photo-1748851261836-a1d38a2d6d49?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTYyfHxzYXJlZSUyMGZlbWFsZSUyMG1vZGVsfGVufDB8fDB8fHww",
    title: "Skirts",
    price: 799.0,
  ),
];
