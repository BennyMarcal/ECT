package aula06;

public class Date {
    private int day=1;
	private int month=1;
	private int year;

	Date(int day, int month, int year) {
		this.set(day, month, year);
	}

	public void set(int day, int month, int year) {
		if( validDate(day, month, year) == true ) {
			this.day = day;
			this.month = month;
			this.year = year;
		}else{
			System.out.println("\nData invalida, por favor tente novamente");
		}
	}
	// increment x days, it can change month and year
	public void increment(int days) {
		while( days > 0 ) {
			if( this.day == monthDays(this.month, this.year) ) {
				this.day = 1;
				if( this.month == 12 ) {
					this.month = 1;
					this.year++; 
				} else {
					this.month++;
				}
			} else {
				this.day++;
			}
			days--;
		}
	}
	// decrement x days, it can change month and year
	public void decrement(int days) {
		while( days > 0 ) {
			if ((this.day == 1) && (this.month == 1) && (this.year == 0)){
				System.out.print("Impossível decrementar a data\n");
				break;
			}
				if( this.day == 1 ) {
					if( this.month == 1 ) {
						this.month = 12;
						this.year--; 
					} else {
						this.month--;
					}
					this.day = monthDays(this.month, this.year);
				} else {
					this.day--;
				}
				days--;
		}
	}

	public int getDay() { 
		return this.day; 
	}
    public int getMonth() { 
		return this.month; 
	}
    public int getYear() { 
		return this.year; 
	}
	// check if it is Bissexto
	public static boolean isBissexto(int year) {
		return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
	}
	// check how many days are in that month
	public static int monthDays(int month, int year) {
		if( month == 2 ) {
			if (isBissexto(year) == true)
				return 29;
			return 28;
		} else if( month==1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
			return 31;
		} else {
			return 30;
		}
	}
	// check if date is valid
	public static boolean validDate(int day, int month, int year) {
		if( month < 1 || month > 12 ) 
			return false;
		if (year < 0)
			return false;
		int maxMonthDays = monthDays(month, year);
		if( day < 1 || day > maxMonthDays ) 
			return false;
		return true;
	}

	public String toString() {
		return String.format("Data -> %02d-%02d-%04d", this.day, this.month, this.year);
	}
}
