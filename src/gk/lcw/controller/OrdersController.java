package gk.lcw.controller;


import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import gk.lcw.po.H_user;
import gk.lcw.po.Orders;
import gk.lcw.service.OrdersService;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	private OrdersService OrdersService;
	
	@RequestMapping("/gotoAccepted1")
	public String gotoAccepted1(){
		return "Accepted1";
	}
	@RequestMapping("/gotoComplete1")
	public String gotoComplete1(){
		return "Complete1";
	}
	@RequestMapping("/gotoWaiting")
	public String gotoWaiting(){
		return "Waiting";
	}
	@RequestMapping("/gotoAccepted2")
	public String gotoAccepted2(){
		return "Accepted2";
	}
	@RequestMapping("/gotoComplete2")
	public String gotoComplete2(){
		return "Complete2";
	}
	@RequestMapping("/gotoSelf1")
	public String gotoSelf1(HttpSession session){
		session.setAttribute("Selfid", 1);
		return "SelfOrders";
	}
	@RequestMapping("/gotoSelf2")
	public String gotoSelf2(HttpSession session){
		session.setAttribute("Selfid", 2);
		return "SelfOrders";
	}
	@RequestMapping("/showOrderInfo")
	public String showOrderInfo(){
		
		return "orderInfo";
	}
	
	
	@RequestMapping(value="/findOrders",method=RequestMethod.GET)
	@ResponseBody
	public List<Orders> findOrders(HttpSession session) throws Exception {
		List<Orders> orders = OrdersService.findAllOrders();
		if(orders!=null)
			session.setAttribute("hasOrder", 1);
//		System.out.println(orders.toString());
		return orders;
	}
	
	@RequestMapping(value="/findAccepted1",method=RequestMethod.GET)
	@ResponseBody
	public List<Orders> findAccepted1(HttpSession session) throws Exception {
		H_user user=(H_user) session.getAttribute("h_user_session");
		Map<String, Object> params=new HashMap<String, Object>();
		params.put("orderStatus","进行中");
		params.put("helper_userID", user.getUserID());
		System.out.println(params.toString());
		List<Orders> orders = OrdersService.findOrder(params);
//		System.out.println(orders.toString());
		return orders;
	}
	
	@RequestMapping(value="/findAccepted2",method=RequestMethod.GET)
	@ResponseBody
	public List<Orders> findAccepted2(HttpSession session) throws Exception {
		H_user user=(H_user) session.getAttribute("h_user_session");
		List<Orders> orders = OrdersService.findAccepted2(user.getUserID());
//		System.out.println(orders.toString());
		return orders;
	}
	@RequestMapping(value="/findComplete1",method=RequestMethod.GET)
	@ResponseBody
	public List<Orders> findComplete1(HttpSession session) throws Exception {
		H_user user=(H_user) session.getAttribute("h_user_session");
		Map<String, Object> params=new HashMap<String, Object>();
		params.put("orderStatus","已完成");
		params.put("helper_userID", user.getUserID());
		System.out.println(params.toString());
		List<Orders> orders = OrdersService.findOrder(params);
//		System.out.println(orders.toString());
		return orders;
	}
	@RequestMapping(value="/findComplete2",method=RequestMethod.GET)
	@ResponseBody
	public List<Orders> findComplete2(HttpSession session) throws Exception {
		H_user user=(H_user) session.getAttribute("h_user_session");
		Map<String, Object> params=new HashMap<String, Object>();
		params.put("orderStatus","已完成");
		params.put("userID", user.getUserID());
		System.out.println(params.toString());
		List<Orders> orders = OrdersService.findOrder(params);
//		System.out.println(orders.toString());
		return orders;
	}
	@RequestMapping(value="/findWaiting",method=RequestMethod.GET)
	@ResponseBody
	public List<Orders> findWaiting(HttpSession session) throws Exception {
		H_user user=(H_user) session.getAttribute("h_user_session");
		Map<String, Object> params=new HashMap<String, Object>();
		params.put("orderStatus","待接单");
		params.put("userID", user.getUserID());
		System.out.println(params.toString());
//		List<Orders> orders = OrdersService.findWaiting(user.getUserID());
		List<Orders> orders = OrdersService.findOrder(params);
//		System.out.println(orders.toString());
		return orders;
	}
	
	@RequestMapping(value="/findSelf",method=RequestMethod.GET)
	@ResponseBody
	public List<Orders> findSelfHelp(HttpSession session){
		H_user user=(H_user) session.getAttribute("h_user_session");
		int Selfid=(int) session.getAttribute("Selfid");
		System.out.println(Selfid);
		List<Orders> orders;
		if( Selfid==1 ){
			orders = OrdersService.findSelfHelp(user.getUserID());
			}
		else {
			orders = OrdersService.findSelfGetHelp(user.getUserID());
		}
		
		System.out.println(orders.toString());
		return orders;
	}
	
	@RequestMapping(value="/completeOrder/{orderID}",method=RequestMethod.GET)
	@ResponseBody
	public int completeOrder(@PathVariable int orderID){
		
		int rows=this.OrdersService.completeOrder(orderID);
		
		return rows;
		
	}
	@RequestMapping(value="/confirmOrder/{orderID}",method=RequestMethod.GET)
	@ResponseBody
	public int confirmOrder(@PathVariable int orderID){
		
		int rows=this.OrdersService.confirmOrder(orderID);
		
		return rows;
		
	}
	@RequestMapping(value="/cancleOrder/{orderID}",method=RequestMethod.GET)
	@ResponseBody
	public int cancleOrder(@PathVariable int orderID){
		
		String status=this.OrdersService.getStatus(orderID);
		int rows=0;
		if(status.equals("待接单")){
			rows=this.OrdersService.cancleOrder(orderID);
			if(rows>0){
				return 1;			//取消成功
			}
			else return 2;			//取消失败
		}
		else
			return 3;				//已被接单
	}
	@RequestMapping(value="/cancleOrder2/{orderID}",method=RequestMethod.GET)
	@ResponseBody
	public int cancleOrder2(@PathVariable int orderID){
		int rows=0;
		{
			rows=this.OrdersService.cancleOrder(orderID);
			if(rows>0){
				return 1;			//取消成功
			}
			else return 2;			//取消失败
		}
		
	}
	
	@RequestMapping(value="/publish",method=RequestMethod.GET)
	public String gotoPublish(String fid,Model model){
//		System.out.println("fid="+fid);
		model.addAttribute("fid", fid);
		return "publish";
	}
	@RequestMapping(value="/addOrder")
	public String insertOrder(Orders order,@RequestParam(value = "file", required = false) MultipartFile file,
			HttpSession session,HttpServletRequest request,Model model){
		H_user h_user=(H_user)session.getAttribute("h_user_session");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
//        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        order.setSettingTime(df.format(new Date()));
		order.setUserID(h_user.getUserID());
		if(!file.isEmpty()){
			String evidence1=this.handleFormUpload(file,order,request);
			order.setEvidence1(evidence1);
		}
		System.out.println(order);
		int rows=this.OrdersService.insertOrder(order);
		if(rows>0){
			model.addAttribute("flag",1);
			return "publish";
		}
		else{
			model.addAttribute("flag", 0);
			return "publish";
		}
	}
	public String handleFormUpload(MultipartFile file,Orders order,HttpServletRequest request){
		if(!file.isEmpty()){
			String originalFilename=file.getOriginalFilename();
			String dirPath=request.getSession().getServletContext().getRealPath("/upload/evidence/");
//			String dirPath="D:/upload/evidence/";
			System.out.println(dirPath);
			System.out.println("orginalFilename"+originalFilename);
			File filePath = new File(dirPath);
			if(!filePath.exists()){
				filePath.mkdirs();
			}
			String newFilename=order.getMessage()+"_"+UUID.randomUUID() + "_"+originalFilename;
			try {
				file.transferTo(new File(dirPath+newFilename));
			}  catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "0";
			}
			System.out.println(dirPath+newFilename);
			return "/evidence/"+newFilename;
		}
		else return "0";
		
	}
	
	@RequestMapping(value="/addOrder2")
	public String insertOrderWhithoutPic(Orders order,
			HttpSession session,HttpServletRequest request,Model model){
		H_user h_user=(H_user)session.getAttribute("h_user_session");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
//        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        order.setSettingTime(df.format(new Date()));
		order.setUserID(h_user.getUserID());
		System.out.println(order);
		int rows=this.OrdersService.insertOrder(order);
		if(rows>0){
			model.addAttribute("flag",1);
			return "publish";
		}
		else{
			model.addAttribute("flag", 0);
			return "publish";
		}
	}
	
	@RequestMapping(value="/grapOrder/{orderID}",method=RequestMethod.GET)
	@ResponseBody
	public int grapOrder(@PathVariable int orderID,HttpSession session){
		H_user h_user=(H_user) session.getAttribute("h_user_session");
		if(h_user.getUserType().equals("普通用户")){
			return 0;								//非跑腿员
		}
		else{
			String status=this.OrdersService.getStatus(orderID);
			if(!status.equals("待接单")){
				return 1;							//已被抢
			}
			
			else{
				int userID=this.OrdersService.getUserID(orderID);
//				System.out.println(userID+"    "+h_user.getUserID());
				if(userID==h_user.getUserID()){
					return 2;                       //自己的单
				}
				else{
					int rows = this.OrdersService.grapOrder(orderID,h_user.getUserID());
					if(rows<0){
						return 3;						//抢单失败
					}
					else{
						return 4;						//抢单成功
					}
				}
			}
			
		}
		
	}
	
	@RequestMapping(value="/getOrderInfo/{orderID}")
	@ResponseBody
	public int setCurrentOrder(@PathVariable int orderID,HttpSession session){
		Orders order=this.OrdersService.findCurrentOrder(orderID);
		if (order!=null){
			session.setAttribute("order_session", order);
			System.out.println(order);
			return 1;
		}
		else
		return 0;
	}
	
	
	
	
	
	
}
