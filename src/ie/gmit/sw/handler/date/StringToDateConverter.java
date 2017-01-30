package ie.gmit.sw.handler.date;

import java.util.Calendar;
import java.util.Date;

import ie.gmit.sw.handler.Convertable;

public class StringToDateConverter implements Convertable {
	
	private String in;
	private Date out;

	public Date convert(String in){
		
		String[] parts = in.split("-");
		
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, Integer.parseInt(parts[0]));
		cal.set(Calendar.MONTH, Integer.parseInt(parts[1]));
		cal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(parts[2]));
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MILLISECOND, 0);
        
        return cal.getTime();
	}
}
