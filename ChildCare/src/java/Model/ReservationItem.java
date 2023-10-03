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

public class ReservationItem {
    private int id;
    private int staff_id;
    private int reservation_id;
    private int service_id;
    private float service_price;
    private int quantity;
    private Date created_at;
    private Date updated_at;
}
