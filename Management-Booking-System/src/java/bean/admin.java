package bean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author user
 */
public class admin {
    private int adminId;
    private String name;

    public admin(int adminId, String name) {
        this.adminId = adminId;
        this.name = name;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public admin() {
    }

 

  
   

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
