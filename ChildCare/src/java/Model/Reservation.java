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

public class Reservation {
    private int id;
    private int customer_id;
    private int staff_id;
    private byte email;
    private String mobile;
    private boolean gender;
    private String address;
    private int status;
    private float total;
    private Date created_at;
    private Date updated_at;
}
