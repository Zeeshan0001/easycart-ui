package com.smart.shop;

import com.smart.shop.Pojo.Categories;
import com.smart.shop.Pojo.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class Repository {


    @Autowired
    FClient fClient;
    // mens list

public   ArrayList<Categories> productlist(){
        ArrayList<Categories> categories = new ArrayList<>();
        for(Categories category :fClient.getProducts()){
        categories.add(category);

    }
    return categories;
}






    // womens list
    private  static final List<Product> Womensproducts = Arrays.asList(
           new Product( "Trouser" , 1, "/images/a6.png" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/a5.png" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/a4.png" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/a3.png" , 01, 200,"slim fit"   )
    ) ;

    public static List<Product> Womensproduct(){
        return Womensproducts;
    }


// Accessories




    private static   final List<Product> Accessories = Arrays.asList(

            new Product( "Trouser" , 1, "/images/a8.png" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/a1.png" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/a2.png" , 01, 200,"slim fit"   ),
            new Product( "Trouser" , 1, "/images/a3.png" , 01, 200,"slim fit"   )

    );

    public static List<Product> getallAcces(){
        return Accessories;
    }

//    Categories

    public ArrayList<Categories> getCategories(){
        ArrayList<Categories> categories=new ArrayList<>();
        for (Categories category : fClient.getCategories()) {
            categories.add(category);
        }
        return categories;
    }


    public ArrayList<Categories> getSubCategories(String parent_id){
        ArrayList<Categories> subCategories=new ArrayList<>();
        for (Categories category : fClient.getSubCategories(parent_id)) {
            subCategories.add(category);
        }
        return subCategories;
    }



//webClientBuilder.build()
//        .get()
//        .uri( "http://localhost:8087/getcategories")
//        .retrieve()
//        .bodyToMono(Categories.class)
//        .block();





}
