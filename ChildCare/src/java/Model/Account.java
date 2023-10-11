/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

/**
 *
 * @author mihxdat
 */
@Builder
@Data
@AllArgsConstructor

public class Account {
    private int id;
    private String email;
    private String role;
    private String password;
    private String fullname;
    private String avatar;
    private String mobile;
    private boolean gender;
    private String address;
    private int status;
    private Date created_at;
    private Date updated_at;

    public Account() {
    }
    
    


    
    
}
