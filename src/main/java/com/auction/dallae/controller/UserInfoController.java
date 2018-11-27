package com.auction.dallae.controller;

import java.io.UnsupportedEncodingException;
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

import com.auction.dallae.service.UserInfoService;
import com.auction.dallae.utils.sha.SHAUtils;
import com.auction.dallae.vo.UserInfo;

@Controller
public class UserInfoController {

	@Autowired
	public SHAUtils shaUtil;

	@Autowired
	public UserInfoService userInfoService;

	@RequestMapping(value = "/userinfolist", method = RequestMethod.GET)
	public @ResponseBody List<UserInfo> getUserInfoList(@ModelAttribute UserInfo userInfo) {
		return userInfoService.getUserInfoList(userInfo);
	}

	@RequestMapping(value = "/userinfo/{userNumber}", method = RequestMethod.GET)
	public String getUserInfo(Model model, @PathVariable Integer userNumber) {
		model.addAttribute("getUserInfo", userInfoService.getUserInfo(userNumber));
		return "user-info/view";
	}

	@RequestMapping(value = "/userinfo_my-page/{userNumber}", method = RequestMethod.GET)
	public String getUserInfoMyPage(Model model, @PathVariable Integer userNumber) {
		model.addAttribute("getUserInfo", userInfoService.getUserInfo(userNumber));
		return "user-info/my-page_shop";
	}

	@RequestMapping(value = "/userinfo", method = RequestMethod.POST)
	@ResponseBody
	public Integer insertUserInfo(@RequestBody UserInfo userInfo) throws UnsupportedEncodingException {
		userInfo.setUserPassword(SHAUtils.makeEcnStr(userInfo.getUserPassword()));
		return userInfoService.insertUserInfo(userInfo);
	}

	@RequestMapping(value = "/delete/{userNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public int deleteUserInfo(@PathVariable Integer userNumber) {
		return userInfoService.deleteUserInfo(userNumber);
	}

	@RequestMapping(value = "/updatevil/{userNumber}", method = RequestMethod.PUT)
	@ResponseBody
	public Integer updateUserInfo(@RequestBody UserInfo userInfo, @PathVariable Integer userNumber) {
		userInfo.setUserNumber(userNumber);
		return userInfoService.updateUserInfo(userInfo);
	}
	
	@RequestMapping(value = "/updatevil/{userId}", method = RequestMethod.PUT)
	@ResponseBody
	public Integer updateUserInfo2(@RequestBody UserInfo userInfo, @PathVariable Integer userNumber) {
		userInfo.setUserNumber(userNumber);
		return userInfoService.updateUserInfo(userInfo);
	}
	
	@RequestMapping(value = "/update/{userNumber}", method = RequestMethod.PUT)
	@ResponseBody
	public Integer updateUserInfo2(@RequestBody UserInfo userInfo, @PathVariable Integer userNumber,
			HttpSession httpSession, HttpServletRequest httpServletRequest) throws UnsupportedEncodingException {
		userInfo.setUserPassword(shaUtil.makeEcnStr(userInfo.getUserPassword()));
		userInfo.setUserNumber(userNumber);
		userInfoService.updateUserInfo(userInfo);
		UserInfo loginUser = userInfoService.login(userInfo);
		if (httpSession.getAttribute("userlogininfo") != null) {
			httpSession.removeAttribute("userlogininfo");
		}
		if (loginUser != null) {
			httpSession.setAttribute("userlogininfo", loginUser);
		} else {
			httpSession.setAttribute("userlogininfo", null);
		}
		return userInfoService.updateUserInfo(userInfo);
	}

	@RequestMapping(value = "/findid", method = RequestMethod.GET)
	public @ResponseBody UserInfo getUserInfo2(@ModelAttribute UserInfo userInfo) {
		return userInfoService.getId(userInfo);
	}

	@RequestMapping(value = "/updatepass", method = RequestMethod.PUT)
	@ResponseBody
	public Integer getUserInfo3(@RequestBody UserInfo userInfo) throws UnsupportedEncodingException {
		userInfo.setUserPassword(shaUtil.makeEcnStr(userInfo.getUserPassword()));
		System.out.println(userInfo +"바보");
		return userInfoService.getPassword(userInfo);
	}   
		
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public @ResponseBody Integer logOut(HttpSession httpSession) {
		httpSession.invalidate();
		return 1;
	}

	// 로그인 처리
	@RequestMapping(value = "/dologin", method = RequestMethod.POST)
	public @ResponseBody UserInfo logInProcess(@RequestBody UserInfo userInfo, HttpSession httpSession,
			HttpServletRequest httpServletRequest) throws UnsupportedEncodingException {
		userInfo.setUserPassword(shaUtil.makeEcnStr(userInfo.getUserPassword()));
		UserInfo loginUser = userInfoService.login(userInfo);
		if (httpSession.getAttribute("userlogininfo") != null) {
			httpSession.removeAttribute("userlogininfo");
		}
		if (loginUser != null) {
			httpSession.setAttribute("userlogininfo", loginUser);
		} else {
			httpSession.setAttribute("userlogininfo", null);
		}
		return userInfoService.login(userInfo);
	}

	@RequestMapping(value = "check-id", method = RequestMethod.GET)
	public @ResponseBody int idCheck(@ModelAttribute UserInfo userInfo) {
		return userInfoService.checkId(userInfo);
	}
}
