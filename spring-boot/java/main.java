import org.springframework.context.support.ClassPathXmlApplicationContext;

public class main {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = 
            new ClassPathXmlApplicationContext("applicationContext.xml");

        OrderManager a = context.getBean("orderManager", OrderManager.class);
        a.completeOrder(12.3);

        context.close();
    }
}
