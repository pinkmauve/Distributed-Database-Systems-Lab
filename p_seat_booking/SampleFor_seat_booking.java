import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.jdbc.OracleTypes;


public class SampleFor_seat_booking {

	public static void seatBooking() {
		System.out.println("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println("\tPROCEDURE: get_booked_seats -> returns: list-of-booked-seats.");
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");

		System.out.println("\n----------<For 'Zootopia(2016)'3D on the '31-JUL-16' at '11: 40 AM'>----------");
		getBookedSeats("Zootopia(2016)", 3, "31-JUL-16", "11: 40 AM");

		System.out.println("\n----------<For 'Zootopia(2016)'3D on the '31-07-16' at '11: 40 AM'>----------");
		getBookedSeats("Zootopia(2016)", 3, "31-07-16", "11: 40 AM"); //<-- Will throw an EXCEPTION

		System.out.println("\n----------<For 'Zootopia(2016)'3D on the '31-JUL-16' at '11:40 AM'>----------");
		getBookedSeats("Zootopia(2016)", 3, "31-JUL-16", "11:40 AM");//<-- Will throw an EXCEPTION

		System.out.println("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println("\tPROCEDURE: get_booked_seats_with_prices -> returns: list-of-booked-seats-with-their-price.");
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");

		System.out.println("\n----------<For #Hall: 01|Date: 31-JUL-16|Time: 11: 40 AM|Movie-Format: 3D>----------");
		getBookedSeatsWithPrices(01, "31-JUL-16", "11: 40 AM", 3);

		System.out.println("\n----------<For #Hall: 01|Date: 31-JUL-2016|Time: 11: 40 AM|Movie-Format: 3D>----------");
		getBookedSeatsWithPrices(01, "31-JUL-2016", "11: 40 AM", 3);//<-- Will throw an EXCEPTION

		System.out.println("\n----------<For #Hall: 01|Date: 31-JUL-16|Time: 11: 40 |Movie-Format: 3D>----------");
		getBookedSeatsWithPrices(01, "31-JUL-16", "11: 40 ", 3);//<-- Will throw an EXCEPTION

		System.out.println("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println("\tPROCEDURE: is_hall_full -> returns: NUMBER[01] houseful");
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");

		System.out.println("On the 31-JUL-16 at 11: 40 AM, is there any available seats left in the Hall-No 6?");
		isHallFull("31-JUL-16", "11: 40 AM", 6);

		System.out.println("On the 31-JUL-16 at 11: 40 AM, is there any available seats left in the Hall-No 1?");
		isHallFull("31-JUL-16", "11: 40 AM", 1);

		System.out.println("On the 31-JUL-16 at 11: 40 am, is there any available seats left in the Hall-No 6?");
		isHallFull("31-JUL-16", "11: 40 am", 6);//<-- Will throw an EXCEPTION

		System.out.println("On the 31-JUL-16 at 21: 40 AM, is there any available seats left in the Hall-No 1?");
		isHallFull("31-JUL-16", "21: 40 AM", 1);//<-- Will throw an EXCEPTION

	}

	private static void isHallFull(String showDate, String showTime, int hallNo) {
		try{
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:xe", "MOVIE","MOVIE");
			CallableStatement call = null;
			call = conn.prepareCall ("{ call seat_booking.is_hall_full( '"+showDate+"', '"+showTime+"', "+hallNo+", ?)}");
			call.registerOutParameter (1, OracleTypes.NUMBER);
			call.execute ();
			if(call.getInt(1) == 1)
				System.out.println("\tYes");
			else if(call.getInt(1) == 0)
				System.out.println("\tNo");
			call.close();
			conn.close();
		}catch (SQLException  e) {
			printSQLERRM(e);
		}catch (Exception e) {
			System.out.println(e.getLocalizedMessage());
		}
	}

	private static void getBookedSeatsWithPrices(int hallNo, String showDate,
			String showTime, int movieFormat) {
		try{
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:xe", "MOVIE","MOVIE");
			CallableStatement call = null;
			call = conn.prepareCall ("{ call seat_booking.get_booked_seats_with_prices( "+hallNo+", '"+showDate+"', '"+showTime+"', "+movieFormat+", ?)}");
			call.registerOutParameter (1, OracleTypes.CURSOR);
			call.execute ();
			ResultSet rs = (ResultSet)call.getObject (1);
			System.out.println("Booked seats are: ");
			while (rs.next()) {
				System.out.println("\t\t#Seat: "+rs.getString("SEATNO")+" | Price: "+rs.getString("PRICE"));
			}
			rs.close();
			call.close();
			conn.close();
		}catch (SQLException  e) {
			printSQLERRM(e);
		}catch (Exception e) {
			System.out.println(e.getLocalizedMessage());
		}

	}

	private static void getBookedSeats(String movieName, int foramt, String showDate, String showTime) {
		try{
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:xe", "MOVIE","MOVIE");
			CallableStatement call = null;
			call = conn.prepareCall ("{ call seat_booking.get_booked_seats( '"+movieName+"', "+foramt+", '"+showDate+"', '"+showTime+"', ?)}");
			call.registerOutParameter (1, OracleTypes.CURSOR);
			call.execute ();
			ResultSet rs = (ResultSet)call.getObject (1);
			System.out.println("Booked seats are: ");
			while (rs.next()) {
				System.out.println("\t\t"+rs.getString("SEATNO")+" ");
			}
			rs.close();
			call.close();
			conn.close();
		}catch (SQLException  e) {
			printSQLERRM(e);
		}catch (Exception e) {
			System.out.println(e.getLocalizedMessage());
		}
	}

	private static void printSQLERRM(SQLException e) {
		if(e.getErrorCode() == 20001)
			System.out.println("ORA-20001: The date inserted is not in the correct format. The correct format is 'DD-MON-YY' e.g. '30-JUL-16'.");
		else if(e.getErrorCode() == 20004)
			System.out.println("ORA-20004: The time inserted is not in the correct format. The correct format is 'HH: MI AM' e.g. '11: 40 AM'.");
		else if(e.getErrorCode() == 20006)
			System.out.println("ORA-20006: The time is not valid.");
		else
			System.out.println(e.getLocalizedMessage());
	}

	public static void main(String args[]){
		SampleFor_seat_booking.seatBooking();
	}
}
