class Fuel {
  Electric electric;
  Gas gas;

  Fuel({required this.gas, required this.electric});

  double calculateTotalCost(){
    return gas.calculateTotalCost() + electric.calculateTotalCost();
  }

}

class Electric {
  double amount;
  double price;

  Electric({required this.amount, this.price = 0.14});

  // Method to calculate the total cost based on volume and price
  double calculateTotalCost() {
    return amount * price;
  }

  // Method to display gas details as a string
  @override
  String toString() {
    return 'Gas(volume: $amount, price: $price)';
  }
}

class Gas {
  double volume;
  double price;

  Gas({required this.volume, required this.price});

  // Method to calculate the total cost based on volume and price
  double calculateTotalCost() {
    return volume * price;
  }

  // Method to display gas details as a string
  @override
  String toString() {
    return 'Gas(volume: $volume, price: $price)';
  }
}
