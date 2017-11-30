/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author user
 */
public class booking {

    public booking() {
    }
    private int booking_id;
    private String StartDate;
    private String EndDate;
    private String StartTime;
    private String EndTime;
    private String Status;
    private String booking;
    private String purpose;
    private String name;

    public void setBooking_id(int booking_id) {
        this.booking_id = booking_id;
    }

    public void setStartDate(String StartDate) {
        this.StartDate = StartDate;
    }

    public void setEndDate(String EndDate) {
        this.EndDate = EndDate;
    }

    public void setStartTime(String StartTime) {
        this.StartTime = StartTime;
    }

    public void setEndTime(String EndTime) {
        this.EndTime = EndTime;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public void setBook(String booking) {
        this.booking = booking;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public void setName(String username) {
        this.name = name;
    }

    public int getBooking_id() {
        return booking_id;
    }

    public String getStartDate() {
        return StartDate;
    }

    public String getEndDate() {
        return EndDate;
    }

    public String getStartTime() {
        return StartTime;
    }

    public String getEndTime() {
        return EndTime;
    }

    public String getStatus() {
        return Status;
    }

    public String getBook() {
        return booking;
    }

    public String getPurpose() {
        return purpose;
    }

    public String getName() {
        return name;
    }

  
    
}