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

public class Feedback_1 {
    private int id;
    private Account customer;
    private Service_2 service_id;
    private float point;
    private String content;
    private Date created_at;
    private Date updated_at;

    public Feedback_1() {
    }

    public Feedback_1(int id, Account customer, Service_2 service_id, float point, String content, Date created_at, Date updated_at) {
        this.id = id;
        this.customer = customer;
        this.service_id = service_id;
        this.point = point;
        this.content = content;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getCustomer() {
        return customer;
    }

    public void setCustomer(Account customer) {
        this.customer = customer;
    }

    public Service_2 getService_id() {
        return service_id;
    }

    public void setService_id(Service_2 service_id) {
        this.service_id = service_id;
    }

    public float getPoint() {
        return point;
    }

    public void setPoint(float point) {
        this.point = point;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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