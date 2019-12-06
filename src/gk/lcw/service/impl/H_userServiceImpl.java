package gk.lcw.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import gk.lcw.dao.H_userDao;
import gk.lcw.po.H_user;

import gk.lcw.service.H_userService;

@Service
@Transactional

public class H_userServiceImpl implements H_userService{
	@Autowired
	private H_userDao h_userDao;


	@Override
	public Integer addH_user(H_user h_user) {
		// TODO Auto-generated method stub
		return this.h_userDao.addH_user(h_user);
	}

	@Override
	public Integer updateH_user(H_user h_user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer deleteH_user(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public H_user checkHuser(H_user h_user) {
		// TODO Auto-generated method stub
		return this.h_userDao.checkHuser(h_user);
	}


	@Override
	public H_user findH_userByPhone(String phone) {
		// TODO Auto-generated method stub
		return this.h_userDao.findH_userByPhone(phone);
	}

	

}
