package gk.lcw.dao;

import java.util.List;

import gk.lcw.po.Address;

public interface AddressDao {
	
	public List<Address> getAddress(int userID);
	public int updateAddress(Address address);
	public int deleteAddress(int addressID);
	public int insertAddress(Address address);

}
