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

public class Payment {
    private int id;
    private int method;
    private int reservation_id;
    private int status;
    private String reference_id;
    private float amount;
    private String payment_url;
    private String payment_qr;
    private Date created_at;
    private Date updated_at;
}
