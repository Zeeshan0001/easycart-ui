package com.smart.shop;

import com.smart.shop.Pojo.Categories;
import com.smart.shop.Pojo.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class Repository {



    // mens.html list
private  static final List<Product> productlist = Arrays.asList(
        new Product( "Multicoloured T-Shirts" , 1, "/images/a5.png" , 01, 129 ,"slim fit"   ),
        new Product( "T-Shirts" , 1, "/images/a1.png" , 01, 2999,"slim fit"   ),
        new Product( "combo" , 1, "/images/a2.png" , 01, 210,"slim fit"   ),
        new Product( "dress" , 1, "/images/a3.png" , 01, 150,"slim fit"   ),
        new Product( "slim dress" , 1, "/images/a4.png" , 01, 200,"slim fit"   ),
            new Product( "Multicoloured T-Shirts" , 1, "/images/a5.png" , 01, 129 ,"slim fit"   ),
            new Product( "T-Shirts" , 1, "/images/a1.png" , 01, 2999,"slim fit"   ),
            new Product( "combo" , 1, "/images/a2.png" , 01, 210,"slim fit"   )
       ) ;


public static List<Product> Mensproduct(){
    return productlist;
}




    // womens list
    private  static final List<Product> Womensproducts = Arrays.asList(
           new Product( "Trouser" , 1, "/images/gallery_3.jpg" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/gallery_4.jpg" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/gallery_5.jpg" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/gallery_6.jpg" , 01, 200,"slim fit"   )
    ) ;

    public static List<Product> Womensproduct(){
        return Womensproducts;
    }


// Accessories




    private static   final List<Product> Accessories = Arrays.asList(

            new Product( "Trouser" , 1, "/images/gallery_3.jpg" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/gallery_4.jpg" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/gallery_5.jpg" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/gallery_6.jpg" , 01, 200,"slim fit"   )

    );

    public static List<Product> getallAcces(){
        return Accessories;
    }

//    Categories
private  static final List<Categories> Cat = Arrays.asList(



);

    public static List<Categories> getallcate(){
        return Cat;
    }



//webClientBuilder.build()
//        .get()
//        .uri( "http://localhost:8087/getcategories")
//        .retrieve()
//        .bodyToMono(Categories.class)
//        .block();





}
