package gk.lcw.dao;

import gk.lcw.po.H_helper;
import gk.lcw.po.H_user;

public interface H_helperDao {
	public Integer addH_helper(H_helper helper);
	public Integer updateToHelper(int userID);
	public H_helper getHelper(String openid);
	public H_user getUser(int userID);
}
