package com.DAO;

import com.entity.userPhone;

public interface userDAO {
	
	public boolean userRegister(userPhone us);

	public userPhone login(String gmail, String password);
	
	public boolean checkUser(String me);
}
