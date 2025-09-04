class Review {
  final String user;
  final int rating;
  final String comment;
  final String imgUrl;
  Review({
    required this.user,
    required this.rating,
    required this.comment,
    required this.imgUrl,
  });
}

class ProductDetails {
  final String name;
  final String description;
  final double price;
  final double avgRating;
  final int totalRating;
  final String imgUrl;
  final List<Review> reviews;

  ProductDetails({
    required this.name,
    required this.description,
    required this.price,
    required this.avgRating,
    required this.totalRating,
    required this.imgUrl,
    required this.reviews,
  });
}

final ProductDetails productdetails = ProductDetails(
  name: "Black Gown",
  description:
      "This Elegant Black Evening Gown is crafted with premium silk-blend fabric. "
      "It features a deep V-neck, slim-fit bodycon design, and floor-length finish. "
      "Perfect for weddings, parties, and red-carpet occasions. Pair it with heels "
      "and statement jewelry for a luxurious look.",
  price: 119.99,
  avgRating: 4.8,
  totalRating: 210,
  imgUrl: "https://images.unsplash.com/photo-1741186340606-00a649c69801?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZmVtYWxlJTIwZHJlc3N8ZW58MHx8MHx8fDA%3D",
  reviews: [
    Review(
      imgUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=464&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      user: "Neha",
      rating: 5,
      comment:
          "Fits perfectly and looks stunning. I wore it to a wedding and got endless compliments.",
    ),
    Review(
      imgUrl: "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      user: "Riya",
      rating: 4,
      comment: "Beautiful dress! Just needed minor alterations for length.",
    ),
    Review(
      imgUrl: "https://images.unsplash.com/photo-1557555187-23d685287bc3?q=80&w=464&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      user: "Aditi",
      rating: 5,
      comment: "Fabric feels premium and the fit is amazing.",
    ),
  ],
);
