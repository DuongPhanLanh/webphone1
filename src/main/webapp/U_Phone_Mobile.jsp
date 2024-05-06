<%@page import="com.entity.product"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.phoneDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOBILE</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbarIndex.jsp" %>
<h2><a href="homePage.jsp">Quay lại</a></h2>

<section id="mobile-products" class="product-store position-relative padding-large no-padding-top">
    
    
    
    
     <div class="container px-4 px-lg-5 mt-5">
          <div class="display-header d-flex justify-content-between pb-3">
            <h2 class="display-7 text-dark text-uppercase">Mobile Products</h2>
          </div>
    <!--    <c:forEach items="${listP}" var="o" varStatus="loop">
            <c:if test="${loop.index < 6}">
                <div class="swiper-slide">
                    <div class="product-card position-relative">
                        <div class="image-holder">
                            <img src="${o.image}" alt="product-item" class="img-fluid">
                        </div>
                        <div class="cart-concern position-absolute">
                            <div class="cart-button d-flex">
                                <a href="#" class="btn btn-medium btn-black">Add to Cart</a>
                            </div>
                        </div>
                        <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                            <h3 class="card-title text-uppercase">
                                <a href="#">${o.title}</a>
                            </h3>
                            <span class="item-price text-primary">${o.formattedPrice}</span>
                        </div>
                    </div>
                </div>
            </c:if>
        </c:forEach> -->
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
          <%
    
	    phoneDAOImpl dao = new phoneDAOImpl(DBConnect.getConn());
	    List<product> list = dao.getAllMobie();
	    
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
      <div class="swiper-pagination position-absolute text-center"></div>
    </section>

<%@include file="all_component/footer.jsp" %>
</body>
</html>