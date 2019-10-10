package com.smart.shop.Controller;


import com.smart.shop.FClient;
import com.smart.shop.Pojo.Categories;
import com.smart.shop.Pojo.Product;
import com.smart.shop.Pojo.Signup;
import com.smart.shop.Pojo.User;
import com.smart.shop.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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


        List<Categories> Mens = repository.productlist();
        Map.addAttribute("Mens" , Mens);

        List<Product> women = repository.Womensproduct();
        Map.addAttribute("womenpro" , women);

        List<Product> Access = repository.getallAcces();
        Map.addAttribute("Accessories" , Access);


        List<Categories> categories = repository.getallcate();
        Map.addAttribute("Categor",categories);

        model.addAttribute("user",new User());

        return "index";
    }


 @PostMapping("/single")
    public String showMethod(@RequestParam(name="image" , required=false) String image,Integer price,String name, ModelMap modelmap)
 {

     System.out.println(image);
     List<Product> select = Arrays.asList( new Product( name , 1, image
        , 01, price,"slim fit"   ));

     modelmap.addAttribute("selected",select);

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

    @GetMapping("electronics")
    public String electricity(){

        return "electronics";
    }


     @GetMapping("/mens")
    public String Contact(ModelMap modelMap)
    {


        List<Categories> Mens = repository.productlist();
        modelMap.addAttribute("Mens" , Mens);

        return "mens";
    }


    @GetMapping("checkout")
    public String hell(){

        return "checkout";
    }
    @GetMapping("contact")
    public String contact(){

        return "contact";
    }

}



