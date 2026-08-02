public class OrderManager {
    private final IPaymentService paymentService;

    // Constructor (Yapıcı Metot) - Ödeme servisini dışarıdan zorunlu alıyoruz
    public OrderManager(IPaymentService paymentService) {
        this.paymentService = paymentService;
    }

    public void completeOrder(double totalAmount) {
        System.out.println("Sipariş hazırlanıyor...");
        paymentService.processPayment(totalAmount);
        System.out.println("Sipariş başarıyla tamamlandı!");
    }
}
