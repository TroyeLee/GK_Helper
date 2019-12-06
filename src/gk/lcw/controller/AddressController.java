package gk.lcw.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import gk.lcw.po.Address;
import gk.lcw.po.H_user;
import gk.lcw.service.AddressService;

@Controller
@RequestMapping(value="/address")

public class AddressController {
	@Autowired
	private AddressService AddressService;
	
	@RequestMapping(value="/gotoAddress")
	public String gotoAddress(){
		return "showAddress";
	}
	
	@RequestMapping(value="/getAddress",method=RequestMethod.GET)
	@ResponseBody
	public List<Address> getAddress(HttpSession session) throws Exception {
		H_user h_user=(H_user) session.getAttribute("h_user_session");
		List<Address> address = AddressService.getAddress(h_user.getUserID());
		session.setAttribute("address_session", address);
//		System.out.println(address.toString());
		return address;
	}
	
	@RequestMapping(value="/setCurrentAddress/{addressID}",method=RequestMethod.GET)
	@ResponseBody
	public Address setCurrentAddress(@PathVariable("addressID") String addressID,HttpSession session) {
		System.out.println(addressID);
		List<Address> AL=(List<Address>) session.getAttribute("address_session");
		Address a=null;
		int addressid=Integer.parseInt(addressID);
//		System.out.println(addressid);
		for(Address item : AL){
			if(item.getAddressID()==addressid){
				a=item;
			}
		}
//		System.out.println(a);
		session.setAttribute("address_current_session", a);
		return a;
		
	}
	@RequestMapping(value="gotoUpdate")
	public String gotoUpdate(HttpSession session,Model model){
		Address a=(Address)session.getAttribute("address_current_session");
//		System.out.println(a);
		model.addAttribute("address",a);
		return "updateAddress";
	}
	@RequestMapping(value="/updateAddress",method=RequestMethod.GET)
//	@ResponseBody
	public String updateAddress(Address address,HttpSession session,Model model){
		Address a=(Address) session.getAttribute("address_current_session");
		address.setAddressID(a.getAddressID());
		int rows=this.AddressService.updateAddress(address);
		List<Address> AL=(List<Address>) session.getAttribute("address_session");
//		System.out.println(addressid);
		for(int i=0;i<AL.size();i++){
			if(AL.get(i).getAddressID()==address.getAddressID()){
				AL.set(i, address);
				
			}
		}
		if(rows>0)
		{
//			System.out.println(AL);
			session.setAttribute("address_session",AL);
			return "showAddress";
		}
		else {
			model.addAttribute("address", address);
			model.addAttribute("msg","³ö´íÀ²£¡");
			return "updateAddress";
		}
	}
	@RequestMapping(value="/test")
	public String test(){
		return "login";
	}
	
	@RequestMapping(value="/deleteAddress/{addressID}",method=RequestMethod.GET)
	@ResponseBody
	public List<Address> deleteAddress(@PathVariable String addressID,HttpSession session,HttpServletRequest request) throws Exception{
		int addressid=Integer.parseInt(addressID);
		int rows=this.AddressService.deleteAddress(addressid);
		if(rows>0){
			List<Address> AL=this.getAddress(session);
			return AL;
		}
		else{
			request.setAttribute("mdg","³ö´íÀ²£¡");
			return null;
		}
	}
	
	@RequestMapping(value="/gotoAdd")
	public String gotoAdd(){
		return "addAddress";
	}
	
	@RequestMapping(value="/addAddress",method=RequestMethod.GET)
	@ResponseBody
	public int addAddress(Address address,HttpSession session,Model model,HttpServletRequest request) throws Exception{
		H_user h_user=(H_user)session.getAttribute("h_user_session");
		address.setUserID(h_user.getUserID());
		int rows=this.AddressService.insertAddress(address);
		if(rows>0){
			List<Address> AL=this.getAddress(session);
			return rows;
		}
		else{
			request.setAttribute("mdg","³ö´íÀ²£¡");
			request.setAttribute("address",address);
			return rows;
		}
	}
	
	

}
