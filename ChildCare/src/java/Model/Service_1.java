///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package Model;
//
//import java.sql.Date;
//import lombok.AllArgsConstructor;
//import lombok.Builder;
//import lombok.Data;
//
///**
// *
// * @author mihxdat
// */
//@Builder
//@Data
//@AllArgsConstructor
//
//public class Service {
//    private int id;
//    private int category_id;
//    private String thumbnail;
//    private String title;
//    private float price;
//    private float sale_price;
//    private String brief_information;
//    private String decription;
//    private int status;
//    private Date created_at;
//    private Date updated_at;
//    private int Count;
//    public Service() {
//    }
//    
//    
//}
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

public class Service_1 {
    private int id;
    private int category_id;
    private String thumbnail;
    private String title;
    private float price;
    private float sale_price;
    private String brief_information;
    private String decription;
    private int status;
    private int Count;
    private Date created_at;
    private Date updated_at;

    public Service_1() {
    }

    public Service_1(int id, int category_id, String thumbnail, String title, float price, float sale_price, String brief_information, String decription, int status, Date created_at, Date updated_at) {
        this.id = id;
        this.category_id = category_id;
        this.thumbnail = thumbnail;
        this.title = title;
        this.price = price;
        this.sale_price = sale_price;
        this.brief_information = brief_information;
        this.decription = decription;
        this.status = status;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }
    
    
    
}
