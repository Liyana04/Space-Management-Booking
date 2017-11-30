package bean;

public class spacemanager {

    private String username;
    private String name;
    private int phonenumber;
    private String email;

    public spacemanager() {
    }

    public spacemanager(String username, String name, int phonenumber, String email) {
        this.username = username;
        this.name = name;
        this.phonenumber = phonenumber;
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

 


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(int phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}
