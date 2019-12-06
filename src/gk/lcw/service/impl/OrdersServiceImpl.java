package gk.lcw.service.impl;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import gk.lcw.po.Orders;
import gk.lcw.service.OrdersService;
import gk.lcw.dao.OrdersDao;
@Service
@Transactional


public class OrdersServiceImpl implements OrdersService {
	@Autowired
	private OrdersDao OrdersDao;

	@Override
	public List<Orders> findAllOrders() {
		// TODO Auto-generated method stub
		return this.OrdersDao.findOrders();
	}

	@Override
	public int insertOrder(Orders order) {
		// TODO Auto-generated method stub
		return this.OrdersDao.insertOrders(order);
	}

	@Override
	public String getStatus(int orderID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.getStatus(orderID);
	}

	@Override
	public int grapOrder(int orderID,int userID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.grapOrder(orderID,userID);
	}

	@Override
	public int completeOrder(int orderID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.completeOrder(orderID);
	}

	@Override
	public int cancleOrder(int orderID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.cancleOrder(orderID);
	}

	@Override
	public int updateOrders(Orders order) {
		// TODO Auto-generated method stub
		return this.OrdersDao.updateOrders(order);
	}

	@Override
	public int getUserID(int orderID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.getUserID(orderID);
	}

//	@Override
//	public List<Orders> findAccepted1(int userID) {
//		// TODO Auto-generated method stub
//		return this.OrdersDao.findAccepted1(userID);
//	}

	@Override
	public List<Orders> findAccepted2(int userID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.findAccepted2(userID);
	}

//	@Override
//	public List<Orders> findComplete1(int userID) {
//		// TODO Auto-generated method stub
//		return this.OrdersDao.findComplete1(userID);
//	}
//
//	@Override
//	public List<Orders> findComplete2(int userID) {
//		// TODO Auto-generated method stub
//		return this.OrdersDao.findComplete2(userID);
//	}
	@Override
	public int confirmOrder(int orderID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.confirmOrder(orderID);
	}

	@Override
	public List<Orders> findSelfHelp(int userID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.findSelfHelp(userID);
	}

	@Override
	public List<Orders> findSelfGetHelp(int userID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.findSelfGetHelp(userID);
	}

	@Override
	public List<Orders> findOrder(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return this.OrdersDao.findOrder(params);
	}

	@Override
	public Orders findCurrentOrder(int orderID) {
		// TODO Auto-generated method stub
		return this.OrdersDao.findCurrentOrder(orderID);
	}


}
