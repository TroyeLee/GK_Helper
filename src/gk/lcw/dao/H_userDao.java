package gk.lcw.dao;



import gk.lcw.po.H_user;

public interface H_userDao {
	public H_user findH_userByPhone(String Phone);
	public H_user checkHuser(H_user h_user);
	public Integer addH_user(H_user h_user);
	public Integer updateH_user(H_user h_user);
	public Integer deleteH_user(Integer id);
}
