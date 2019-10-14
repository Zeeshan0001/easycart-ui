package com.smart.shop;

import com.smart.shop.Pojo.Cart;
import com.smart.shop.Pojo.Product;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Calendar;

@FeignClient(name = "service-cart")
public interface FClientCart {
    @RequestMapping(value = "/msg1",method = RequestMethod.GET)
    public String getMsg();

    @RequestMapping(value = "cart/insertproduct",method = RequestMethod.POST)
    public int insertProducts(@RequestBody Cart cart);

    @RequestMapping(value = "cart/getcartproducts/",method = RequestMethod.GET)
    public ArrayList<Product> getCartProducts(@RequestParam("userId") String userId);

    @RequestMapping(value = "product/getproductwithcatid/",method = RequestMethod.GET)
    public ArrayList<Product> getProductWithCatId(@RequestParam("id") String id);

    @RequestMapping(value = "product/getcategories/",method = RequestMethod.GET)
    public ArrayList<Product> getCategories();

    @RequestMapping(value = "product/getsubcategories/",method = RequestMethod.GET)
    public ArrayList<Product> getSubCategories(@RequestParam("parent_id") String parent_id);
//
//    @RequestMapping(value = "/searchProduct/",method = RequestMethod.GET)
//    public ArrayList<Product> searchProduct(@RequestParam("query") String query);
//
//
//    @RequestMapping(value = "/insertProduct",method = RequestMethod.POST,consumes = "application/json")
//    public int insertProduct(Product product);
//
//    @RequestMapping(value = "/updateProduct",method = RequestMethod.PUT,consumes = "application/json")
//    public int updateProduct(Product product);
//
//    @RequestMapping(value = "/deleteProduct",method = RequestMethod.DELETE,consumes = "application/json")
//    public int deleteProduct(Product product);
}



