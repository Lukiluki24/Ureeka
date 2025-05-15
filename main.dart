// Class Food dengan Encapsulation
class Food {
  String _name;
  double _price;

  // Constructor
  Food(this._name, this._price);

  // Getter untuk name
  String get name => _name;

  // Getter untuk price
  double get price => _price;

  // Setter untuk name (optional)
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    }
  }

  // Setter untuk price (optional)
  set price(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    }
  }

  void showInfo() {
    print('Makanan: $_name | Harga: Rp${_price.toStringAsFixed(2)}');
  }
}

// Class Order untuk menyimpan dan mengelola pesanan makanan
class Order {
  List<Food> _orderedFoods = [];

  void addFood(Food food) {
    _orderedFoods.add(food);
    print('${food.name} berhasil ditambahkan ke pesanan.');
  }

  void showOrder() {
    if (_orderedFoods.isEmpty) {
      print('Pesanan kosong.');
      return;
    }

    print('Daftar Pesanan:');
    double total = 0;
    for (var food in _orderedFoods) {
      food.showInfo();
      total += food.price;
    }
    print('Total Harga: Rp${total.toStringAsFixed(2)}');
  }
}

// Fungsi utama
void main() {
  // Membuat objek makanan
  Food nasiGoreng = Food('Nasi Goreng', 15000);
  Food mieAyam = Food('Mie Ayam', 12000);
  Food sateAyam = Food('Sate Ayam', 20000);

  // Membuat pesanan
  Order myOrder = Order();
  myOrder.addFood(nasiGoreng);
  myOrder.addFood(sateAyam);
  myOrder.addFood(mieAyam);

  print('\n--- Ringkasan Pesanan ---');
  myOrder.showOrder();
}
