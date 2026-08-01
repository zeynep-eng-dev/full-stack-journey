package spring_intro_basics;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

    public static void main(String[] args) {
        
    	// Spring konteynerini XML dosyamız ile ayağa kaldırıyoruz
    	ClassPathXmlApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
    	
    	// XML'deki "database" id'li nesneyi Spring konteynerinden istiyoruz
        ICustomerDal d = context.getBean("database", ICustomerDal.class);

        CustomerManager manager = new CustomerManager(d);
        manager.add(); // Çıktı: PostgreSQL veri tabanına eklendi.
        
    }
}
