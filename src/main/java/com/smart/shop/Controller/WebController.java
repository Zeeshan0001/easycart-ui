package com.smart.shop.Controller;

import com.smart.shop.Pojo.Product;
import com.smart.shop.Pojo.Dumy;
import com.smart.shop.Pojo.User;
import com.smart.shop.Repository;
import feign.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import rx.functions.Actions;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;


@Controller
public class WebController {



    @Autowired
    private Repository repository;





    @GetMapping("/index")
    public String index(ModelMap Map,Model model){


        List<Product> Mens = repository.productlist();

        Map.addAttribute("Mens" , Mens);

        List<Dumy> women = repository.Womensproduct();
        Map.addAttribute("womenpro" , women);

        List<Dumy> Access = repository.getallAcces();
        Map.addAttribute("Accessories" , Access);


        List<Product> categories = repository.getCategories();
        Map.addAttribute("Categor",categories);
        Map.addAttribute("repository",repository);

        model.addAttribute("user",new User());

        return "index";
    }


 @PostMapping("/single")
    public String showMethod(@RequestParam(name="image" , required=false) String image,Integer price,String name, ModelMap modelmap)
 {

     List<Dumy> select = Arrays.asList( new Dumy( name , 1, image
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


        List<Product> Mens = repository.productlist();
        modelMap.addAttribute("Mens" , Mens);

        return "mens";
    }


    @PostMapping("/checkout")
    public String cart(@RequestParam(name="image" , required=false) String iconid,Integer price,String name,String quantity,String userid, ModelMap modelmap){


        System.out.println(iconid);

        System.out.println(price);
        System.out.println(name);
        System.out.println(quantity);
        System.out.println(userid);






        return "checkout";
    }
    @GetMapping("contact")
    public String contact(){

        return "contact";
    }


}



