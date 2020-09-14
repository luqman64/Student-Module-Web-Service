package com.hissdk.hissdkfrontend.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HelloController {
    @GetMapping({"/", "/hello"})
    public String hello() {
//    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
    	System.out.println("******************logging************************");
//    	model.addAttribute("name", name);
        return "hello";
    }
    
    @GetMapping({"/error"})
    public String error() {
//    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
    	System.out.println("******************logging************************");
//    	model.addAttribute("name", name);
        return "error";
    }
    @RequestMapping(value = "/studentUpdate/{id}") 
    public String studentUpdate(@PathVariable("id") int id ){
  
//    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
    	System.out.println("******************logging************************");
//    	model.addAttribute("name", name);
        return "helloUpdate";
    }
    @GetMapping({"/studentAdd"}) 
    public String studentAdd(){
    	  
//      public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
      	System.out.println("******************logging************************");
//      	model.addAttribute("name", name);
          return "helloAdd";
      }
}


