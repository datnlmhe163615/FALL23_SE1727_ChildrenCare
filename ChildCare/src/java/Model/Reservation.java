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
    private String email;
    private String mobile;
    private boolean gender;
    private String address;
    private int status;
    private float total;
    private Date created_at;
    private Date updated_at;
    private ReservationItem reservationItem;
    private Service service;
    private Account account;


    public Reservation() {
    }

    public Reservation(int id, int staff_id, String email, String mobile, boolean gender, String address, int status, float total, Date created_at, Date updated_at, Account account) {
        this.id = id;
        this.staff_id = staff_id;
        this.email = email;
        this.mobile = mobile;
        this.gender = gender;
        this.address = address;
        this.status = status;
        this.total = total;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.account = account;
    }

    public Reservation(int id, ReservationItem reservationItem, Service service) {
        this.id = id;
        this.reservationItem = reservationItem;
        this.service = service;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public int getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(int staff_id) {
        this.staff_id = staff_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
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

    public ReservationItem getReservationItem() {
        return reservationItem;
    }

    public void setReservationItem(ReservationItem reservationItem) {
        this.reservationItem = reservationItem;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
    
    
    
    
    
    
}
