class Item {
  String? title;
  String? category;
  String? thumb_url;
  String? location;
  double? price;

  Item(this.title, this.category, this.location, this.price, this.thumb_url);

static List<Item> recommendation = [
  Item("Modern House for Renting", "House", "Thika, Kenya", 2500,
  "https://images.homes.com/listings/117/5837657843-054344361-original.jpg?t=p"),
  Item("Big Villa", "Villa", "Thika, Kenya", 3000,
   "https://cdn.luxuryvillasibiza.net/upload/13050LUXUSVILLA-VISTA-ALEGRE-33.jpg"),
  Item("Small House", "House", "Nairobi, Kenya", 800, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Tp989cbb6ZhyWuRBgQqOApupbpLgf7nuLw&usqp=CAU"),
  Item("Luxious Apartment",  "Apartment", "Nairobi, Kenya", 1500, "https://nova-luxury-apartment.nairobi-hotels-ke.com/data/Photos/OriginalPhoto/9820/982078/982078723/nairobi-nova-luxury-apartment-photo-1.JPEG")
];

static List<Item> nearby = [
  Item("Student Apartment", "Apartment", "Ruiru, Kenya", 700, "https://images1.forrent.com/i2/BZjnSahz6pJaSN2anrj57K_fsJwsHtAeiydKGG1M3to/117/image.jpg"),

  Item("Small Villa", "Villa", "Ruiru, Kenya", 800, "https://5.imimg.com/data5/RH/WC/QA/SELLER-4344814/villa-house-design-500x500.jpg"),

  Item("Family House", "House", "Thika, Kenya", 900, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX3YfevtKCzpppYFebSBF-Ngc7qjf2rI4LpmR9iJD5onAwRPjICZU0rcIim9qvW7V0AZo&usqp=CAU"),

  Item("Province House", "House", "Runda, Kenya", 600, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO3G5YuO_UBAWf1EFh8s1W8pmaIxXtrgcwQw&usqp=CAU")
];
}
