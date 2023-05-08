package callers.conduit;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil
{
    public static final String DEFAULT_DATE_FORMAT = "yyyy-MM-dd";
    public static final String DEFAULT_DATE_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

    public static String formatDate(Date date)
    {
        SimpleDateFormat formatter = new SimpleDateFormat(DEFAULT_DATE_FORMAT);
        return formatter.format(date);
    }

    public static String formatDate(Date date, String format)
    {
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        return formatter.format(date);
    }

    public static String formatDateTime(Date date)
    {
        SimpleDateFormat formatter = new SimpleDateFormat(DEFAULT_DATE_TIME_FORMAT);
        return formatter.format(date);
    }

    public static String formatDateTime(Date date, String format)
    {
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        return formatter.format(date);
    }

    public static Date addDaysToDate(Date date, int daysToAdd)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_YEAR, daysToAdd);
        return calendar.getTime();
    }
}
