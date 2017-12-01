/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author nur liyana
 */
public class room {
    private int room_id;
    private String room_type;
    private String room_name;
    private String capacity;
    private String facilities;

    public room() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void setRoom_id(int room_id) {
        this.room_id = room_id;
    }

    public void setRoom_type(String room_type) {
        this.room_type = room_type;
    }

    public void setRoom_name(String room_name) {
        this.room_name = room_name;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public void setFacilities(String facilities) {
        this.facilities = facilities;
    }

    public int getRoom_id() {
        return room_id;
    }

    public String getRoom_type() {
        return room_type;
    }

    public String getRoom_name() {
        return room_name;
    }

    public String getCapacity() {
        return capacity;
    }

    public String getFacilities() {
        return facilities;
    }

    public room(int room_id) {
        this.room_id = room_id;
    }

    public room(String room_type) {
        this.room_type = room_type;
    }
    
    
}
