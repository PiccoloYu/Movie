package com.houpu.service;

import com.houpu.entity.Film;

import com.houpu.entity.WebSite;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface FilmService {

    //查询所有
    List<Film> selectFilm();
    //单行查询
    Film selectFId(long id);
    //添加数据
    Integer insertFilm(Film film);
    //删除数据
    Integer upFStaff(long id);
    Integer deletef(long id);
    //修改数据
    Integer updateFilm(Film film);
    //模糊查询
    List<Film> mohucxFilm(String Agoni, String CM);

}
