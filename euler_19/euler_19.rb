def is_leap_year?(y)
    if (y % 4) == 0 
        return true unless (((y % 100) == 0) && ((y % 400) != 0))
    end 
    false 
end 

p is_leap_year?(1904)

def euler_19
    total_days = 1
    sundays_count = 0 
    month_day = 1  
    year = 1900 
    month = 1 
    until year == 2001 
        if (month == 12) && (month_day == 32)
            month_day = 1
            month = 1 
            year += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 11) && (month_day == 31)
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 10) && (month_day == 32)
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 9) && (month_day == 31)
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 8) && (month_day == 32)
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 7) && (month_day == 32)
            month_day = 1
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 6) && (month_day == 31)
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 5) && (month_day == 32) 
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 4) && (month_day == 31)
            month_day = 1
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 3) && (month_day == 32)
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 2) && (month_day == 29) && (!is_leap_year?(year))
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 2) && (month_day == 30) && (is_leap_year?(year))
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        elsif (month == 1) && (month_day == 32)
            month_day = 1 
            month += 1 
            sundays_count += 1 if (total_days % 7 == 0) && (year > 1900)
        end
        month_day += 1 
        total_days += 1 
    end 
    return "the solution to euler 19 is #{sundays_count}"
end 