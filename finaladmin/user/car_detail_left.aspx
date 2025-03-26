<%@ Page Title="" Language="C#" MasterPageFile="~/user/HomeMasterPage1.master" AutoEventWireup="true" CodeFile="car_detail_left.aspx.cs" Inherits="user_Default3" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- x tittle num Wrapper Start -->

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="x_title_num_mian_Wrapper float_left">
            <div class="container">
                <div class="x_title_inner_num_wrapper float_left">
                    <div class="x_title_num_heading">
                        <h3>Choose a car</h3>
                        <p>Complete Your Step</p>
                    </div>
                    <div class="x_title_num_heading_cont">
                        <div class="x_title_num_main_box_wrapper">
                            <div class="x_icon_num">
                                <a href="userhome.aspx">
                                    <p>1</p>
                                </a>
                            </div>
                            <h5>Time & place</h5>
                        </div>
                        <div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper2">
                            <div class="x_icon_num">
                                <%--"x_icon_num x_icon_num2"--%>
                                <a href="car_booking.aspx">
                                    <p>2</p>
                                </a>
                            </div>
                            <h5>Car</h5>
                        </div>
                        <div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper3">
                            <div class="x_icon_num x_icon_num2">
                                <p>3</p>
                            </div>
                            <h5>detail</h5>
                        </div>
                        <div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper3">
                            <div class="x_icon_num x_icon_num3">
                                <p>4</p>
                            </div>
                            <h5>checkout</h5>
                        </div>
                        <div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper3 x_title_num_main_box_wrapper_last">
                            <div class="x_icon_num x_icon_num3">
                                <p>5</p>
                            </div>
                            <h5>done!</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- x tittle num Wrapper End -->
        <!-- x car book sidebar section Wrapper Start -->

        <div class="x_car_book_sider_main_Wrapper float_left">
            <div class="container">
                <div class="row">
                    <%--<div class="col-xl-3 col-lg-4 col-md-12 col-sm-12 col-12">
					
				</div>--%>
                    <div class="col-md-12">
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="x_ln_car_heading_wrapper float_left">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <%--<div class="btc_ln_slider_wrapper">--%>
                            <div class="owl-carousel owl-theme owl-loaded owl-drag">



                                <div class="owl-stage-outer">

                                    <div class="owl-stage" style="transform: translate3d(-950px, 0px, 0px); transition: all 0s ease 0s;">
                                       
                                        <%--<div class="owl-item cloned" style="width: 205.667px; margin-right: 20px;">
                                            <div class="item">--%>
                                                <%--<div class="btc_team_slider_cont_main_wrapper">
                                                    <div class="btc_team_img_wrapper">
                                                        <img src="images/team3.jpg" alt="team_img1">
                                                    </div>

                                                </div>--%>
                                            </div>
                                        </div>
                                        <%--<div class="owl-item active" style="width: 205.667px; margin-right: 20px;">
                                            <div class="item">--%>
                                                <%--	<div class="btc_team_slider_cont_main_wrapper">
									<div class="btc_team_img_wrapper">
										<img src="images/team1.jpg" alt="team_img1">
									
									</div>--%>
                                           <%-- </div>
                                        </div>
                                    </div>--%>

                                    <div class="owl-item active" style="width: 205.667px; margin-right: 20px;">
                                        <div class="item">
                                            <div class="btc_team_slider_cont_main_wrapper">
                                                <div class="btc_team_img_wrapper">
                                                    <%--<img src="images/team2.jpg" alt="team_img1">--%>
                                                    <asp:Image ID="Image1" runat="server" alt="car_img1"/>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item active" style="width: 205.667px; margin-right: 20px;">
                                        <div class="item">
                                            <div class="btc_team_slider_cont_main_wrapper">
                                                <div class="btc_team_img_wrapper">
                                                    <%--<img src="images/team3.jpg" alt="team_img1">--%>
                                                    <asp:Image ID="Image2" runat="server" alt="car_img2"/>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item cloned" style="width: 205.667px; margin-right: 20px;">
                                        <div class="item">
                                            <div class="btc_team_slider_cont_main_wrapper">
                                                <div class="btc_team_img_wrapper">
                                                    <%--<img src="images/team1.jpg" alt="team_img1">--%>
                                                    <asp:Image ID="Image3" runat="server" alt="car_img3"/>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item cloned" style="width: 205.667px; margin-right: 20px;">
                                        <div class="item">
                                            <div class="btc_team_slider_cont_main_wrapper">
                                                <div class="btc_team_img_wrapper">
                                                    <%--<img src="images/team2.jpg" alt="team_img1">--%>
                                                    <asp:Image ID="Image4" runat="server" alt="car_img4"/>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item cloned" style="width: 205.667px; margin-right: 20px;">
                                        <div class="item">
                                            <div class="btc_team_slider_cont_main_wrapper">
                                                <div class="btc_team_img_wrapper">
                                                    <%--<img src="images/team3.jpg" alt="team_img1">--%>
                                                    <asp:Image ID="Image5" runat="server" alt="car_img5"/>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="owl-nav disabled"><div class="owl-prev"><i class="flaticon-left-arrow" aria-hidden="true"></i></div><div class="owl-next"><i class="flaticon-right-arrow" aria-hidden="true"></i></div></div><div class="owl-dots disabled"><div class="owl-dot active"><span></span></div></div></div>--%>
                        </div>
                    <%--</div>--%>
                </div>

                <div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 col-12">
                    <div class="row">
                        <div class="col-md-12">
                        </div>
                    </div>
                </div>
                <div class="x_car_detail_slider_bottom_cont float_left">
                    <div class="x_car_detail_slider_bottom_cont_left">
                        <h3>
                            <asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label></h3>
                        
                        <%--<i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                        <i class="fa fa-star-o"></i>--%>
                        <asp:rating ID="Rating1" runat="server" AutoPostBack="True"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" ReadOnly="true" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
                            </asp:rating>
                        <span>251 Reviews</span>
                    </div>
                    <div class="x_car_detail_slider_bottom_cont_right">
                        <h3>‎<asp:Label ID="lblrent" runat="server" Text="Label"></asp:Label>₹</h3>
                        <p>
                            <span>Per</span>
                            <br>
                            / day
                        </p>
                    </div>
                </div>

                <%--	<div class="x_car_detail_slider_bottom_cont_center float_left">
										<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, rem a quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Dssed odio sit amet nibh vulputate cursus a sit amt mauris. Morbi accumsan ipsum velit.
											<br>
											<br>This is Photoshop's version of Lorem Ipsum. Proin gravida n vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum tor. This is Photoshop's version of Lorem Ipsum.</p>
									</div>--%>
                <div class="x_car_offer_heading x_car_offer_heading_listing float_left x_car_offer_heading_inner_car_names x_car_offer_heading_inner_car_names2">
                    <ul class="">
                        <li><a><i class="fa fa-users"></i>&nbsp;<asp:Label ID="lblseats" runat="server" Text="Label"></asp:Label> Seater</a>
                        </li>
                        <li><a><i class="fa fa-battery-1"></i>&nbsp;Provided Fuel : 5 ltrs</a>
                        </li>
                        <li><a><i class="fa fa-code-fork"></i>&nbsp;<asp:Label ID="lbltran" runat="server" Text="Label"></asp:Label></a>
                        </li>
                        <li><a><i class="fa fa-briefcase"></i>&nbsp;<asp:Label ID="lblbag" runat="server" Text="Label"></asp:Label> Bag Space</a>
                        </li>
                        <li><a><i class="fa fa-snowflake-o"></i>&nbsp;Air Conditioning</a>
                        </li>
                        <li><a><i class="fa fa-beer"></i>&nbsp;Average : <asp:Label ID="lblavag" runat="server" Text="Label"></asp:Label> km/ltr</a>
                        </li>
                        
                       <%-- <li>--%>
                           <%-- <div class="nice-select" tabindex="0">
                                <span class="current"><i class="fa fa-bars"></i>Others</span>--%>
                                <%--<ul class="list">
                                    <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                    </li>
                                    <li class="dpopy_li"><a href="#"><i class="fa fa-shield"></i>Transmission</a>
                                    </li>
                                    <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                    </li>
                                </ul>--%>
                           <%-- </div>
                        </li>--%>
                    </ul>
                    <ul class="">
                        <li><a><i class="fa fa-car"> </i>Fuel : <asp:Label ID="lblfuel" runat="server" Text="Label"></asp:Label></a>
                        </li>
                        <li><a><i class="fa fa-adjust"> </i>Car Color : <asp:Label ID="lblcolor" runat="server" Text="Label"></asp:Label></a>
                        </li>
                        <li><a><i class="fa fa-calendar"> </i> Manufacture Year : <asp:Label ID="lblyear" runat="server" Text="Label"></asp:Label></a>
                        </li>
                   </ul>
                </div>
                <div class="x_avanticar_btn float_left">
                    <ul>
                        <li>
                            <%--<a href='car_checkout.aspx?id='>Book Now <i class="fa fa-arrow-right"></i></a>--%>
                            <%--<asp:Button ID="btnbook" runat="server" class="btn btn-primary" Text="Book Now" />--%>
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black">Book Now <i class="fa fa-arrow-right"></i></asp:HyperLink>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="x_ln_car_heading_wrapper x_ln_car_heading_wrappercsss float_left">
                <%--	<h3>Latest cars</h3>--%>
            </div>
            <%--<div class="btc_ln_slider_wrapper btc_ln_slider_wrapper_cs">
                <div class="owl-carousel owl-theme">
                    <div class="item">
                        <div class="x_car_offer_main_boxes_wrapper float_left margintop_zero">
                            <div class="x_car_offer_starts float_left">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <div class="x_car_offer_img float_left">
                                <img src="images/c1.png" alt="img">
                            </div>
                            <div class="x_car_offer_price float_left">
                                <div class="x_car_offer_price_inner">
                                    <h3>
                                        <asp:Label ID="Label1" runat="server" Text="">car ₹</asp:Label></h3>
                                    <p>
                                        <span>from</span>
                                        <br>
                                        / day
                                    </p>
                                </div>
                            </div>
                            <div class="x_car_offer_heading float_left">
                                <h2><a href="#">Dakota zaris</a></h2>
                                <p>Extra Small</p>
                            </div>
                            <div class="x_car_offer_heading x_car_offer_heading_avanti float_left">
                                <ul>
                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4</a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;2</a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;9</a>
                                    </li>
                                    <li>
                                        <div class="nice-select" tabindex="0">
                                            <span class="current"><i class="fa fa-bars"></i></span>
                                            <ul class="list">
                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                </li>
                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                </li>
                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="x_car_offer_bottom_btn float_left">
                                <ul>
                                    <li><a href="#">Book now</a>
                                    </li>
                                    <li><a href="#">Details</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="x_car_offer_main_boxes_wrapper float_left margintop_zero">
                            <div class="x_car_offer_starts float_left">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <div class="x_car_offer_img float_left">
                                <img src="images/c1.png" alt="img">
                            </div>
                            <div class="x_car_offer_price float_left">
                                <div class="x_car_offer_price_inner">

                                    <h3>
                                        <asp:Label ID="Label2" runat="server" Text="Label">₹</asp:Label></h3>
                                    <p>
                                        <span>from</span>
                                        <br>
                                        / day
                                    </p>
                                </div>
                            </div>
                            <div class="x_car_offer_heading float_left">
                                <h2><a href="#">Dakota zaris</a></h2>
                                <p>Extra Small</p>
                            </div>
                            <div class="x_car_offer_heading x_car_offer_heading_avanti float_left">
                                <ul>
                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4</a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;2</a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;9</a>
                                    </li>
                                    <li>
                                        <div class="nice-select" tabindex="0">
                                            <span class="current"><i class="fa fa-bars"></i></span>
                                            <ul class="list">
                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                </li>
                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                </li>
                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="x_car_offer_bottom_btn float_left">
                                <ul>
                                    <li><a href="#">Book now</a>
                                    </li>
                                    <li><a href="#">Details</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="x_car_offer_main_boxes_wrapper float_left margintop_zero">
                            <div class="x_car_offer_starts float_left">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <div class="x_car_offer_img float_left">
                                <img src="images/c1.png" alt="img">
                            </div>
                            <div class="x_car_offer_price float_left">
                                <div class="x_car_offer_price_inner">
                                    <h3>$25</h3>
                                    <p>
                                        <span>from</span>
                                        <br>
                                        / day
                                    </p>
                                </div>
                            </div>
                            <div class="x_car_offer_heading float_left">
                                <h2><a href="#">Dakota zaris</a></h2>
                                <p>Extra Small</p>
                            </div>
                            <div class="x_car_offer_heading x_car_offer_heading_avanti float_left">
                                <ul>
                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4</a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;2</a>
                                    </li>
                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;9</a>
                                    </li>
                                    <li>
                                        <div class="nice-select" tabindex="0">
                                            <span class="current"><i class="fa fa-bars"></i></span>
                                            <ul class="list">
                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                </li>
                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                </li>
                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="x_car_offer_bottom_btn float_left">
                                <ul>
                                    <li><a href="#">Book now</a>
                                    </li>
                                    <li><a href="#">Details</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <%--	<div class="x_css_tabs_wrapper float_left">
									<div class="x_css_tabs_main_wrapper float_left">
										<ul class="nav nav-tabs">
										<li class="nav-item">
											<a class="nav-link active" data-toggle="tab" href="#home"> User ReView
											</a>
										</li>
										<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#menu1">Description</a>
										</li>
									</ul>
									</div>
									<div class="tab-content">
										<div id="home" class="tab-pane active">
											<div class="x_css_skills_wrapper">
												<div class="skills mt-50 x_c_s">
									<h3>Rating</h3>
									<div class="skill-item">
										<h6><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> <span>90%</span></h6>
										<div class="skills-progress"><span data-value="90%"></span>
										</div>
									</div>
									<div class="skill-item">
										<h6><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><span>40%</span></h6>
										<div class="skills-progress"><span data-value="70%"></span>
										</div>
									</div>
									<div class="skill-item">
										<h6><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i> <span>80%</span></h6>
										<div class="skills-progress"><span data-value="80%"></span>
										</div>
									</div>
									<div class="skill-item">
										<h6><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i> <span>85%</span></h6>
										<div class="skills-progress"><span data-value="85%"></span>
										</div>
									</div>
									<div class="skill-item">
										<h6><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i> <span>5%</span></h6>
										<div class="skills-progress"><span data-value="5%"></span>
										</div>
									</div>
								</div>
											</div>
											<div class="x_css_skills_form_wrapper">
												<div class="x_css_skill_form_heading float_left">
													<h3>Your Reviews</h3>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="row only_left">
													<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
										<div class="contect_form1 xcontect_form1">
											<input type="text" placeholder="Full Name *">
										</div>
									</div>
									<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
										<div class="contect_form2 xcontect_form2">
											<input type="email" placeholder="Email *">
										</div>
									</div>
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="contect_form2 xcontect_form2">
											<input type="text" placeholder="Title *">
										</div>
									</div>
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="contect_form4 xcontect_form4">
											<textarea rows="4" placeholder="Write Comment"></textarea>
										</div>
									</div>
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="contect_btn x_css_form_btn">
											<ul>
												<li><a href="#">Submit <i class="fa fa-arrow-right"></i></a>
												</li>
											</ul>
										</div>
									</div>
												</div>
											</div>
										</div>
										<div id="menu1" class="tab-pane fade">
											<div class="x_car_detail_descrip">
												<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, rem a quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Dssed odio sit amet nibh vulputate cursus a sit amt mauris. Morbi accumsan ipsum velit. 
												This is Photoshop's version of Lorem Ipsum. Proin gravida n vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum tor. This is Photoshop's version of Lorem Ipsum.</p>
												<ul>
													<li><a href="#">Read More <i class="fa fa-arrow-right"></i></a>
													</li>
												</ul>
											</div>
										</div>
									</div>	
								</div>--%>
        </div>
        </div>
				










					</div>
			<%--	</div>
			</div>
		</div>
	</div>--%>
        <!-- x car book sidebar section Wrapper End -->
        <!-- x news latter Wrapper Start -->
        <%--<div class="x_news_letter_main_wrapper">
		<div class="container">
			<div class="x_news_contact_wrapper">
				<img src="images/nl1.png" alt="news_img">
				<h4>Call Us <br> <span>+1 800 123 4567</span></h4>
			</div>
			<div class="x_news_contact_second_wrapper">
				<h4>Newsletter</h4>
			</div>
			<div class="x_news_contact_search_wrapper">
				<input type="text" placeholder="Email Address">
				<button>read more <i class="fa fa-arrow-right"></i>
				</button>
			</div>
		</div>
	</div>--%>
        <!-- x news latter Wrapper End -->


         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
        
                    <center>
                         <div>
                             <h3 style="font-size: xx-large; color: #000000; font-family: 'Arial Rounded MT Bold'"> User Comments & Reviews </h3>
                          </div>
                    </center>


       <div class="x_car_book_sider_main_Wrapper float_left">
		<div class="container">
				<div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 col-12">
                        <div class="col-md-12">
							<div class="row">
                                </HeaderTemplate>
                                 <ItemTemplate>
								<div class="col-md-12">
									<div class="blog_single_comment_wrapper">
										<div class="blog_comment3_wrapper">
											<div class="blog_comment1_img">
												<img src="../img/c3.png" alt="comment_img" class="img-responsive img-circle"/>
											</div>
											<div class="blog_comment1_cont">
												<h3><%#Eval("fname") %>  <%#Eval("lname") %> <i class="fa fa-circle"></i> <span><asp:Rating ID="Rating2" runat="server" AutoPostBack="True"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" ReadOnly="true" EmptyStarCssClass="fa fa-star-o oo"
            FilledStarCssClass="fa fa-star oo" CurrentRating='<%#Eval("rate") %>'>
                                                        </asp:Rating></span> &nbsp;&nbsp;<%--<i class="fa fa-star oo"></i>--%>
													<%--<i class="fa fa-star oo"></i>
													<i class="fa fa-star oo"></i>
													<i class="fa fa-star-o oo"></i>
													<i class="fa fa-star-o oo"></i>--%>
												</h3>
												<p><%#Eval("feedback") %></p>
											</div>
										</div>
									</div>
								</div>
								</ItemTemplate>
                                <FooterTemplate>
							</div>
						</div>
				</div>
		</div>
	</div>
                </FooterTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT tbl_feedback.feedback_id, tbl_feedback.customer_id, tbl_feedback.booking_id, tbl_feedback.feedback, tbl_feedback.rate, tbl_feedback.car_id, tbl_customer.fname, tbl_customer.lname FROM tbl_feedback INNER JOIN tbl_customer ON tbl_feedback.customer_id = tbl_customer.customer_id WHERE (tbl_feedback.car_id = @car_id)">
                       <SelectParameters>
                           <asp:QueryStringParameter QueryStringField="id" Name="car_id"></asp:QueryStringParameter>
                        </SelectParameters>
                 </asp:SqlDataSource>



    </form>

</asp:Content>

