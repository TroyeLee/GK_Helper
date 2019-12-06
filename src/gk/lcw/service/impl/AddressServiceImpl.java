package gk.lcw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import gk.lcw.dao.AddressDao;
import gk.lcw.po.Address;
import gk.lcw.service.AddressService;
@Service
@Transactional

public class AddressServiceImpl implements AddressService{
	@Autowired
	private AddressDao addressDao;

	@Override
	public List<Address> getAddress(int userID) {
		// TODO Auto-generated method stub
		return this.addressDao.getAddress(userID);
	}

	@Override
	public int updateAddress(Address address) {
		// TODO Auto-generated method stub
		return this.addressDao.updateAddress(address);
	}

	@Override
	public int deleteAddress(int addressID) {
		// TODO Auto-generated method stub
		return this.addressDao.deleteAddress(addressID);
	}

	@Override
	public int insertAddress(Address address) {
		// TODO Auto-generated method stub
		return this.addressDao.insertAddress(address);
	}

}
