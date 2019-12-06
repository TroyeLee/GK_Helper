package gk.lcw.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import gk.lcw.po.H_user;
import gk.lcw.service.H_userService;

@Controller
@RequestMapping("/h_user")
public class H_userController {
	@Autowired
	private H_userService H_userService;
	
//	@RequestMapping("/findH_userById")
//	public String findH_userById(Integer id,Model model){
//		H_user H_user = H_userService.findH_userById(id);
//		model.addAttribute("H_user",H_user);
//		return "H_user";
//	}
	
	
	
	@RequestMapping(value="/gotoRegist")
	public String gotoRegist(){
		return "regist";
	}
	@RequestMapping(value="/login")
	public String gotoLogin(){
		return "login";
	}
	@RequestMapping(value="/personal")
	public String personal(){
		return "personal";
	}
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:login";
	}
	@RequestMapping(value="/gotoMain")
	public String back(){
		return "main";
		
	}

	@RequestMapping(value="/checkHuser",method=RequestMethod.POST)
	public  String findH_user(H_user h_user,Model model,HttpSession session) throws Exception {
		H_user h = H_userService.checkHuser(h_user);
//		System.out.println(h_user+"/n"+h);
		if(h==null){
			System.out.println("nobody");	
			model.addAttribute("msg","用户名或密码错误");
			return "login";
		}
		else{
			System.out.println(h.toString());
			session.setAttribute("h_user_session", h);
			return "main";		
		}
	}

	@RequestMapping(value="/add",method=RequestMethod.GET,produces = "application/json; charset=utf-8")
	@ResponseBody
	public int addH_user(H_user h_user) throws Exception{
		H_user h = H_userService.findH_userByPhone(h_user.getPhone());
		System.out.println(h_user);
		int flag=0;
		System.out.println(h);
		if(h==null){
			int rows = H_userService.addH_user(h_user);
	//		System.out.println(h_user);
			if(rows>0){
				System.out.println("您成功插入了"+rows+"条数据！");		
				flag=0;
			}
			else {
				System.out.println("插入失败！");
				flag=1;
			}
			
		}
		else {
				flag=2;
			}
		return flag;
	}
//	@RequestMapping(value="/update/{id}",method=RequestMethod.POST)
//	public ModelAndView updateH_user(H_user H_user,@PathVariable("id")int id) throws Exception{
//		H_user.setUserID(id);
//		int rows = H_userService.updateH_user(H_user);
//		if(rows>0){
//			System.out.println("您成功修改了"+rows+"条数据！");		
//		}else 
//			System.out.println("修改失败！");
//		ModelAndView mv=findH_userAll();
//		return mv;
//	}
//	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
//	public ModelAndView deleteH_user(@PathVariable("id")int id) throws Exception{
//		int rows=H_userService.deleteH_user(id);
//		if(rows>0){
//			System.out.println("您成功删除了"+rows+"条数据！");		
//			
//		}else 
//			System.out.println("删除失败！");
//		ModelAndView mv=findH_userAll();
//		return mv;
//	}
//	@RequestMapping(value="goToUpdate/{id}",method=RequestMethod.GET)
//	public ModelAndView gotoupdate(@PathVariable("id")int id) throws Exception{
//		H_user c = H_userService.findH_userById(id);
//		if(c==null){System.out.println("nobody");}
//		else
//		System.out.println(c.toString());
//		ModelAndView mv=new ModelAndView();
//		mv.setViewName("update");
//		mv.addObject("H_user",c);
//		return mv;
//	}

}
