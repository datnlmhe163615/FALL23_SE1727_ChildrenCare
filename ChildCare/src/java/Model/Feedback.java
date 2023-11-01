/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author mihxdat
 */
@Builder
@Data
@AllArgsConstructor
@Setter
@Getter
@NoArgsConstructor

public class Feedback {

    private int id;
    private int customer_id;
    private int service_id;
    private float point;
    private String content;
    private Date created_at;
    private Date updated_at;
    private String customerName;
    private String serviceName;
    private String useremail;

}
