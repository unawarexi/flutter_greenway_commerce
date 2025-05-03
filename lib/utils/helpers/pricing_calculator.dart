import 'package:flutter/material.dart';

class TPricingCalculator {
  // Calculate price based on tax and shipping
  static double calculatePriceWithTaxAndShipping(
      double basePrice, double taxRate, double shippingCost) {
    double taxAmount = calculateTax(basePrice, taxRate);
    return basePrice + taxAmount + shippingCost;
  }

  // Calculate tax based on base price and tax rate
  static double calculateTax(double basePrice, double taxRate) {
    return basePrice * (taxRate / 100);
  }

  // Get tax rate for a specific location (you can extend this to support more locations)
  static double getTaxRateForLocation(String location) {
    switch (location.toLowerCase()) {
      case 'new york':
        return 8.875; // Example tax rate for New York
      case 'california':
        return 7.25; // Example tax rate for California
      case 'texas':
        return 6.25; // Example tax rate for Texas
      default:
        return 5.0; // Default tax rate
    }
  }

  // Calculate shipping cost based on the shipping method or destination
  static double getShippingCost(String shippingMethod, String destination) {
    if (destination.toLowerCase() == 'international') {
      return 25.0; // Flat rate for international shipping
    }
    switch (shippingMethod.toLowerCase()) {
      case 'standard':
        return 5.0; // Standard shipping cost
      case 'express':
        return 15.0; // Express shipping cost
      case 'overnight':
        return 30.0; // Overnight shipping cost
      default:
        return 10.0; // Default shipping cost
    }
  }

  // Sum all cart values and return the total amount
  static double calculateCartTotal(List<Map<String, dynamic>> cartItems,
      String location, String shippingMethod) {
    double subtotal = 0.0;

    // Calculate subtotal
    for (var item in cartItems) {
      double itemPrice = item['price'] as double;
      int quantity = item['quantity'] as int;
      subtotal += itemPrice * quantity;
    }

    // Get tax rate and shipping cost
    double taxRate = getTaxRateForLocation(location);
    double shippingCost = getShippingCost(shippingMethod, location);

    // Calculate total price including tax and shipping
    double totalPrice =
        calculatePriceWithTaxAndShipping(subtotal, taxRate, shippingCost);

    return totalPrice;
  }

  // Get subtotal for the cart items (without tax or shipping)
  static double getCartSubtotal(List<Map<String, dynamic>> cartItems) {
    double subtotal = 0.0;
    for (var item in cartItems) {
      double itemPrice = item['price'] as double;
      int quantity = item['quantity'] as int;
      subtotal += itemPrice * quantity;
    }
    return subtotal;
  }

  // Calculate total tax for all items in the cart
  static double calculateTotalTax(
      List<Map<String, dynamic>> cartItems, double taxRate) {
    double totalTax = 0.0;
    for (var item in cartItems) {
      double itemPrice = item['price'] as double;
      int quantity = item['quantity'] as int;
      totalTax += calculateTax(itemPrice * quantity, taxRate);
    }
    return totalTax;
  }

  // Calculate the total shipping cost based on the cart weight or number of items
  static double calculateShippingCostByWeight(
      List<Map<String, dynamic>> cartItems, String shippingMethod) {
    double totalWeight = 0.0;

    for (var item in cartItems) {
      double weight =
          item['weight'] as double; // Assume each item has a weight field
      int quantity = item['quantity'] as int;
      totalWeight += weight * quantity;
    }

    // Calculate shipping cost based on weight brackets
    if (totalWeight <= 1.0) {
      return getShippingCost(shippingMethod, 'domestic');
    } else if (totalWeight <= 5.0) {
      return getShippingCost(shippingMethod, 'domestic') + 5.0;
    } else {
      return getShippingCost(shippingMethod, 'domestic') + 10.0;
    }
  }

  // Check if free shipping is eligible based on subtotal and shipping method
  static bool isEligibleForFreeShipping(
      double subtotal, String shippingMethod) {
    if (subtotal >= 100.0 && shippingMethod.toLowerCase() == 'standard') {
      return true;
    }
    return false;
  }

  // Calculate final price based on discount codes (if applicable)
  static double applyDiscount(double price, String discountCode) {
    switch (discountCode.toLowerCase()) {
      case 'discount10':
        return price * 0.90; // 10% off
      case 'discount20':
        return price * 0.80; // 20% off
      default:
        return price; // No discount
    }
  }
}
