package com.smart.shop.Controller;

import com.smart.shop.FClient;
import com.smart.shop.Pojo.Categories;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
public class RController {
    @Autowired
    FClient fClient;
@RequestMapping(value = "getproduct",method = RequestMethod.GET)
  public ResponseEntity<ArrayList<Categories>> getProduct(){

    return ResponseEntity.ok(fClient.getProducts());
}

}
