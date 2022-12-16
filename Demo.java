package ex4;
import java.util.ArrayList;

class Console01 {}
class Console02 {}
class Database {}

public class Demo {
	public static void main(String[] args) {
		Console01 c1 = new Console01();
		Console02 c2 = new Console02();
		Database d1 = new Database();
		
		d1.attach(c1);
		d1.attach(c2);
		d1.doNotify("Received a message from Database.");
		d1.doNotify("Another message.");
		
		System.out.println("\nLogs:");
		c1.printLog();
		c2.printLog();
	}
}
