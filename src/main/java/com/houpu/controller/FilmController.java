package com.houpu.controller;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.houpu.entity.Film;
import com.houpu.entity.User;
import com.houpu.service.FilmService;
import com.houpu.service.LinkService;
import com.houpu.service.UserService;

import org.apache.taglibs.standard.lang.jstl.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Controller
public class FilmController {

    @Resource
    private FilmService filmService;
    //跳转添加页面
    @RequestMapping(value="/addFilm")
    public String addFilm(){
        return "insertFilm";
    }
    //查询所有
    @RequestMapping(value="/selectFilm")
    public String selectFilm(Model model){
        List<Film> list=filmService.selectFilm();
        model.addAttribute("Flist", list);

        return "selectFilm";
    }
    //单行查询
    @RequestMapping(value="/selectFId")
    public String selectFId(@RequestParam("id") long id,Model model){
        Film film=filmService.selectFId(id);
        System.out.println(id);
        System.out.println("单个查询");
        model.addAttribute("film", film);
        return "updatefilm";
    }
    //添加数据
    @RequestMapping(value="/insertFilm")
    public String insertFilm(Film film, HttpServletRequest request,Model model){
        HttpSession session=request.getSession();
        String createUser=(String) session.getAttribute("uname");
        Date date=new Date();
        String Time=new SimpleDateFormat("yyyy-MM-dd HH:ss:mm").format(date);
        film.setCreateUser(createUser);
        film.setCreateTime(Time);
        film.setUpdateTime(Time);
        filmService.insertFilm(film);
        return this.selectFilm(model);
    }

    //删除数据
    @RequestMapping("/deletef")
    public String deletef(@RequestParam("id") long id,
                         HttpServletRequest request , Model model){
        Integer film = filmService.deletef(id);
        return this.selectFilm(model);
    }
    //修改数据
    @RequestMapping(value="/updateFilm")
    public String updateFilm(@RequestParam(required=true,defaultValue="1")Integer page, Film film, Model model){

        filmService.updateFilm(film);
        PageHelper.startPage(page, 5);

        List<Film> list=filmService.selectFilm();
        PageInfo<Film> p = new PageInfo<Film>(list);

        model.addAttribute("Flist", list);
        model.addAttribute("page", p);

        return this.selectFilm(model);
    }
    //模糊查询
    @RequestMapping(value="/mohucxFilm")
    public String mohucxFilm(@RequestParam("Agoni")String Agoni,@RequestParam("CM")String CM,
                         @RequestParam(required=true,defaultValue="1")Integer page,Model model){

        PageHelper.startPage(page, 5);
        List<Film> list=filmService.mohucxFilm(Agoni, CM);

        PageInfo<Film> p = new PageInfo<Film>(list);

        model.addAttribute("Flist", list);
        model.addAttribute("page", p);

        return this.selectFilm(model);
    }

}
