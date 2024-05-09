<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.product"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.phoneDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbarIndex.jsp" %>
<h2><a href="homePage.jsp">Quay lại</a></h2>
<section id="aw-products" class="product-store padding-large position-relative">
      <div class="container px-4 px-lg-5 mt-5">
        <div class="row">
          <div class="display-header d-flex justify-content-between pb-3">
            <h2 class="display-7 text-dark text-uppercase">Kết quả tìm kiếm</h2>
            
          </div>
      </div>
        <!--  -->
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
          <%
    	String ch = request.getParameter("timkiem");
	    phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
	    List<product> list = dao.getPhoneBySearch(ch);
	    
	    for(product p : list) 
	    {%>
        	<div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/<%=p.getImg() %>" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%=p.getName() %></h5>
                                    <h5 class="fw-bolder"><%=p.getCategory() %></h5>
                                    <!-- Product price-->
                                    <h5 class="fw-bolder"><span style="text-decoration: line-through;"><%=p.getPrice() %></span>
                                    </h5>
                                    <%=p.getTotalPrice() %>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="Detail.jsp?pid=<%=p.getId()%>">View options</a>
                                
                                </div>
                               
                            </div>
                        </div>
                </div>	
	    <%}
	    
	    %>
  </div>      
    </div> 
    </div>
      <div class="swiper-pagination position-absolute text-center"></div>
    </section>
<%@include file="all_component/footer.jsp" %>
</body>
</html>