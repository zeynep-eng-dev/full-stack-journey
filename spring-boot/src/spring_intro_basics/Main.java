package spring_intro_basics;

public class Main {

    public static void main(String[] args) {
        
        // Hangi veri tabanı sınıfını kullanacağımızı seçip CustomerManager'a veriyoruz
        ICustomerDal d = new oracleCustomerDal();

        CustomerManager manager = new CustomerManager(d);
        manager.add(); // Çıktı: PostgreSQL veri tabanına eklendi.
        
    }
}
