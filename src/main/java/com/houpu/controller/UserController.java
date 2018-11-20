package com.houpu.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.houpu.entity.User;
import com.houpu.service.UserService;

@Controller
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping(value="/abc")
    public String abc(){


        return "index1";
    }

    @RequestMapping(value="/admin")
    public String admin(){
        return "index";
    }
    //验证用户名是否存在
    @RequestMapping(value="/loginByName")
    @ResponseBody
    public User qwe(@RequestParam("userName") String userName){
        User user=userService.loginByName(userName);
        return user;
    }
    //用户登录
    @RequestMapping(value="/login")
    public String pw(@RequestParam("userName")String userName,
                     @RequestParam("passWord")String passWord,
                     @RequestParam("verifyCode") String verifyCode,
                     Model model,HttpServletRequest request){
        HttpSession session=request.getSession();
        String verifyCode1 = request.getParameter("verifyCode");
        String verifyCodeValue1 = (String)session.getAttribute("verifyCodeValue");
        User user = userService.login(userName, passWord);
        if(user!=null){
            if(verifyCode1.equals(verifyCodeValue1)){
                session.setAttribute("uname",user.getUserName());
                session.setAttribute("ulevels",user.getLevels());
                session.setAttribute("upw",user.getPassWord());
                session.setAttribute("id", user.getId());
                return "index2";
            }else{
                model.addAttribute("mag1", "验证码错误!");
                return "index1";
            }
        }else{
            model.addAttribute("mag", "用户名或密码不正确!");
            return "index1";
        }
    }
    /* 获取校验码 */
    @RequestMapping("/getVerifyCode")
    public void generate(HttpServletResponse response, HttpSession session) {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        String verifyCodeValue = drawImg(output);
        // 将校验码保存到session中
        session.setAttribute("verifyCodeValue", verifyCodeValue);
        System.out.println(verifyCodeValue);
        try {
            ServletOutputStream out = response.getOutputStream();
            output.writeTo(out);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    /* 绘制验证码 */
    private String drawImg(ByteArrayOutputStream output) {
        String code = "";
        // 随机产生4个字符
        for (int i = 0; i < 4; i++) {
            code += randomChar();
        }
        int width = 70;
        int height = 25;
        BufferedImage bi = new BufferedImage(width, height,
                BufferedImage.TYPE_3BYTE_BGR);
        Font font = new Font("Times New Roman", Font.PLAIN, 20);
        // 调用Graphics2D绘画验证码
        Graphics2D g = bi.createGraphics();
        g.setFont(font);
        Color color = new Color(66, 2, 82);
        g.setColor(color);
        g.setBackground(new Color(226, 226, 240));
        g.clearRect(0, 0, width, height);
        FontRenderContext context = g.getFontRenderContext();
        Rectangle2D bounds = font.getStringBounds(code, context);
        double x = (width - bounds.getWidth()) / 2;
        double y = (height - bounds.getHeight()) / 2;
        double ascent = bounds.getY();
        double baseY = y - ascent;
        g.drawString(code, (int) x, (int) baseY);
        g.dispose();
        try {
            ImageIO.write(bi, "jpg", output);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return code;
    }
    //获取随机参数
    private char randomChar() {
        Random r = new Random();
        String s = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";
        return s.charAt(r.nextInt(s.length()));
    }
    //查询所有
    @RequestMapping(value="/selectAll")
    public String selectAll(@RequestParam(required=true,defaultValue="1")Integer page,Model model){
        PageHelper.startPage(page, 5);

        List<User> list=userService.selectAll();
        PageInfo<User> p = new PageInfo<User>(list);

        model.addAttribute("list", list);
        model.addAttribute("page", p);

        return "selectAlls";
    }
    //单行查询
    @RequestMapping(value="/selectById")
    public String selectById(@RequestParam("id") long id,Model model){
        User user=userService.selectById(id);
        model.addAttribute("user", user);

        return "updateUsers";
    }
    //添加数据
    @RequestMapping(value="/insertUser")
    public String insertUser(User user,HttpServletRequest request){
        HttpSession session=request.getSession();
        String createUser=(String) session.getAttribute("uname");
        Date date=new Date();
        String Time=new SimpleDateFormat("yyyy-MM-dd HH:ss:mm").format(date);
        user.setCreateUser(createUser);
        user.setCreateTime(Time);
        user.setUpdateTime(Time);
        userService.insertUser(user);
        return "selectAlls";
    }

    @RequestMapping(value="/res")
    public String res(User user,HttpServletRequest request){
        HttpSession session=request.getSession();
        String createUser=(String) session.getAttribute("uname");
        Date date=new Date();
        String Time=new SimpleDateFormat("yyyy-MM-dd HH:ss:mm").format(date);
        user.setCreateUser(createUser);
        user.setCreateTime(Time);
        user.setUpdateTime(Time);
        userService.insertUser(user);
        return "index1";
    }
    @RequestMapping(value="/addUser")
    public String addUser(){
        return "insertUsers";
    }
    //删除数据
    @RequestMapping(value="/updateStaff")
    public String updateStaff(Model model,@RequestParam(required=true,defaultValue="1")Integer page,
                              @RequestParam("id")long id){

        PageHelper.startPage(page, 5);
        int i=userService.updateStaff(id);
        if(i==0){
            List<User> list=userService.selectAll();
            PageInfo<User> p = new PageInfo<User>(list);
            model.addAttribute("updateStaff", "删除失败！");
            model.addAttribute("list", list);
            model.addAttribute("page", p);

            return "selectAlls";
        }

        List<User> list=userService.selectAll();
        PageInfo<User> p = new PageInfo<User>(list);

        model.addAttribute("list", list);
        model.addAttribute("page", p);
        return "selectAlls";
    }
    //修改数据
    @RequestMapping(value="/updateUser")
    public String updateUser(@RequestParam(required=true,defaultValue="1")Integer page, User user,Model model){

        userService.updateUser(user);
        PageHelper.startPage(page, 5);

        List<User> list=userService.selectAll();
        PageInfo<User> p = new PageInfo<User>(list);

        model.addAttribute("list", list);
        model.addAttribute("page", p);

        return this.selectAll(page,model);
    }
    //模糊查询
    @RequestMapping(value="/mohucx")
    public String mohucx(@RequestParam("Agoni")String Agoni,@RequestParam("CM")String CM,
                         @RequestParam(required=true,defaultValue="1")Integer page,Model model){

        PageHelper.startPage(page, 5);
        List<User> list=userService.mohucx(Agoni, CM);

        PageInfo<User> p = new PageInfo<User>(list);

        model.addAttribute("list", list);
        model.addAttribute("page", p);

        return "selectAlls";
    }
}
