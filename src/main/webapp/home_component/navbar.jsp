<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

    
    <header id="header" class="site-header header-scrolled position-fixed text-black bg-light">
      <nav id="header-nav" class="navbar navbar-expand-lg px-3 mb-3">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.html">
            <img src="images/main-logo.png" class="logo">
          </a>
          <button class="navbar-toggler d-flex d-lg-none order-3 p-2" type="button" data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <svg class="navbar-icon">
              <use xlink:href="#navbar-icon"></use>
            </svg>
          </button>
          <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar" aria-labelledby="bdNavbarOffcanvasLabel">
            <div class="offcanvas-header px-4 pb-0">
              <a class="navbar-brand" href="index.html">
                <img src="images/main-logo.png" class="logo">
              </a>
              <button type="button" class="btn-close btn-close-black" data-bs-dismiss="offcanvas" aria-label="Close" data-bs-target="#bdNavbar"></button>
            </div>
            <div class="offcanvas-body">
              <ul id="navbar" class="navbar-nav text-uppercase justify-content-end align-items-center flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link me-4 active" href="#billboard">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-4" href="#company-services">Services</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-4" href="#mobile-products">Mobile</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-4" href="#ipad-products">Ipad</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-4" href="#macbook-products">Macbook</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-4" href="#aw-products">Apple Watch</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-4" href="#yearly-sale">Sale</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link me-4" href="#latest-blog">Blog</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link me-4 dropdown-toggle link-dark" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Pages</a>
                  <ul class="dropdown-menu">
                    <li>
                      <a href="about.html" class="dropdown-item">About</a>
                    </li>
                    <li>
                      <a href="blog.html" class="dropdown-item">Blog</a>
                    </li>
                    <li>
                      <a href="shop.html" class="dropdown-item">Shop</a>
                    </li>
                    <li>
                      <a href="cart.html" class="dropdown-item">Cart</a>
                    </li>
                    <li>
                      <a href="checkout.html" class="dropdown-item">Checkout</a>
                    </li>
                    <li>
                      <a href="single-post.html" class="dropdown-item">Single Post</a>
                    </li>
                    <li>
                      <a href="single-product.html" class="dropdown-item">Single Product</a>
                    </li>
                    <li>
                      <a href="contact.html" class="dropdown-item">Contact</a>
                    </li>
                  </ul>
                </li>
                
                
                <li class="nav-item">
                  <div class="user-items ps-5">
                    <ul class="d-flex justify-content-end list-unstyled">
                                 
                      
                      <c:if test="${not empty userobj }">
                      
                      
                      
						<li class="pe-3">
                        <a href="CHECKOUT.jsp" class="btn btn-outline-dark me-2">  ${userobj.name } </a>
                      </li>
			             <li class="pe-3">
						  <a href="logOut" class="btn btn-outline-dark me-2">LOGOUT </a>
						</li>			
					
					</c:if>         
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
        
	        <form class="d-flex" action="Search.jsp" method="post">
		        <input class="form-control me-2" type="search" name="timkiem"
		        placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-success" type="submit">Search</button>
	      	</form>
 	
      </nav>
    </header>
 
 
 
    
