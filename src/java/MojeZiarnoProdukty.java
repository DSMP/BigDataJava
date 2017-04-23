/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author 195058
 */
public class MojeZiarnoProdukty {
    private Integer ProduktId;
    private String ProduktName;

    public Integer getProduktId() {
        return ProduktId;
    }

    public void setProduktId(Integer ProduktId) {
        this.ProduktId = ProduktId;
    }

    public String getProduktName() {
        return ProduktName;
    }

    public void setProduktName(String ProduktName) {
        this.ProduktName = ProduktName;
    }

    public MojeZiarnoProdukty(Integer ProduktId, String ProduktName) {
        this.ProduktId = ProduktId;
        this.ProduktName = ProduktName;
    }
 
    
    
}
