package Demo;

import java.util.ArrayList;
import Demo.ObserverPattern.Observer;

public aspect Logger {
	static ArrayList<String> logs = new ArrayList<String>();
	pointcut motion(String s): execution(void Observer.update(String)) && args(s);
	after(String s): motion(s){
		logs.add("[" + this + "]: " + s);
	}
	interface printLog{
		default void printLog() {
			for(int i = 0; i < logs.size(); i++) {   
			    System.out.println(logs.get(i));
			}  
		}
	}
	declare parents: Console01 implements printLog;
	declare parents: Console02 implements printLog;
 
}
