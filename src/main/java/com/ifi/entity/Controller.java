package com.ifi.entity;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RequestMapping("/hello")
@RestController
public class Controller {
	@GetMapping
	public String hello() {
		return "Hello World !";

	}
}
