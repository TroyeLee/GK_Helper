package gk.lcw.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import gk.lcw.po.Orders;

public interface OrdersDao {
	public List<Orders> findOrders();
//	public List<Orders> findAccepted1(int userID);
	public List<Orders> findAccepted2(int userID);
//	public List<Orders> findComplete1(int userID);
//	public List<Orders> findComplete2(int userID);
//	public List<Orders> findWaiting(int userID);
	public List<Orders> findOrder(Map<String, Object> params);
	public List<Orders> findSelfHelp(int userID);
	public List<Orders> findSelfGetHelp(int userID);
	public Orders findCurrentOrder(int orderID);
	public int insertOrders(Orders order);
	public String getStatus(int orderID);
	public int grapOrder(@Param("orderID") int orderID,@Param("userID") int userID);
	public int completeOrder(int orderID);
	public int confirmOrder(int orderID);
	public int cancleOrder(int orderID);
	public int updateOrders(Orders order);
	public int getUserID(int orderID);
	
	
}
