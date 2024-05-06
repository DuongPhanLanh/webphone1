package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.product;

public class phoneDAOImpl implements phoneDAO {

private Connection conn;
	
	public phoneDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	
	@Override
	public boolean addPhone(product p) {
		boolean f = false;
		try {
			String sql="insert into phonedtl(name,img,category,description,price,stock,discount,totalPrice,gmail) value(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setString(2, p.getImg());
			ps.setString(3, p.getCategory());
			ps.setString(4, p.getDescription());
			ps.setDouble(5, p.getPrice());
			ps.setInt(6, p.getStock());
			ps.setDouble(7, p.getDiscount());
			ps.setDouble(8, p.getTotalPrice());
			ps.setString(9, p.getGmail());
			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	

	@Override
	public product getPhoneById(int ID) {
		product p =null;
		try {
			String sql = "select * from phonedtl where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ID);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
	            ps.setString(10, p.getGmail());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	@Override
	public boolean updateEditPhone(product p) {
		boolean f = false;
	    try {
	        String sql = "update phonedtl set name=?, img=?, category=?, description=?, price=?, stock=?, discount=?, totalPrice=? where id=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, p.getName());
	        ps.setString(2, p.getImg());
	        ps.setString(3, p.getCategory());
	        ps.setString(4, p.getDescription());
	        ps.setDouble(5, p.getPrice());
	        ps.setInt(6, p.getStock());
	        ps.setDouble(7, p.getDiscount());
	        ps.setDouble(8, p.getTotalPrice());
	        ps.setInt(9, p.getId());

	        int i = ps.executeUpdate();
	        if (i == 1) {
	            f = true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return f;
	}

	@Override
	public boolean deletePhone(int id) {
		boolean f = false;
		try {
			String sql="delete from phonedtl where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			int i = ps.executeUpdate();
			if(i == 1) {
				f = true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public List<product> getPhoneBySearch(String ch) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<product> AllPhone() {
		List<product> list = new ArrayList<product>();
		product p = null;
		
		try {
			String sql = "select * from phonedtl";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
				
				list.add(p);
				
			}
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<product> getMobie() {
		List<product> list = new ArrayList<product>();
		product p = null;
		
		try {
			String sql = "SELECT * FROM phonedtl WHERE category=? ORDER BY id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Mobile");
			ResultSet rs = ps.executeQuery();
			
			// so luong co the hien thi
			int i = 0;
			while (rs.next() && i<=6) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
				list.add(p);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}


	@Override
	public List<product> getIPAD() {
		List<product> list = new ArrayList<product>();
		product p = null;
		
		try {
			String sql = "SELECT * FROM phonedtl WHERE category=? ORDER BY id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "IPAD");
			ResultSet rs = ps.executeQuery();
			
			// so luong co the hien thi
			int i = 0;
			while (rs.next() && i<=6) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
				list.add(p);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<product> getMACBOOK() {
		List<product> list = new ArrayList<product>();
		product p = null;
		
		try {
			String sql = "SELECT * FROM phonedtl WHERE category=? ORDER BY id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "MACBOOK");
			ResultSet rs = ps.executeQuery();
			
			// so luong co the hien thi
			int i = 0;
			while (rs.next() && i<=6) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
				list.add(p);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<product> getAPPLWACTH() {
		List<product> list = new ArrayList<product>();
		product p = null;
		
		try {
			String sql = "SELECT * FROM phonedtl WHERE category=? ORDER BY id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "APPLE WACTH");
			ResultSet rs = ps.executeQuery();
			
			// so luong co the hien thi
			int i = 0;
			while (rs.next() && i<=6) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
				list.add(p);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<product> getAllMobie() {
		List<product> list = new ArrayList<product>();
		product p = null;
		
		try {
			String sql = "SELECT * FROM phonedtl WHERE category=? ORDER BY id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Mobile");
			ResultSet rs = ps.executeQuery();
			
			// so luong co the hien thi
			while (rs.next()) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<product> getAllIPAD() {
		List<product> list = new ArrayList<product>();
		product p = null;
		
		try {
			String sql = "SELECT * FROM phonedtl WHERE category=? ORDER BY id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "IPAD");
			ResultSet rs = ps.executeQuery();
			
			// so luong co the hien thi
			
			while (rs.next()) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
				list.add(p);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<product> getAllMACBOOK() {
		List<product> list = new ArrayList<product>();
		product p = null;
		
		try {
			String sql = "SELECT * FROM phonedtl WHERE category=? ORDER BY id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "MACBOOK");
			ResultSet rs = ps.executeQuery();
			
			// so luong co the hien thi
			
			while (rs.next()) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
				list.add(p);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<product> getAllAPPLWACTH() {
		List<product> list = new ArrayList<product>();
		product p = null;
		
		try {
			String sql = "SELECT * FROM phonedtl WHERE category=? ORDER BY id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "APPLE WACTH");
			ResultSet rs = ps.executeQuery();
			
			// so luong co the hien thi
			while (rs.next()) {
				p = new product();
				p.setId(rs.getInt(1));
	            p.setName(rs.getString(2));
	            p.setImg(rs.getString(3));
	            p.setCategory(rs.getString(4)); 
	            p.setDescription(rs.getString(5));
	            p.setPrice(rs.getDouble(6));
	            p.setStock(rs.getInt(7));
	            p.setDiscount(rs.getDouble(8));
	            p.setTotalPrice(rs.getDouble(9));
				list.add(p);
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	

}
