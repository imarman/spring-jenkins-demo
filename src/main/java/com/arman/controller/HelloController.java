package com.arman.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Arman
 * @date 2022/1/11 22:28
 */
@RestController
@RequestMapping("/hello")
public class HelloController {

    @GetMapping
    public String hello() {
        return "Hello Docker";
    }

    @GetMapping("/jenkins")
    public String jenkins() {
        return "Hello Jenkins";
    }
}
