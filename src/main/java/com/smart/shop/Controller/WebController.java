package com.smart.shop.Controller;


import com.smart.shop.Pojo.Cart;
import com.smart.shop.Pojo.Product;
import com.smart.shop.Pojo.Dumy;
import com.smart.shop.Pojo.User;
import com.smart.shop.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Controller
public class WebController {



    @Autowired
    private Repository repository;





    @GetMapping("/index")
    public String index(ModelMap Map,Model model){


        List<Product> Mens = repository.getProductwithCatId("10");
        Map.addAttribute("Mens" , Mens);

        List<Product> women = repository.getProductwithCatId("16");
        Map.addAttribute("womenpro" , women);

        List<Product> prod = repository.getProductwithCatId("2");
        Map.addAttribute("mobile" , prod);


        List<Product> categories = repository.getCategories();
        Map.addAttribute("Categor",categories);
        Map.addAttribute("repository",repository);

        model.addAttribute("user",new User());

        return "index";
    }


 @PostMapping("/single")
    public String showMethod(@RequestParam(name="image" , required=false) String image,Integer price,String name, ModelMap Map)
 {

     List<Product> categories = repository.getCategories();
     Map.addAttribute("Categor",categories);
     Map.addAttribute("repository",repository);
//     System.out.println(image);
//     List<Dumy> select = Arrays.asList( new Dumy( name , 1, image
//        , 01, price,"slim fit"   ));
//
//     modelmap.addAttribute("selected",select);

     return "single";
 }

    @GetMapping("/item")
    public String showItem(@RequestParam(name="id", required=false) String id, ModelMap modelmap)
    {

        List<Product> categories = repository.getCategories();
        modelmap.addAttribute("Categor",categories);
        modelmap.addAttribute("repository",repository);
        Product product=repository.getProductId(id);

        modelmap.addAttribute("product",product);
        modelmap.addAttribute("productCart",new Product());

        return "single";
    }

    @PostMapping("/cart")
    public String cartForm(@ModelAttribute Product product)
    {

      System.out.println(product.getCartQuantity());
        repository.insertCart(product);
        return "single";
    }

 @PostMapping("/login")
 public String login(@Valid User user)
 {
     if (user.getEmail().equals("i.haider420@yahoo.com") && user.getPassword().equals("1111"))
     {
         return "single";
     }

        return "index";
 }
    @PostMapping("/signup")
    public String signup(@Valid User user) {

        System.out.println(user);

        return "single";

    }

    @GetMapping("electronic")
    public String electricity(){

        return "electronics";
    }


     @GetMapping("/electronics")
    public String Contact(ModelMap Map, @RequestParam("id") String id)
    {

        List<Product> products = repository.getProductwithCatId(id);
        Map.addAttribute("products",products);
        List<Product> categories = repository.getCategories();

        Map.addAttribute("Categor",categories);

        Map.addAttribute("repository",repository);

        return "electronics";
    }


    @GetMapping("/checkout")
    public String cart(ModelMap modelMap){

        List<Product> categories = repository.getCategories();
        modelMap.addAttribute("Categor",categories);
        modelMap.addAttribute("repository",repository);

        ArrayList<Product> products = repository.getCartProducts("1");
        int totalCart=0;
        for(Product prd:products){
            totalCart+=prd.getCartPrice();
        }
        modelMap.addAttribute("products",products);
        modelMap.addAttribute("totalCart",totalCart);

        return "checkout";
    }
    @GetMapping("contact")
    public String contact(){

        return "contact";
    }

}



