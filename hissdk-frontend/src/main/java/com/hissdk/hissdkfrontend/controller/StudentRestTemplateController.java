package com.hissdk.hissdkfrontend.controller;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.hissdk.hissdkfrontend.model.Student;

@RestController
@RequestMapping("/api/frontend")
public class StudentRestTemplateController {
	  @Autowired
	   RestTemplate restTemplate;
	//List  
	@GetMapping({"/students"})
	 public String getstudentList() {
	      HttpHeaders headers = new HttpHeaders();
	      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
	      HttpEntity<String> entity = new HttpEntity<String>(headers);
	      
	      return restTemplate.exchange(
	         "http://localhost:8081/api/backend/students", HttpMethod.GET, entity, String.class).getBody();
	   }
	//list ID
	@RequestMapping(value = "/students/{id}")
	   public String getstudentListId(@PathVariable("id") String id) {
	      HttpHeaders headers = new HttpHeaders();
	      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
	      HttpEntity <String> entity = new HttpEntity<String>(headers);
	      
	      return restTemplate.exchange(
	    		  "http://localhost:8081/api/backend/students/"+id, HttpMethod.GET, entity, String.class).getBody();
	   }
	//create ID
	@RequestMapping(value = "/students", method = RequestMethod.POST)
	   public String createProducts(@RequestBody Student student) {
	      HttpHeaders headers = new HttpHeaders();
	      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
	      HttpEntity<Student> entity = new HttpEntity<Student>(student,headers);
	      
	      return restTemplate.exchange(
	         "http://localhost:8081/api/backend/students", HttpMethod.POST, entity, String.class).getBody();
	   }
	//update ID
	@RequestMapping(value = "/students/{id}", method = RequestMethod.PUT)
	   public String updateProduct(@PathVariable("id") String id, @RequestBody Student student) {
	      HttpHeaders headers = new HttpHeaders();
	      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
	      HttpEntity<Student> entity = new HttpEntity<Student>(student,headers);
	      
	      return restTemplate.exchange(
	    		  "http://localhost:8081/api/backend/students/"+id, HttpMethod.PUT, entity, String.class).getBody();
	   }
	
	//Delete ID
	@RequestMapping(value = "/students/{id}", method = RequestMethod.DELETE)
	   public String deleteProduct(@PathVariable("id") String id) {
	      HttpHeaders headers = new HttpHeaders();
	      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
	      HttpEntity<Student> entity = new HttpEntity<Student>(headers);
	      
	      return restTemplate.exchange(
	    		  "http://localhost:8081/api/backend/students/"+id, HttpMethod.DELETE, entity, String.class).getBody();
	   }
	  

}
