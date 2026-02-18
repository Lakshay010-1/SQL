-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Numeric Function

--(i).MOD (It returns modulus of two numbers)
        Select MOD(11,4);

--(ii).Power (It returns the number m raised to the nth power)
        Select Power(m,n);

--(iii).Round (It returns a number rounded off number)
        Select Round(15.193,1);

--(vi).Sqrt (It returns the square root of a given number)
        Select Sqrt(144);

--(v).Truncate (It returns a number with some digits truncated)
        Select Truncate(15.75,1);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- String Function

--(i). Char Function (It returns the character for each integer passed)
        Select Char(72,97,114,114,121);

--(ii).Concat Function (It concatenates two strings)
        Select Concat("Good","Day");

--(iii).Lower/Lcase (It converts a string into lowercase)
        Select Lower("ABCXYZ");

--(vi).Upper/Ucase (It converts a string into uppercase)
        Select Upper("abcxyz");

--(v).Length (It returns the length of given string in bytes)
        Select Length("STring")

--(vi).Substr ( It extracts a substring from a given string )
        Select Substr(string,m,n);  -- {Extract string From mth element (1th based indexing) to string length of n}

--(vii).Trim (It removes leading and trailing spaces from a given string)
        Select Trim(leading ' ' FROM ' schoo l');

--(viii).Instr (It searches for given second string into the given first string)
        Select Instr(String1,String2);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Date and Time Function

--(i).Curdate Function (It returns the current date)
        Select Curdate();

--(ii).Date Function (It extracts the date part of the expression)
        Select Date('2021-12-10 12:00:00');

--(iii).Month Function (It returns the month from the date passed)
        Select Month(date);

--(vi).Day Function (It returns the day part of a date)
        Select Day(date);

--(v).Year Function (It returns the year part of a date)
        Select Year(date);

--(vi).Now Function (It returns the current date and time)
        Select now();

--(vii).Sysdate Function (It returns the time at which function executes)
        Select sysdate();

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Aggregate Function

--(i).AVG Function (It calculates the average of given data)
        Select AVG(<column_name>) "Alias Name" from <table_name>;

--(ii).COUNT Function (It counts the number of rows in a given column)
        Select Count(<column_name>) "Alias Name" from <table_name>;

--(iii).MAX Function (It returns the maximum value from a given column)
        Select Max(<column_name>) "Alias Name" from <table_name>;

--(vi).MIN Function (It returns the minimum value from a given column)
        Select Min(<column_name>) "Alias Name" from <table_name>;

--(v).SUM Function (It returns the sum of values in given column)
        Select Sum(<column_name>) "Alias Name" from <table_name>;