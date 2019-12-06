package gk.lcw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import gk.lcw.dao.H_helperDao;
import gk.lcw.po.H_helper;
import gk.lcw.po.H_user;
import gk.lcw.service.H_helperService;
@Service
@Transactional

public class H_helperServiceImpl implements H_helperService{
	@Autowired
	private H_helperDao H_helperDao;

	@Override
	public Integer addH_helper(H_helper helper) {
		// TODO Auto-generated method stub
		return this.H_helperDao.addH_helper(helper);
	}

	@Override
	public Integer updateToHelper(int userID) {
		// TODO Auto-generated method stub
		return this.H_helperDao.updateToHelper(userID);
	}

	@Override
	public H_helper getHelper(String openid) {
		// TODO Auto-generated method stub
		return this.H_helperDao.getHelper(openid);
	}

	@Override
	public H_user getUser(int userID) {
		// TODO Auto-generated method stub
		return this.H_helperDao.getUser(userID);
	}

}
