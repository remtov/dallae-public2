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

import com.auction.dallae.service.UserInfoService;
import com.auction.dallae.vo.UserInfo;

@Controller
public class UserInfoController {

	@Autowired
	public UserInfoService userInfoService;        

	@RequestMapping(value = "/UserInfoList", method = RequestMethod.GET)
	public @ResponseBody List<UserInfo> getUserInfoList(@ModelAttribute UserInfo userInfo) {

		return userInfoService.getUserInfoList(userInfo);
	}

	@RequestMapping(value = "/UserInfo/{userNumber}", method = RequestMethod.GET)
	public String getUserInfo(Model model, @PathVariable Integer userNumber) {
		model.addAttribute("getUserInfo", userInfoService.getUserInfo(userNumber));

		return "UserInfo/View";
	}

	@RequestMapping(value="/UserInfo",method=RequestMethod.POST)
	@ResponseBody
	public int insertUserInfo (@RequestBody UserInfo userInfo)
	{

		return userInfoService.insertUserInfo(userInfo);
	}

	@RequestMapping(value = "/Delete/{userNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public int deleteUserInfo(@PathVariable Integer userNumber) {

		return userInfoService.deleteUserInfo(userNumber);
	}

	@RequestMapping(value = "/UpdateVil/{userNumber}", method = RequestMethod.PUT)
	@ResponseBody
	public Integer updateUserInfo(@RequestBody UserInfo userInfo, @PathVariable Integer userNumber) {
		userInfo.setUserNumber(userNumber);
		return userInfoService.updateUserInfo(userInfo);
	}

	@RequestMapping(value = "/Update/{userNumber}", method = RequestMethod.PUT)
	@ResponseBody
	public Integer updateUserInfo2(@RequestBody UserInfo userInfo, @PathVariable Integer userNumber,
			HttpSession httpSession, HttpServletRequest httpServletRequest) {
		userInfo.setUserNumber(userNumber);
		userInfoService.updateUserInfo(userInfo);

		UserInfo loginUser = userInfoService.login(userInfo);
		if (httpSession.getAttribute("userLoginInfo") != null) {
			httpSession.removeAttribute("userLoginInfo");
		}
		if (loginUser != null) {
			httpSession.setAttribute("userLoginInfo", loginUser);
		} else {
			httpSession.setAttribute("userLoginInfo", null);
		}

		return userInfoService.updateUserInfo(userInfo);

	}

	@RequestMapping(value = "/FindId", method = RequestMethod.GET)
	public @ResponseBody UserInfo getUserInfo2(@ModelAttribute UserInfo userInfo) {

		return userInfoService.getId(userInfo);
	}

	@RequestMapping(value = "/FindPass", method = RequestMethod.GET)
	public @ResponseBody UserInfo getUserInfo3(@ModelAttribute UserInfo userInfo) {

		return userInfoService.getPassword(userInfo);
	}

	// 로그아웃
	@RequestMapping(value = "/LogOut", method = RequestMethod.POST)
	public @ResponseBody Integer logOut(HttpSession httpSession) {
		httpSession.invalidate();
		return 1;
	}

	// 로그인 처리
	@RequestMapping(value = "/DoLogIn", method = RequestMethod.POST)
	public @ResponseBody UserInfo logInProcess(@RequestBody UserInfo userInfo, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {

		UserInfo loginUser = userInfoService.login(userInfo);
		if (httpSession.getAttribute("userLoginInfo") != null) {
			httpSession.removeAttribute("userLoginInfo");
		}
		if (loginUser != null) {
			httpSession.setAttribute("userLoginInfo", loginUser);
		} else {
			httpSession.setAttribute("userLoginInfo", null);
		}
		return userInfoService.login(userInfo);
	}

}
