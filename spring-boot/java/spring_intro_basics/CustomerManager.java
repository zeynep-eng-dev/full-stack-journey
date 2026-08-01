package spring_intro_basics;

public class CustomerManager {
	// IoC prensibine uygun şekilde dışarıdan ICustomerDal alan iş sınıfı.
	private ICustomerDal c;

	// Constructor
	public CustomerManager(ICustomerDal c) {
	    this.c = c;
	}
	
	
	 public void add() {
		//// 3. Artık add() metodu içerisinden bu nesneye rahatça erişip add() diyebiliyoruz!
		 c.add();
	}

}
