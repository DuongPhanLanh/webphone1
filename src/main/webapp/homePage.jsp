<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.product"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.phoneDAOImpl"%>
<%@page import="com.entity.userPhone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang người dùng</title>
<%@include file="home_component/allCss.jsp" %>
<%@include file="all_component/allCss.jsp" %>
</head>
<body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" tabindex="0">
	
	<%
		userPhone u =(userPhone)session.getAttribute("userobj");
	%>
	
<%@include file="home_component/navbar.jsp" %>

<section id="billboard" class="position-relative overflow-hidden bg-light-blue">
      <div class="swiper main-swiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="container">
              <div class="row d-flex align-items-center">
                <div class="col-md-6">
                  <div class="banner-content">
                    <h1 class="display-2 text-uppercase text-dark pb-5">Your Products Are Great.</h1>
                    <a href="shop.html" class="btn btn-medium btn-dark text-uppercase btn-rounded-none">Shop Product</a>
                  </div>
                </div>
                <div class="col-md-5">
                  <div class="image-holder">
                    <img src="img/banner-image.png" alt="banner">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="container">
              <div class="row d-flex flex-wrap align-items-center">
                <div class="col-md-6">
                  <div class="banner-content">
                    <h1 class="display-2 text-uppercase text-dark pb-5">Technology Hack You Won't Get</h1>
                    <a href="shop.html" class="btn btn-medium btn-dark text-uppercase btn-rounded-none">Shop Product</a>
                  </div>
                </div>
                <div class="col-md-5">
                  <div class="image-holder">
                    <img src="images/banner-image.png" alt="banner">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="swiper-icon swiper-arrow swiper-arrow-prev">
        <svg class="chevron-left">
          <use xlink:href="#chevron-left" />
        </svg>
      </div>
      <div class="swiper-icon swiper-arrow swiper-arrow-next">
        <svg class="chevron-right">
          <use xlink:href="#chevron-right" />
        </svg>
      </div>
    </section>
    <section id="company-services" class="padding-large">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6 pb-3">
            <div class="icon-box d-flex">
              <div class="icon-box-icon pe-3 pb-3">
                <svg class="cart-outline">
                  <use xlink:href="#cart-outline" />
                </svg>
              </div>
              <div class="icon-box-content">
                <h3 class="card-title text-uppercase text-dark">Free delivery</h3>
                <p>Consectetur adipi elit lorem ipsum dolor sit amet.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 pb-3">
            <div class="icon-box d-flex">
              <div class="icon-box-icon pe-3 pb-3">
                <svg class="quality">
                  <use xlink:href="#quality" />
                </svg>
              </div>
              <div class="icon-box-content">
                <h3 class="card-title text-uppercase text-dark">Quality guarantee</h3>
                <p>Dolor sit amet orem ipsu mcons ectetur adipi elit.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 pb-3">
            <div class="icon-box d-flex">
              <div class="icon-box-icon pe-3 pb-3">
                <svg class="price-tag">
                  <use xlink:href="#price-tag" />
                </svg>
              </div>
              <div class="icon-box-content">
                <h3 class="card-title text-uppercase text-dark">Daily offers</h3>
                <p>Amet consectetur adipi elit loreme ipsum dolor sit.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 pb-3">
            <div class="icon-box d-flex">
              <div class="icon-box-icon pe-3 pb-3">
                <svg class="shield-plus">
                  <use xlink:href="#shield-plus" />
                </svg>
              </div>
              <div class="icon-box-content">
                <h3 class="card-title text-uppercase text-dark">100% secure payment</h3>
                <p>Rem Lopsum dolor sit amet, consectetur adipi elit.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    
    
    
    
    
    <section id="mobile-products" class="product-store position-relative padding-large no-padding-top">
    
    
    
    
     <div class="container px-4 px-lg-5 mt-5">
          <div class="display-header d-flex justify-content-between pb-3">
            <h2 class="display-7 text-dark text-uppercase">Mobile Products</h2>
            <div class="btn-right">
              <a href="U_Phone_Mobile.jsp" class="btn btn-medium btn-normal text-uppercase">Go to Shop</a>
            </div>
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
	    List<product> list = dao.getMobie();
	    
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
    <section id="ipad-products" class="product-store padding-large position-relative">
      <div class="container px-4 px-lg-5 mt-5">
        <div class="row">
          <div class="display-header d-flex justify-content-between pb-3">
            <h2 class="display-7 text-dark text-uppercase">Ipad Products</h2>
            <div class="btn-right">
              <a href="U_Phone_IPAD.jsp" class="btn btn-medium btn-normal text-uppercase">Go to Shop</a>
            </div>
          </div>
      </div>
        <!--  -->
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
          <%
    
	    phoneDAOImpl dao1 = new phoneDAOImpl(DBConnect.getConn());
	    List<product> list1 = dao1.getIPAD();
	    
	    for(product p : list1) 
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
</div>
 </section>
 
 
    <section id="macbook-products" class="product-store padding-large position-relative">
      <div class="container px-4 px-lg-5 mt-5">
        <div class="row">
          <div class="display-header d-flex justify-content-between pb-3">
            <h2 class="display-7 text-dark text-uppercase">Macbook Products</h2>
            <div class="btn-right">
              <a href="U_Phone_MACBOOK.jsp" class="btn btn-medium btn-normal text-uppercase">Go to Shop</a>
            </div>
          </div>
      </div>
      </div>
        <!--  -->
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
          <%
    
	    phoneDAOImpl dao2 = new phoneDAOImpl(DBConnect.getConn());
	    List<product> list2 = dao2.getMACBOOK();
	    
	    for(product p : list2) 
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
 <div class="swiper-pagination position-absolute text-center"></div>
    </section>
    
    
    <section id="aw-products" class="product-store padding-large position-relative">
      <div class="container px-4 px-lg-5 mt-5">
        <div class="row">
          <div class="display-header d-flex justify-content-between pb-3">
            <h2 class="display-7 text-dark text-uppercase">Watch Products</h2>
            <div class="btn-right">
              <a href="U_Phone_Applewatch.jsp" class="btn btn-medium btn-normal text-uppercase">Go to Shop</a>
            </div>
          </div>
      </div>
        <!--  -->
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
          <%
    
	    phoneDAOImpl dao3 = new phoneDAOImpl(DBConnect.getConn());
	    List<product> list3 = dao3.getAPPLWACTH();
	    
	    for(product p : list3) 
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
                            <!-- Product actions -->
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
    
    
    
    
    
    
    
    
    <section id="yearly-sale" class="bg-light-blue overflow-hidden mt-5 padding-xlarge" style="background-image: url('images/single-image1.png');background-position: right; background-repeat: no-repeat;">
      <div class="row d-flex flex-wrap align-items-center">
        <div class="col-md-6 col-sm-12">
          <div class="text-content offset-4 padding-medium">
            <h3>10% off</h3>
            <h2 class="display-2 pb-5 text-uppercase text-dark">New year sale</h2>
            <a href="ShopSale.jsp" class="btn btn-medium btn-dark text-uppercase btn-rounded-none">Shop Sale</a>
          </div>
        </div>
        <div class="col-md-6 col-sm-12">
          
        </div>
      </div>
    </section>
    <section id="latest-blog" class="padding-large">
      <div class="container">
        <div class="row">
          <div class="display-header d-flex justify-content-between pb-3">
            <h2 class="display-7 text-dark text-uppercase">Latest Posts</h2>
            <div class="btn-right">
              <a href="blog.html" class="btn btn-medium btn-normal text-uppercase">Read Blog</a>
            </div>
          </div>
          <div class="post-grid d-flex flex-wrap justify-content-between">
            <div class="col-lg-4 col-sm-12">
              <div class="card border-none me-3">
                <div class="card-image">
                  <img src="images/post-item1.jpg" alt="" class="img-fluid">
                </div>
              </div>
              <div class="card-body text-uppercase">
                <div class="card-meta text-muted">
                  <span class="meta-date">feb 22, 2023</span>
                  <span class="meta-category">- Gadgets</span>
                </div>
                <h3 class="card-title">
                  <a href="#">Get some cool gadgets in 2023</a>
                </h3>
              </div>
            </div>
            <div class="col-lg-4 col-sm-12">
              <div class="card border-none me-3">
                <div class="card-image">
                  <img src="images/post-item2.jpg" alt="" class="img-fluid">
                </div>
              </div>
              <div class="card-body text-uppercase">
                <div class="card-meta text-muted">
                  <span class="meta-date">feb 25, 2023</span>
                  <span class="meta-category">- Technology</span>
                </div>
                <h3 class="card-title">
                  <a href="#">Technology Hack You Won't Get</a>
                </h3>
              </div>
            </div>
            <div class="col-lg-4 col-sm-12">
              <div class="card border-none me-3">
                <div class="card-image">
                  <img src="images/post-item3.jpg" alt="" class="img-fluid">
                </div>
              </div>
              <div class="card-body text-uppercase">
                <div class="card-meta text-muted">
                  <span class="meta-date">feb 22, 2023</span>
                  <span class="meta-category">- Camera</span>
                </div>
                <h3 class="card-title">
                  <a href="https://www.mysmartprice.com/gear/mobiles/mobiles-features/best-camera-phone-in-world/">Top 10 Small Camera In The World</a>
                </h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="testimonials" class="position-relative">
      <div class="container">
        <div class="row">
          <div class="review-content position-relative">
            <div class="swiper-icon swiper-arrow swiper-arrow-prev position-absolute d-flex align-items-center">
              <svg class="chevron-left">
                <use xlink:href="#chevron-left" />
              </svg>
            </div>
            <div class="swiper testimonial-swiper">
              <div class="quotation text-center">
                <svg class="quote">
                  <use xlink:href="#quote" />
                </svg>
              </div>
              <div class="swiper-wrapper">
                <div class="swiper-slide text-center d-flex justify-content-center">
                  <div class="review-item col-md-10">
                    <i class="icon icon-review"></i>
                    <blockquote>“Thời gian càng trôi, giá cả càng tăng lên, với sự tiện lợi không có giá trị, nhưng sự xa hoa không thể tránh khỏi. 
                    Với giá cả cao, mọi thứ trở nên xa xỉ và khó chịu. Nhưng giá cao không đảm bảo sự thoải mái.”</blockquote>
                    <div class="rating">
                      <svg class="star star-fill">
                        <use xlink:href="#star-fill"></use>
                      </svg>
                      <svg class="star star-fill">
                        <use xlink:href="#star-fill"></use>
                      </svg>
                      <svg class="star star-fill">
                        <use xlink:href="#star-fill"></use>
                      </svg>
                      <svg class="star star-half">
                        <use xlink:href="#star-half"></use>
                      </svg>
                      <svg class="star star-empty">
                        <use xlink:href="#star-empty"></use>
                      </svg>
                    </div>
                    <div class="author-detail">
                      <div class="name text-dark text-uppercase pt-2">Emma Chamberlin</div>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide text-center d-flex justify-content-center">
                  <div class="review-item col-md-10">
                    <i class="icon icon-review"></i>
                    <blockquote>"Blog là một ấn phẩm kỹ thuật số có thể bổ sung cho một trang web hoặc tồn tại độc lập. 
                    Một blog có thể bao gồm các bài viết, bài đăng ngắn, danh sách, đồ họa thông tin, video và nội dung kỹ thuật số khác."</blockquote>
                    <div class="rating">
                      <svg class="star star-fill">
                        <use xlink:href="#star-fill"></use>
                      </svg>
                      <svg class="star star-fill">
                        <use xlink:href="#star-fill"></use>
                      </svg>
                      <svg class="star star-fill">
                        <use xlink:href="#star-fill"></use>
                      </svg>
                      <svg class="star star-half">
                        <use xlink:href="#star-half"></use>
                      </svg>
                      <svg class="star star-empty">
                        <use xlink:href="#star-empty"></use>
                      </svg>
                    </div>
                    <div class="author-detail">
                      <div class="name text-dark text-uppercase pt-2">Jennie Rose</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-icon swiper-arrow swiper-arrow-next position-absolute d-flex align-items-center">
              <svg class="chevron-right">
                <use xlink:href="#chevron-right" />
              </svg>
            </div>
          </div>
        </div>
      </div>
      <div class="swiper-pagination"></div>
    </section>
    <section id="subscribe" class="container-grid padding-large position-relative overflow-hidden">
      <div class="container">
        <div class="row">
          <div class="subscribe-content bg-dark d-flex flex-wrap justify-content-center align-items-center padding-medium">
            <div class="col-md-6 col-sm-12">
              <div class="display-header pe-3">
                <h2 class="display-7 text-uppercase text-light">Subscribe Us Now</h2>
                <p>Get latest news, updates and deals directly mailed to your inbox.</p>
              </div>
            </div>
            <div class="col-md-5 col-sm-12">
              <form class="subscription-form validate">
                <div class="input-group flex-wrap">
                  <input class="form-control btn-rounded-none" type="email" name="EMAIL" placeholder="Your email address here" required="">
                  <button class="btn btn-medium btn-primary text-uppercase btn-rounded-none" type="submit" name="subscribe">Subscribe</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="instagram" class="padding-large overflow-hidden no-padding-top">
      <div class="container">
        <div class="row">
          <div class="display-header text-uppercase text-dark text-center pb-3">
            <h2 class="display-7">Shop Our Insta</h2>
          </div>
          <div class="d-flex flex-wrap">
            <figure class="instagram-item pe-2">
              <a href="https://templatesjungle.com/" class="image-link position-relative">
                <img src="images/insta-item1.jpg" alt="instagram" class="insta-image">
                <div class="icon-overlay position-absolute d-flex justify-content-center">
                  <svg class="instagram">
                    <use xlink:href="#instagram"></use>
                  </svg>
                </div>
              </a>
            </figure>
            <figure class="instagram-item pe-2">
              <a href="https://templatesjungle.com/" class="image-link position-relative">
                <img src="images/insta-item2.jpg" alt="instagram" class="insta-image">
                <div class="icon-overlay position-absolute d-flex justify-content-center">
                  <svg class="instagram">
                    <use xlink:href="#instagram"></use>
                  </svg>
                </div>
              </a>
            </figure>
            <figure class="instagram-item pe-2">
              <a href="https://templatesjungle.com/" class="image-link position-relative">
                <img src="images/insta-item3.jpg" alt="instagram" class="insta-image">
                <div class="icon-overlay position-absolute d-flex justify-content-center">
                  <svg class="instagram">
                    <use xlink:href="#instagram"></use>
                  </svg>
                </div>
              </a>
            </figure>
            <figure class="instagram-item pe-2">
              <a href="https://templatesjungle.com/" class="image-link position-relative">
                <img src="images/insta-item4.jpg" alt="instagram" class="insta-image">
                <div class="icon-overlay position-absolute d-flex justify-content-center">
                  <svg class="instagram">
                    <use xlink:href="#instagram"></use>
                  </svg>
                </div>
              </a>
            </figure>
            <figure class="instagram-item pe-2">
              <a href="https://templatesjungle.com/" class="image-link position-relative">
                <img src="images/insta-item5.jpg" alt="instagram" class="insta-image">
                <div class="icon-overlay position-absolute d-flex justify-content-center">
                  <svg class="instagram">
                    <use xlink:href="#instagram"></use>
                  </svg>
                </div>
              </a>
            </figure>
          </div>
        </div>
      </div>
    </section>


<%@include file="all_component/footer.jsp" %>
</body>
</html>