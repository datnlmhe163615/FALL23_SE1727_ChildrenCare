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

public class Slide {
    private int id;
    private String title;
    private String status;
    private String decription;
    private Date created_at;
    private Date updated_at; 
   
    
}


