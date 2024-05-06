<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.product"%>
<%@page import="com.DAO.phoneDAOImpl"%>
<%@page import="com.entity.userPhone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin mặt hàng</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbarIndex.jsp" %>
	<%
		userPhone u =(userPhone)session.getAttribute("userobj");
	%>
<!-- Navigation-->
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
            
            <%
			int id = Integer.parseInt(request.getParameter("pid"));
			phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
			product p = dao.getPhoneById(id);
		    %>
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="img/<%=p.getImg() %>" alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1"><%=p.getId() %></div>
                        <h1 class="display-5 fw-bolder"><%=p.getName() %></h1>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through"><%=p.getPrice() %></span>
                            <span><%=p.getTotalPrice() %></span>
                        </div>
                        <p class="lead"><%=p.getDescription() %></p>
                        <div class="medium mb-4">Hàng còn: <%=p.getStock() %></div>
                        <div class="d-flex">
                        	
                            <a class="btn btn-outline-dark mt-auto" href="cart?pid=<%=p.getId()%>&&uid=<%=u.getId()%>"> Add to cart</a>
                      
                        </div>                       
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Vùng xuất giá trị tìm kiếm tương đương -->
        
        <!-- hiển thị mặt hàng khác -->
        
        
        
<%@include file="all_component/footer.jsp" %>
</body>
</html>