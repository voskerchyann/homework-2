abstract class Payment {
  double calculateFree(double amount);
}

class CardPayment extends Payment{
  @override
  double calculateFree(double amount){
    return amount*0.2;
  }
 
}

class CashPayment extends Payment{
  @override
  double calculateFree(double amount){
    return 0;
  }
}

class CryptoPayment extends Payment{
  @override
  double calculateFree(double amount){
    return amount*0.5;
  }
}

double calculateTotal(Payment payment,double amount){
  return amount+=payment.calculateFree(amount);
}