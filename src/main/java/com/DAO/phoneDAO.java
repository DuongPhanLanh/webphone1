package com.DAO;

import java.util.List;

import com.entity.product;

public interface phoneDAO {
public boolean addPhone(product p);
	
	public List<product> AllPhone();
	
	public product getPhoneById(int ID);
	
	public boolean updateEditPhone(product p);
	
	public boolean deletePhone(int id);
	
	public List<product> getMobie();
	
	public List<product> getIPAD();
	
	public List<product> getMACBOOK();
	
	public List<product> getAPPLWACTH();
	
	public List<product> getAllMobie();
	
	public List<product> getAllIPAD();
	
	public List<product> getAllMACBOOK();
	
	public List<product> getAllAPPLWACTH();
	
	public List<product> getPhoneBySearch(String ch);
}
