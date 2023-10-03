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

public class Service {
    private int id;
    private int category_id;
    private String thumbnail;
    private String title;
    private float price;
    private float sale_price;
    private String brief_information;
    private String decription;
    private int status;
    private Date created_at;
    private Date updated_at;
}
