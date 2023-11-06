/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author mihxdat
 */

public class ServiceMedia_1 {
    private int id;
    private Media media;
    private Service_2 service;

    public ServiceMedia_1() {
    }

    public ServiceMedia_1(int id, Media media, Service_2 service) {
        this.id = id;
        this.media = media;
        this.service = service;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Media getMedia() {
        return media;
    }

    public void setMedia(Media media) {
        this.media = media;
    }

    public Service_2 getService() {
        return service;
    }

    public void setService(Service_2 service) {
        this.service = service;
    }
    
    
}

