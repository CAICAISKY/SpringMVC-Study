package com.springMVC.annotation.controller;

import com.springMVC.annotation.entity.Beans;
import com.springMVC.annotation.entity.User;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author CaiShunfeng
 */
@Controller
@RequestMapping("/AC")
public class AnnotationController {

    @RequestMapping(value = "/methodOne")
    public ModelAndView methodOne() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("message", "this is methodOne");
        modelAndView.setViewName("methodView");
        return modelAndView;
    }

    @RequestMapping("/methodTwo")
    public String methodTwo(Model model) {
        model.addAttribute("message", "this is methodTwo");
        return "methodView";
    }

    /**日期转换处理*/
    @InitBinder
    public void initBinder(ServletRequestDataBinder binder){
        binder.registerCustomEditor(Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
    }

    @RequestMapping("/methodThree")
    public String methodThree(Model model, User user) {
        model.addAttribute("user", user);
        return "methodView";
    }

    @RequestMapping("/methodFore")
    public String methodFore(Model model, Beans beans) {
        model.addAttribute("user",beans.getUser());
        return "methodView";
    }

    @RequestMapping("/methodFive")
    public String methodFive(Model model, Beans beans) {
        model.addAttribute("user", beans.getUsers().get(0));
        return "methodView";
    }

    @RequestMapping("/methodJson")
    @ResponseBody
    public User methodJson(User user) {
        return user;
    }

}


