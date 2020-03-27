import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

public class WeatherMain {

	public static void main(String[] args) {
		
		try {
			SimpleDateFormat fdate = new SimpleDateFormat( "yyyyMMdd" );
			SimpleDateFormat ftime = new SimpleDateFormat( "HHmm" );
//			Date now = format.parse("202001010005");
//			Date now = new Date("202002211000");
			String voDate = "20200221" + "1030" + "00";
			Date now = new Date();
			Calendar cal = Calendar.getInstance();
			cal.setTime(now);
			cal.set(Calendar.HOUR, Integer.parseInt(voDate.substring(8, 10)));
			cal.set(Calendar.MINUTE, Integer.parseInt(voDate.substring(10, 12)));
			
//			System.out.println(ftime.format(cal.getTime()));
			cal.add(Calendar.MINUTE, -30);
			
			System.out.println(ftime.format(cal.getTime()));
			
			
			// setBaseTime
//			String stime = ftime.format(now);
//			
//			System.out.println(stime);
			

			
			// setBaseDate
//			vo.setBaseDate(fdate.format(now));
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
//		try {
//			
//			SimpleDateFormat format = new SimpleDateFormat( "yyyyMMddHHmm" );
//			SimpleDateFormat fdate = new SimpleDateFormat( "yyyyMMdd" );
//			SimpleDateFormat ftime = new SimpleDateFormat( "HHmm" );
////			Date now = new Date();
//			Date now = format.parse("202002190020");
//			
//			// setBaseTime
//			String stime = ftime.format(now);
//			String date;
//			String time;
//			
//			Calendar cal = Calendar.getInstance();
//			cal.setTime(now);
//			
//			if ( Integer.parseInt(stime) <= 30 ) {
//				cal.add(Calendar.HOUR, -1);
////				vo.setVilageTime("2300");
//				time = "2300";
//			} else if ( Integer.parseInt(stime) <= 330 ) {
////				vo.setVilageTime("0200");
//				time = "0200";
//			} else if ( Integer.parseInt(stime) <= 630 ) {
////				vo.setVilageTime("0500");
//				time = "0500";
//			} else if ( Integer.parseInt(stime) <= 930 ) {
////				vo.setVilageTime("0800");
//				time = "0800";
//			} else if ( Integer.parseInt(stime) <= 1230 ) {
////				vo.setVilageTime("1100");
//				time = "1100";
//			} else if ( Integer.parseInt(stime) <= 1530 ) {
////				vo.setVilageTime("1400");
//				time = "1400";
//			} else if ( Integer.parseInt(stime) <= 1830 ) {
////				vo.setVilageTime("1700");
//				time = "1700";
//			} else if ( Integer.parseInt(stime) <= 2130 ) {
////				vo.setVilageTime("2000");
//				time = "2000";
//			} else {
////				vo.setVilageTime("2300");
//				time = "2300";
//			}
//			
////			vo.setVilageDate(fdate.format(cal.getTime()));
//			date = fdate.format(cal.getTime());
//			
//			fdate.clone();
//			ftime.clone();
//			
//			System.out.println("vilage : " + date + "/" + time);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
//		try {
//			
//			// for test
//			SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmm");
//			
//			SimpleDateFormat hour = new SimpleDateFormat( "yyyyMMddHH" );
//			SimpleDateFormat min = new SimpleDateFormat( "mm" );
////			Date now = format.parse("202001010005");
//			Date now = new Date();
//			
//			String shour = hour.format(now);
//			String smin = min.format(now);
//			
//			String baseTime;
//			
//			if( Integer.parseInt(smin) >= 40 ) {
//				baseTime = shour + "40";
//			} else if ( Integer.parseInt(smin) >= 10 ) {
//				baseTime = shour + "10";
//			} else {
//				Calendar cal = Calendar.getInstance();
//				cal.setTime(now);
//				cal.add(Calendar.HOUR, -1);
//				baseTime = hour.format(cal.getTime()) + "40";
//			}
//			
//			System.out.println(baseTime);
//			
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		
	}

}
