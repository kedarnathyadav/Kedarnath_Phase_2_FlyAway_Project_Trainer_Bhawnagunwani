package com.kedarnath.models;

public abstract class Search {
    public static String date;
    public static String day;
    public static String source;
    public static String destination;
    public static int persons;

    public static String getQuery() {
        return "FROM Assign_Flights_List WHERE source = '"+source+"' AND destination='"+destination+"' AND day='"+day+"'";
    }
}
