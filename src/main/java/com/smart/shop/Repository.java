package com.smart.shop;

import com.smart.shop.Pojo.Cart;
import com.smart.shop.Pojo.Dumy;
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
    @Autowired
    FClientCart fClientCart;
    // mens list

public   ArrayList<Product> productlist(){
        ArrayList<Product> categories = new ArrayList<>();
        for(Product category :fClient.getProducts()){
        categories.add(category);

    }
    return categories;
}






    // womens list
    private  static final List<Dumy> Womensproducts = Arrays.asList(
           new Dumy( "Trouser" , 1, "/images/a6.png" , 01, 200,"slim fit"   ),
            new Dumy( "Trouser" , 1, "/images/a5.png" , 01, 200,"slim fit"   ),
            new Dumy( "Trouser" , 1, "/images/a4.png" , 01, 200,"slim fit"   ),
            new Dumy( "Trouser" , 1, "/images/a3.png" , 01, 200,"slim fit"   )
    ) ;

    public static List<Dumy> Womensproduct(){
        return Womensproducts;
    }


// Accessories




    private static   final List<Dumy> Accessories = Arrays.asList(

            new Dumy( "Trouser" , 1, "/images/a8.png" , 01, 200,"slim fit"   ),
            new Dumy( "Trouser" , 1, "/images/a1.png" , 01, 200,"slim fit"   ),
            new Dumy( "Trouser" , 1, "/images/a2.png" , 01, 200,"slim fit"   ),
            new Dumy( "Trouser" , 1, "/images/a3.png" , 01, 200,"slim fit"   )

    );

    public static List<Dumy> getallAcces(){
        return Accessories;
    }

//    Categories

    public ArrayList<Product> getCategories(){
        ArrayList<Product> categories=new ArrayList<>();
        for (Product category : fClient.getCategories()) {
            categories.add(category);
        }
        return categories;
    }


    public ArrayList<Product> getSubCategories(String parent_id){
        ArrayList<Product> subCategories=new ArrayList<>();
        for (Product category : fClient.getSubCategories(parent_id)) {
            subCategories.add(category);
        }
        return subCategories;
    }

    public ArrayList<Product> getProductwithCatId(String id){
        ArrayList<Product> subCategories=new ArrayList<>();
        for (Product category : fClient.getProductWithCatId(id)) {
            subCategories.add(category);
        }
        return subCategories;
    }

    public Product getProductId(String id){

        Product product= fClient.getProductWithId(id);
        return product;
    }

    public int insertCart(Product product){
        Cart cart=new Cart();
        cart.setPrice(product.getPrice());
        cart.setProductId(product.getId());
        cart.setQuantity(product.getCartQuantity());
        cart.setUserId("1");
        return fClientCart.insertProducts(cart);
    }

    public ArrayList<Product> getCartProducts(String userId){
        return fClientCart.getCartProducts(userId);
    }






//webClientBuilder.build()
//        .get()
//        .uri( "http://localhost:8087/getcategories")
//        .retrieve()
//        .bodyToMono(Categories.class)
//        .block();





}
