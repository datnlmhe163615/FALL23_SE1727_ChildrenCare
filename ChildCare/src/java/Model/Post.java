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

public class Post {
    private int id;
    private int author_id;
    private int category_id;
    private String title;
    private String thumbnail;
    private String content;
    private int status;
    private Date created_at;
    private Date updated_at;
}
