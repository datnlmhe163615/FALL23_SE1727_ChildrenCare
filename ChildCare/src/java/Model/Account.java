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

    public Account(int id, String email, String role, String password, String fullname, String avatar, String mobile, boolean gender, String address, int status, Date created_at, Date updated_at) {
        this.id = id;
        this.email = email;
        this.role = role;
        this.password = password;
        this.fullname = fullname;
        this.avatar = avatar;
        this.mobile = mobile;
        this.gender = gender;
        this.address = address;
        this.status = status;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public Account(String fullname, String avatar) {
        this.fullname = fullname;
        this.avatar = avatar;
    } 
}
