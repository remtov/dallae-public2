package com.auction.dallae.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.auction.dallae.service.SignUpService;
import com.auction.dallae.vo.SignUp;





@Controller
public class SignUpController {

	@Autowired
	public SignUpService sus;

	@RequestMapping(value="/SignUp",method=RequestMethod.GET)
	public @ResponseBody List<SignUp> getList(@ModelAttribute SignUp su) {
									//@RequestParam("liname") String liname으로도 가능
									// @RequestParam Map<String,String> map로 넣어도 됨
									//,@PathVariable int linum
		return sus.selectSignUpList(su);
	}
	@RequestMapping(value="/SignUpView/{SignNum}",method=RequestMethod.GET)
	public String getSignUpOne(Model m ,@PathVariable Integer SignNum) {
	m.addAttribute("getOne",sus.selectOneSignUpList(SignNum));
	
	return "SignUp/View";
	}
	
	@RequestMapping(value="/SignUp",method=RequestMethod.POST)
	@ResponseBody
	public int getDo(@RequestBody SignUp su) {
								
		return sus.insertList(su);
	}

	
	@RequestMapping(value="/Delete/{signupNum}",method=RequestMethod.DELETE)
	@ResponseBody
	public int getDelete(@PathVariable Integer signupNum) {
	
		return sus.deleteSignUpList(signupNum);
	}
	@RequestMapping(value="/updatevil/{signupNum}",method=RequestMethod.PUT)
	@ResponseBody
	public Integer updateLevelInfo(@RequestBody SignUp su,@PathVariable Integer signupNum) {
		su.setSignupNum(signupNum);
		return sus.updateList(su);
	}
	@RequestMapping(value="/update/{signupNum}",method=RequestMethod.PUT)
	@ResponseBody
	public Integer updateLevelInfo2(@RequestBody SignUp su,@PathVariable Integer signupNum,HttpSession session, HttpServletRequest request) {
		su.setSignupNum(signupNum);
		sus.updateList(su);
	
		 SignUp loginUser = sus.login(su);
		if(session.getAttribute("userLoginInfo")!=null) {
	    	  session.removeAttribute("userLoginInfo");
	      }
	        if (loginUser != null) {
	            session.setAttribute("userLoginInfo", loginUser);
	        }else {
	        	session.setAttribute("userLoginInfo",null);
	        }
		
		return sus.updateList(su);
		
	}
	
	@RequestMapping(value="/findId",method=RequestMethod.GET)
	public @ResponseBody SignUp getSignUpOne2(@ModelAttribute SignUp su) {

	return sus.selectId(su);
	}
	@RequestMapping(value="/findpass",method=RequestMethod.GET)
	public @ResponseBody SignUp getSignUpOne3(@ModelAttribute SignUp su) {

	return sus.selectPassword(su);
	}
	  
	 
    // 로그아웃
  	@RequestMapping(value="/logout", method = RequestMethod.POST)
    public @ResponseBody Integer logout(HttpSession session) {
        session.invalidate();
       	return 1;
    }
    // 로그인 처리
    @RequestMapping(value="/dologin", method = RequestMethod.POST)
    public @ResponseBody SignUp loginProcess(@RequestBody SignUp su, HttpSession session, HttpServletRequest request) {
        
        SignUp loginUser = sus.login(su);
      if(session.getAttribute("userLoginInfo")!=null) {
    	  session.removeAttribute("userLoginInfo");
      }
        if (loginUser != null) {
            session.setAttribute("userLoginInfo", loginUser);
        }else {
        	session.setAttribute("userLoginInfo",null);
        }
        return sus.login(su);
    }

	
}
 