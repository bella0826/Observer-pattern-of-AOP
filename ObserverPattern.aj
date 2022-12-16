package Demo;

import java.util.ArrayList;


aspect ObserverPattern {
	interface Subject {
		static ArrayList<Observer> observers = new ArrayList<Observer>();
		default void attach(Observer o) {
			observers.add(o);
		}
		default void detach(Observer o) {
			observers.remove(o);
		}
		default void doNotify(String msg) {
			observers.forEach(o->o.update(msg));
		}
	}
	interface Observer {
		default void update(String s) {
			System.out.println("[" + this + "]: " + s);
	}
	}
	
	declare parents: Console01 implements Observer;
	declare parents: Console02 implements Observer;
	declare parents: Database implements Subject;
}
