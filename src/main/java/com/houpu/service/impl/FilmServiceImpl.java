package com.houpu.service.impl;

import com.houpu.dao.FilmDao;
import com.houpu.dao.UserDao;
import com.houpu.entity.Film;
import com.houpu.entity.WebSite;
import com.houpu.service.FilmService;
import org.apache.catalina.WebResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;
@Service
public class FilmServiceImpl implements FilmService {

    @Resource
    private FilmDao filmDao;
    //查询所有

    public List<Film> selectFilm() {
        // TODO Auto-generated method stub
        return filmDao.selectFilm();
    }


    //单行查询
    public Film selectFId(long id) {
        // TODO Auto-generated method stub
        return filmDao.selectFId(id);
    }
    //添加数据
    public Integer insertFilm(Film film) {
        // TODO Auto-generated method stub
        return  filmDao.insertFilm(film);
    }

    //删除数据
    public Integer upFStaff(long id) {
        // TODO Auto-generated method stub
        return filmDao.upFStaff(id);
    }


    public Integer deletef(long id) {
        return filmDao.deletef(id);
    }

    //修改数据
    public Integer updateFilm(Film film) {
        /* TODO Auto-generated method stub */
        return filmDao.updateFilm(film);
    }
    //模糊查询
    public List<Film> mohucxFilm(String Agoni, String CM) {
        // TODO Auto-generated method stub
        return filmDao.mohucxFilm(Agoni,CM);
    }

}
