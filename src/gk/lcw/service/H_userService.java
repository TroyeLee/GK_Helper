package gk.lcw.service;

import java.util.List;

import gk.lcw.po.H_user;

public interface H_userService {
	public H_user findH_userByPhone(String phone);
	public Integer addH_user(H_user h_user);
	public Integer updateH_user(H_user h_user);
	public Integer deleteH_user(Integer id);
	public H_user checkHuser(H_user h_user);
}
