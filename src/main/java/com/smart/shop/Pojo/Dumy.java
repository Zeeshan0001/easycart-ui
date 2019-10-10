package com.smart.shop.Pojo;


import java.io.Serializable;

public class Dumy implements Serializable{

    private String Name;
    private Integer Id ;
    private String Img_src;
    private   Integer  Category_id;
    private Integer Price;
    private String Discription;

    public Dumy(String name, Integer id, String img_src, Integer category_id, Integer price, String discription) {
        Name = name;
        Id = id;
        Img_src = img_src;
        Category_id = category_id;
        Price = price;
        Discription = discription;
    }

    public String getImg_src() {
        return Img_src;
    }

    public void setImg_src(String img_src) {
        Img_src = img_src;
    }

    public Integer getCategory_id() {
        return Category_id;
    }

    public void setCategory_id(Integer category_id) {
        Category_id = category_id;
    }

    public Integer getPrice() {
        return Price;
    }

    public void setPrice(Integer price) {
        this.Price = price;
    }

    public String getDiscription() {
        return Discription;
    }

    public void setDiscription(String discription) {
        Discription = discription;
    }



    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }
}

