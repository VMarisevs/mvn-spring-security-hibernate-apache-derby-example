package com.example.controllers;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.model.FoodGroup;
import com.example.model.FoodGroupOP;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class Example {

	private static String DB_CONFIG_XML_PATH = "config/db-config.xml";
	
	
	@RequestMapping("/hi")
	public String getHello(){
		return "hello";
	}
	
	@RequestMapping(value = "/foodgroups", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public String getFoodGroups() throws JsonProcessingException{
		
		/*
		 * Connecting to db and executing query
		 */
		
		ApplicationContext appContext = new ClassPathXmlApplicationContext(DB_CONFIG_XML_PATH);
		//ApplicationContext appContext = new ClassPathXmlApplicationContext();
		
		FoodGroupOP fgOP = (FoodGroupOP) appContext.getBean("food-group-OP");
		
		FoodGroup[] fg = fgOP.getFoodGroupList();
		
		/*
		 *  Parsing object using Jackson
		 */
		
		ObjectMapper mapper = new ObjectMapper();		
		StringBuilder fgJSON = new StringBuilder();
		
		fgJSON.append('[');
		
		for (int i = 0; i < fg.length; i++){
			fgJSON.append(mapper.writeValueAsString(fg[i]));
			
			if (i < fg.length-1)
				fgJSON.append(',');
			else
				fgJSON.append(']');
		}
		
		
		return fgJSON.toString();
	}
}
