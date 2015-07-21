package carss.action;

import java.sql.Timestamp;
import java.util.Calendar;

public class Texts {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		  Calendar calendar = Calendar.getInstance();
		  long i =calendar.getTimeInMillis();
		  System.out.println(calendar.getTimeInMillis());
		  calendar.set(calendar.DATE, calendar.get(calendar.DATE)+2);
		  System.out.println(calendar.get(calendar.DATE));
		  System.out.println(calendar.getTimeInMillis());
		  long j =calendar.getTimeInMillis();
		  System.out.println(162230031/3600000);
 

	}

}
