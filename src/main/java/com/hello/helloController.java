package com.hello;

import com.hello.BoardService.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.ArrayList;

@Controller
public class helloController {
    @Autowired
    BoardService boardService;

    @RequestMapping("/")
    public String hello(){
//    System.out.println("This is hello function");

    return "index";
    }

    @RequestMapping("classList")
    public String classList(Model model){

    model.addAttribute("title","들어야하는 수업");

        List<String> list = new ArrayList<String>();
        list.add("실전프로젝트");
        list.add("이산수학");
        model.addAttribute("classList",list);


        return "list";
    }

}
