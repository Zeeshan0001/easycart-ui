package com.smart.shop;

import com.smart.shop.Pojo.Categories;
import com.smart.shop.Pojo.Product;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@FeignClient(name = "service-crud")
public interface FClient {
    @RequestMapping(value = "/msg1",method = RequestMethod.GET)
    public String getMsg();

    @RequestMapping(value = "/getAllProducts",method = RequestMethod.GET)
    public ArrayList<Categories> getProducts();

    @RequestMapping(value = "/getProductWithId/",method = RequestMethod.GET)
    public Categories getProductWithId(@RequestParam("id") String id);

//    @RequestMapping(value = "/getProductWithCatId/",method = RequestMethod.GET)
//    public ArrayList<Product> getProductWithCatId(@RequestParam("cat_id") String categoryId);
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



