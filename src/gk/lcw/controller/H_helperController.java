package gk.lcw.controller;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import gk.lcw.po.H_helper;
import gk.lcw.po.H_user;
import gk.lcw.service.H_helperService;

@Controller
@RequestMapping("/h_helper")

public class H_helperController {
	@Autowired
	private H_helperService H_helperService;
	
	@RequestMapping("/gotoRegistHelper")
	public String GotoRegist(){
		return "RegistHelper";
	}
	@RequestMapping(value="/regist")
	@ResponseBody
	public int RegistHelper( H_helper helper,HttpSession session,HttpServletRequest request)throws IOException{
		H_user user=(H_user) session.getAttribute("h_user_session");
		helper.setH_password(user.getH_password());
		helper.setOpenid(user.getUserID()+"");
		helper.setUserID(user.getUserID());
		System.out.println(helper);
		int rows=this.H_helperService.addH_helper(helper);
		System.out.println(rows);
		if(rows>0){
			int rows2=this.H_helperService.updateToHelper(helper.getUserID());
			session.setAttribute("h_helper_session", helper);
			if(rows2>0){
				user.setUserType("≈‹Õ»‘±");
				session.setAttribute("h_user_session", user);
				return 1;
			}
			else return 0;
		}
		else
			return 0;
	}
	@RequestMapping(value="/uploadSC")
	@ResponseBody
	public String handleFormUpload(@RequestParam(value = "filename", required = false) MultipartFile filename,
			HttpServletRequest request,HttpSession session)throws IOException{

		H_user user=(H_user) session.getAttribute("h_user_session");
		String originalFilename=filename.getOriginalFilename();
		if(!originalFilename.isEmpty()){
			String dirPath=request.getServletContext().getRealPath("/upload/studentCard/");
			System.out.println("orginalFilename"+originalFilename);
			File filePath = new File(dirPath);
			if(!filePath.exists()){
				filePath.mkdirs();
			}
			String newFilename=user.getUserID()+"_"+UUID.randomUUID() + "_"+originalFilename;
			try {
				filename.transferTo(new File(dirPath+newFilename));
			}  catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "0";
			}
//			System.out.println(dirPath+newFilename);
			return "/studentCard/"+newFilename;
		}
		else return "0";
		
	}

}
