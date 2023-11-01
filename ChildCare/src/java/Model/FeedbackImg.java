/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author hp
 */
@AllArgsConstructor
@Getter
@Setter
@Builder
@Data
@NoArgsConstructor

public class FeedbackImg {
    private  int imgId;
    private String thumString;
    private int feedbackID;

   
    
}
