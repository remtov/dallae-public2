package com.auction.dallae.dao;

import java.util.List;

import com.auction.dallae.vo.SignUp;



public interface SignUpDAO {

	public List<SignUp> selectSignUpList(SignUp su);
	public SignUp selectOneSignUpList(Integer SignNum);
	public int insertList(SignUp su);
	public int updateList(SignUp su);
	public int deleteSignUpList(int signupNum);
	public SignUp selectId(SignUp su);
	public SignUp selectPassword(SignUp su);
	public SignUp login(SignUp su);
}

