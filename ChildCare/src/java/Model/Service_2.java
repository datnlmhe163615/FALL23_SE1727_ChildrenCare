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
//@Data
//@AllArgsConstructor
public class Service_2 {

    private int id;
    private ServiceCategory_1 category;
    private String thumbnail;
    private String title;
    private float price;
    private float sale_price;
    private String brief_information;
    private String decription;
    private int status;
    private Date created_at;
    private Date updated_at;

    public Service_2() {
    }

    public Service_2(int id, ServiceCategory_1 category, String thumbnail, String title, float price, float sale_price, String brief_information, String decription, int status, Date created_at, Date updated_at) {
        this.id = id;
        this.category = category;
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
    
    public Service_2(int id, String thumbnail, String title) {
        this.id = id;
        this.thumbnail = thumbnail;
        this.title = title;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ServiceCategory_1 getCategory() {
        return category;
    }

    public void setCategory(ServiceCategory_1 category) {
        this.category = category;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getSale_price() {
        return sale_price;
    }

    public void setSale_price(float sale_price) {
        this.sale_price = sale_price;
    }

    public String getBrief_information() {
        return brief_information;
    }

    public void setBrief_information(String brief_information) {
        this.brief_information = brief_information;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    
}