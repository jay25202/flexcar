<%@ Page Title="" Language="C#" MasterPageFile="visitorMasterPage.master" AutoEventWireup="true" CodeFile="visitorhome.aspx.cs" Inherits="userhome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
<style type="text/css">
    .auto-style1 {
        left: 0px;
        top: 0px;
        border: 1px solid #eeeeee;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    height: 50px;
    width: 100%;
    }

</style>
    <form runat="server">
        <asp:scriptmanager runat="server"></asp:scriptmanager>
					<header class="mobail_menu d-none d-block d-xs-block d-sm-block d-md-none d-lg-none d-xl-none">
						<div class="container-fluid">
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-6">
									<div class="hs_logo">
										<a href="visitorhome.aspx">
											<img src="images/logo.png" alt="Logo" title="Logo">
										</a>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-6">
									<div class="cd-dropdown-wrapper">
										<a class="house_toggle" href="#0">
											<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="511.63px" height="511.631px" viewBox="0 0 511.63 511.631" style="enable-background:new 0 0 511.63 511.631;" xml:space="preserve">
												<g>
													<g>
														<path d="M493.356,274.088H18.274c-4.952,0-9.233,1.811-12.851,5.428C1.809,283.129,0,287.417,0,292.362v36.545
																	c0,4.948,1.809,9.236,5.424,12.847c3.621,3.617,7.904,5.432,12.851,5.432h475.082c4.944,0,9.232-1.814,12.85-5.432
																	c3.614-3.61,5.425-7.898,5.425-12.847v-36.545c0-4.945-1.811-9.233-5.425-12.847C502.588,275.895,498.3,274.088,493.356,274.088z" />
														<path d="M493.356,383.721H18.274c-4.952,0-9.233,1.81-12.851,5.427C1.809,392.762,0,397.046,0,401.994v36.546
																	c0,4.948,1.809,9.232,5.424,12.854c3.621,3.61,7.904,5.421,12.851,5.421h475.082c4.944,0,9.232-1.811,12.85-5.421
																	c3.614-3.621,5.425-7.905,5.425-12.854v-36.546c0-4.948-1.811-9.232-5.425-12.847C502.588,385.53,498.3,383.721,493.356,383.721z" />
														<path d="M506.206,60.241c-3.617-3.612-7.905-5.424-12.85-5.424H18.274c-4.952,0-9.233,1.812-12.851,5.424
																	C1.809,63.858,0,68.143,0,73.091v36.547c0,4.948,1.809,9.229,5.424,12.847c3.621,3.616,7.904,5.424,12.851,5.424h475.082
																	c4.944,0,9.232-1.809,12.85-5.424c3.614-3.617,5.425-7.898,5.425-12.847V73.091C511.63,68.143,509.82,63.861,506.206,60.241z" />
														<path d="M493.356,164.456H18.274c-4.952,0-9.233,1.807-12.851,5.424C1.809,173.495,0,177.778,0,182.727v36.547
																	c0,4.947,1.809,9.233,5.424,12.845c3.621,3.617,7.904,5.429,12.851,5.429h475.082c4.944,0,9.232-1.812,12.85-5.429
																	c3.614-3.612,5.425-7.898,5.425-12.845v-36.547c0-4.952-1.811-9.231-5.425-12.847C502.588,166.263,498.3,164.456,493.356,164.456z
																	" />
													</g>
												</g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
											</svg>
										</a>
										<!-- .cd-dropdown -->
									</div>
									<%--<nav class="cd-dropdown">
										<h2><a href="index.html">Xpedia</a></h2>
										<a href="#0" class="cd-close">Close</a>
										<ul class="cd-dropdown-content">
											<li>
												<form class="cd-search">
													<input type="search" placeholder="Search...">
												</form>
											</li>
											<li class="has-children"> <a href="#">Home</a>
												<ul class="cd-secondary-dropdown is-hidden">
													<li class="go-back"><a href="#0">Menu</a>
													</li>
													<li> <a href="index.html">Home-I</a>
													</li>
													<!-- .has-children -->
													<li> <a href="index_II.html">Home_II</a>
													</li>
													<!-- .has-children -->
												</ul>
												<!-- .cd-secondary-dropdown -->
											</li>
											<li class="has-children"> <a href="#">Car</a>
												<ul class="cd-secondary-dropdown is-hidden">
													<li class="go-back"><a href="#0">Menu</a>
													</li>
													<li> <a href="car_accessories.html">Car-Accessories</a>
													</li>
													<li> <a href="car_booking.html">Car-Booking</a>
													</li>
													<li><a href="car_booking_done.html">Car-Booking-Done</a>
													</li>
													<li><a href="car_checkout.html">Car-Checkout</a>
													</li>
													<li><a href="car_detail_left.html"> Car-Detail-Left</a>
													</li>
													<li><a href="car_detail_right.html"> Car-Detail-Right</a>
													</li>
													<!-- .has-children -->
												</ul>
												<!-- .cd-secondary-dropdown -->
											</li>
											<li> <a href="about.html">About</a>
											</li>
											<li> <a href="team.html">Our Team</a>
											</li>
											<li> <a href="services.html">Services</a>
											</li>
											<li class="has-children"> <a href="#">Blog</a>
												<ul class="cd-secondary-dropdown is-hidden">
													<li class="go-back"><a href="#0">Menu</a>
													</li>
													<li> <a href="blog_category.html">Blog Categories</a>
													</li>
													<!-- .has-children -->
													<li> <a href="blog_single.html">Blog Single</a>
													</li>
													<!-- .has-children -->
												</ul>
												<!-- .cd-secondary-dropdown -->
											</li>
											<li> <a href="contact.html">Contact</a>
											</li>
										</ul>
										<!-- .cd-dropdown-content -->
									</nav>--%>
								</div>
							</div>
						</div>
						<!-- .cd-dropdown-wrapper -->
					</header>
		
	<!-- hs Navigation End -->
	<!-- hs Slider Start -->
	<div class="slider-area float_left">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<div class="carousel-captions caption-1">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<div class="content">
										<p data-animation="animated fadeInUp">Pick Your Car & Drive</p>
										<h2 data-animation="animated fadeInUp">See how it works for real<br>
<span>Car Hire Starts From 1000₹ Only</span></h2> 
										<div class="hs_effect_btn">
											<ul>
											<%--	<li data-animation="animated flipInX">
													<a rel='external' href='https://www.youtube.com/embed/ryzOXAO0Ss0' title='title' class="test-popup-link">
														<img src="images/play.png" alt="olay_icon">&nbsp;&nbsp;Play Video</a>
												</li>--%>
												<li data-animation="animated flipInX"><a href="vcars.aspx">View Car<i class="fa fa-arrow-right"></i></a>
												</li>
											</ul>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="carousel-captions caption-2">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<div class="content">
										<p data-animation="animated fadeInUp">Pick Your Car & Drive</p>
										<h2 data-animation="animated fadeInUp">See how it works for real<br>
                                            <span>Car Hire Start From 1000₹ Only</span></h2> 
										<div class="hs_effect_btn">
											<ul>
											<%--	<li data-animation="animated flipInX">
													<a rel='external' href='https://www.youtube.com/embed/ryzOXAO0Ss0' title='title' class="test-popup-link">
														<img src="images/play.png" alt="olay_icon">&nbsp;&nbsp;Play Video</a>
												</li>--%>
												<li data-animation="animated flipInX"><a href="vcars.aspx">View Car<i class="fa fa-arrow-right"></i></a>
												</li>
											</ul>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="carousel-captions caption-3">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<div class="content">
										<p data-animation="animated fadeInUp">Pick Your Car & Drive</p>
										<h2 data-animation="animated fadeInUp">See how it works for real<br>
<span>Car Hire Start From 1000₹ Only</span></h2> 
										<div class="hs_effect_btn">
											<ul>
												<%--<li data-animation="animated flipInX">
													<a rel='external' href='https://www.youtube.com/embed/ryzOXAO0Ss0' title='title' class="test-popup-link">
														<img src="images/play.png" alt="olay_icon">&nbsp;&nbsp;Play Video</a>
												</li>--%>
												<li data-animation="animated flipInX"><a href="vcars.aspx">View Car<i class="fa fa-arrow-right"></i></a>
												</li>
											</ul>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"><span class="number"></span>
					</li>
					<li data-target="#carousel-example-generic" data-slide-to="1" class=""><span class="number"></span>
					</li>
					<li data-target="#carousel-example-generic" data-slide-to="2" class=""><span class="number"></span>
					</li>
				</ol>
				<div class="carousel-nevigation">
					<a class="prev" href="#carousel-example-generic" role="button" data-slide="prev">	<i class="fa fa-angle-left"></i>
					</a>
					<a class="next" href="#carousel-example-generic" role="button" data-slide="next"> <i class="fa fa-angle-right"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
       
	<!-- hs Slider End -->
	<div class="x_responsive_form_wrapper float_left">
		<div class="container">
			<div class="x_slider_form_main_wrapper float_left">
				<div class="x_slider_form_heading_wrapper float_left">
					<h3>Let’s find your perfect car</h3>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-sec-header">
                            
							<h3>Pick-up Location</h3><asp:RequiredFieldValidator ControlToValidate="txtpickup" errormessage="This field can't be null" forecolor="red" ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ValidationGroup="visitor" ></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtpickup" runat="server" placeholder="City, Airport, Station, etc."></asp:TextBox>
							<%--<input type="text" placeholder="City, Airport, Station, etc.">--%>
						</div>
					</div>
                  
					<div class="col-md-6">
						<div class="form-sec-header">
							<h3>Drop-off Location</h3>
                            <asp:requiredfieldvalidator runat="server" ControlToValidate="txtdrop" errormessage="This field can't be null" forecolor="red" ValidationGroup="visitor" Display="Dynamic"></asp:requiredfieldvalidator>
                            <asp:TextBox ID="txtdrop" runat="server" placeholder="City, Airport, Station, etc."></asp:TextBox>
						<%--	<input type="text" placeholder="City, Airport, Station, etc.">--%>
						</div>
					</div>
					<%--<div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">--%>
                    <%--    <br />
                        <br/>--%>
					 <%--<div class="col-md-12">
                           <div class="x_slider_checkbox_bottom float_left">
                    
					</div></div> --%>
                        <%--</div>--%> 
					<div class="col-md-6">
						<div class="form-sec-header">
							<h3>Pick-up Date</h3>
						<%--	<label class="cal-icon">Pick-up Date</label>--%>
                              <asp:requiredfieldvalidator runat="server" ControlToValidate="txtpickdate" errormessage="This field can't be null" Display="Dynamic" forecolor="red" ValidationGroup="visitor" ></asp:requiredfieldvalidator>
                                <asp:TextBox ID="txtpickdate" runat="server" type="date" class="form-control datepicker hasDatepicker"></asp:TextBox>
                                <%--<asp:CalendarExtender ID="txtpickdateCalendarExtender1" TargetControlID="txtpickdate" runat="server" Enabled="True"></asp:CalendarExtender>--%>
								<%--<input type="text" placeholder="Tue 16 Jan 2018" class="form-control datepicker hasDatepicker" id="dp1552716657696">--%>
							
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-sec-header">
							<h3>Drop-Off Date</h3>
                              <asp:requiredfieldvalidator runat="server" ControlToValidate="txtdropdate" errormessage="This field can't be null" Display="Dynamic" forecolor="red" ValidationGroup="visitor" ></asp:requiredfieldvalidator>
                                <asp:TextBox ID="txtdropdate" runat="server" type="date"  class="form-control datepicker hasDatepicker"></asp:TextBox>
								<%--<input type="text" placeholder="Tue 16 Jan 2018" class="form-control datepicker hasDatepicker" id="dp1552716657697">--%>
				
						</div>
					</div>

                    <div class="col-md-6">
						<div  class="form-sec-header">
                            <h3>Select State</h3>
                            <asp:updatepanel runat="server">
                                    <ContentTemplate> 
                             
                                        <asp:DropDownList ID="ddlstate" runat="server" class="myselect auto-style1"  AutoPostBack="True"  DataTextField="state_name" DataValueField="state_id"  DataSourceID="SqlDataSource_state">
                                        
                                    </asp:DropDownList>
                                
                                        <asp:SqlDataSource ID="SqlDataSource_state" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_state] WHERE ([country_id] = @country_id)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="1" Name="country_id" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                
                                        </ContentTemplate>
                                    </asp:updatepanel>
                            </div>
                    </div>

					<div class="col-md-6" >
						<div  class="form-sec-header">
                            <%--<br/>--%>
                            <%--<asp:TextBox ID="picktime" runat="server" Type="time"></asp:TextBox>--%>
                               <h3>Select City</h3>

                             <asp:updatepanel runat="server">
                                        <ContentTemplate>
                                        <asp:DropDownList ID="ddlcity" runat="server" class="myselect auto-style1" AutoPostBack="True" DataTextField="city_name" DataValueField="city_id"  DataSourceID="SqlDataSource_city">
                                
                                    </asp:DropDownList>
                                           
                                    
                                            <asp:SqlDataSource ID="SqlDataSource_city" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_city] WHERE ([state_id] = @state_id)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddlstate" Name="state_id" PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                           
                                    
                                    </ContentTemplate>
                                   </asp:updatepanel>
                           
                        
                            </div>
                            <%--<span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="8" style="width: 242.4px;">
                                
                                <span class="dropdown-wrapper" aria-hidden="true"></span></span>--%>	<%--<i class="fa fa-clock-o"></i>--%>
						</div>

                    <div class="col-md-6">
						<div  class="form-sec-header">
                        
                            <h3>Pick-up Time</h3>
                              <asp:requiredfieldvalidator runat="server" errormessage="This field can't be null" Display="Dynamic" forecolor="red" ControlToValidate="picktime" ValidationGroup="visitor" ></asp:requiredfieldvalidator>
                            <asp:TextBox ID="picktime" runat="server" Type="time"></asp:TextBox>
                          </div>
                    </div>

                    <div class="col-md-6">
						<div  class="form-sec-header">
                          
                            <h3>Drop-off Time</h3>
                              <asp:requiredfieldvalidator runat="server" errormessage="This field can't be null" Display="Dynamic" forecolor="red" ControlToValidate="dropofftime" ValidationGroup="visitor" ></asp:requiredfieldvalidator>
                            <asp:TextBox ID="dropofftime" runat="server" type="time"></asp:TextBox>
                           
                            <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="11" style="width: 242.4px;">
                                <%--<span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-hhf4-container">--%>
                                    <%--<span class="select2-selection__rendered" id="select2-hhf4-container" role="textbox" aria-readonly="true" title="50">50</span>--%>
                                    <%--<span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span>--%>
                                <span class="dropdown-wrapper" aria-hidden="true"></span></span>
						</div>
                        	</div>
					</div>
					<div class="col-md-6">
						<%--<div class="x_slider_select">--%>
                             
						
                         
                          <%--  <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="14" style="width: 242.4px;">
                                <span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-fg47-container">
                                    <span class="select2-selection__rendered" id="select2-fg47-container" role="textbox" aria-readonly="true" title="09">09</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span>
                                <span class="dropdown-wrapper" aria-hidden="true"></span></span>	<i class="fa fa-clock-o"></i>--%>
						<%--</div>--%>
					<%--	<div class="x_slider_select x_slider_select2">
                              <asp:DropDownList ID="ddldrophour" runat="server">
                                    <asp:ListItem Text="12"></asp:ListItem>
                                                                         <asp:ListItem Text="11"></asp:ListItem>
                                                                         <asp:ListItem Text="10"></asp:ListItem>
                                                                         <asp:ListItem Text="09"></asp:ListItem>
                                                                         <asp:ListItem Text="08"></asp:ListItem>
                                                                         <asp:ListItem Text="07"></asp:ListItem>
                                                                         <asp:ListItem Text="06"></asp:ListItem>
                                                                         <asp:ListItem Text="05"></asp:ListItem>
                                                                         <asp:ListItem Text="04"></asp:ListItem>
                                                                         <asp:ListItem Text="03"></asp:ListItem>
                                                                         <asp:ListItem Text="02"></asp:ListItem>
                                                                         <asp:ListItem Text="01"></asp:ListItem>
                              </asp:DropDownList>
					
                            <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="17" style="width: 242.4px;">
                                <span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-kmz6-container">
                                    <span class="select2-selection__rendered" id="select2-kmz6-container" role="textbox" aria-readonly="true" title="50">50</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span>
                                <span class="dropdown-wrapper" aria-hidden="true"></span></span>
						</div>--%>
					</div>
					<div class="col-md-24">
						<%--<div class="x_slider_checkbox_bottom float_left">--%>


							<%--<div class="x_slider_checout_left">--%>
                                <center>
								<ul>
									<li>

                                        <br/>
                                        <asp:Button ID="btnsearch" class="btn btn-primary" runat="server" Text="Search Cars" validationgroup="visitor" OnClick="btnsearch_Click" />
                                   <%--     <a href="#">search <i class="fa fa-arrow-right"></i></a>--%>
									</li>
								</ul>
                                    </center>
							</div>
						<%--</div>--%>
					</div>
				</div>
			</div>
		<%--</div>--%>
	</div>

    &nbsp;

        <!-- xs Slider bottom title Start -->
       <div class="x_slider_bottom_title_main_wrapper">
            <div class="x_slider_bottom_box_wrapper">
                <i class="flaticon-magnifying-glass"></i>
                <h3><a>24 / 7 CAR SUPPORT</a></h3>
                <p>
                   Complete assistance
				<br>
                   if you require any help with your
				<br>
                   vehicle's scheduled bookings.
                </p>
            </div>
            <div class="x_slider_bottom_box_wrapper">
                <i class="flaticon-world"></i>
                <h3><a>LOTS OF LOCATION</a></h3>
                <p>
                    All premium locations
				<br>
                    are available in all cities.
				<br>
                 
                </p>
            </div>
            <div class="x_slider_bottom_box_wrapper">
                <i class="flaticon-checklist"></i>
                <h3><a>RESERVATION ANYTIME</a></h3>
                <p>
                    You can reserv your perfect 
				<br>
                    car at anytime.
				<br>
                   
                </p>
            </div>
            <div class="x_slider_bottom_box_wrapper">
                <i class="flaticon-car-trip"></i>
                <h3><a>RENTAL CARS</a></h3>
                <p>
                   There are lots of car
				<br>
                    to book for specific days.
				<br>
                   
                </p>
            </div>
        </div>
        <!-- xs Slider bottom title End -->
        <!-- xs offer car tabs Start -->

      

        <!-- xs offer car tabs End -->
        <!-- btc team Wrapper Start -->
        <%--<div class="btc_team_main_wrapper">
		<div class="btc_team_img_overlay"></div>
		<div class="container">
			<div class="btc_team_left_wrapper">
				<h3>Featured <br>
Destinations</h3>
				<p>Explore a different way to travel. This isot as hop's version of Lorem Ipsum. oin gra nibh vel velit auctor aliquet. nean sollicin, lorem quis.</p>
			</div>
			<div class="btc_team_right_wrapper">
				<div class="btc_team_slider_wrapper">
					<div class="owl-carousel owl-theme">
						<div class="item">
							<div class="btc_team_slider_cont_main_wrapper">
								<div class="btc_team_img_wrapper">
									<img src="images/t1.jpg" alt="team_img1">
									<div class="x_team_label_wrapper">
										<p>40% OFF</p>
									</div>
								</div>
								<div class="btc_team_img_cont_wrapper">
									<h4><a href="#">Paris, France</a></h4>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="btc_team_slider_cont_main_wrapper">
								<div class="btc_team_img_wrapper">
									<img src="images/t2.jpg" alt="team_img1">
									<div class="x_team_label_wrapper">
										<p>40% OFF</p>
									</div>
								</div>
								<div class="btc_team_img_cont_wrapper">
									<h4><a href="#">los Angeles, usa</a></h4>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="btc_team_slider_cont_main_wrapper">
								<div class="btc_team_img_wrapper">
									<img src="images/t3.jpg" alt="team_img1">
									<div class="x_team_label_wrapper">
										<p>40% OFF</p>
									</div>
								</div>
								<div class="btc_team_img_cont_wrapper">
									<h4><a href="#">Agra, india</a></h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>--%>
        <!-- btc team Wrapper End -->
        <!-- x counter Wrapper Start -->
        <div class="x_counter_main_wrapper">
            <div class="x_counter_img_overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="x_counter_car_heading_wrapper float_left">
                            <h4>Work Process</h4>
                            <h3>How it works?</h3>
                           <%-- <p>
                                Morbi mollis vestibulum sollicitudin. Nunc in eros a justo facilisis rutrum. Aenean id ullamcorper libero
							<br>
                                Vestibulum imperdiet nibh vel magna lacinia commodo ultricies,
                            </p>--%>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="x_cou_main_box_wrapper">
                            <div class="x_icon">
                                <i class="flaticon-airplane-shape"></i>
                            </div>
                            <h5><span>1.</span> <a href="#">pick destination</a></h5>
                            <%--<p>Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem.</p>--%>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="x_cou_main_box_wrapper">
                            <div class="x_icon">
                                <i class="flaticon-calendar"></i>
                            </div>
                            <h5><span>2.</span> <a href="#">select term</a></h5>
                            <%--<p>Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem.</p>--%>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="x_cou_main_box_wrapper">
                            <div class="x_icon">
                                <i class="flaticon-sedan-car-front"></i>
                            </div>
                            <h5><span>3.</span> <a href="#">choose a car</a></h5>
                            <%--<p>Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem.</p>--%>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="x_cou_main_box_wrapper x_cou_main_box_wrapper_last">
                            <div class="x_icon">
                                <i class="flaticon-emoticon-square-smiling-face-with-closed-eyes"></i>
                            </div>
                            <h5><span>4.</span> <a href="#">enjoy the ride</a></h5>
                            <%--<p>Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem.</p>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- x counter Wrapper End -->
        <!-- x booking Wrapper Start -->
        <%--<div class="x_booking_main_wrapper float_left">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="x_book_logo_wrapper float_left">
                                <%--	<img src="images/" alt="logo">-
                           </div>
                        </div>
                        <div class="col-md-6">
                            <div class="x_book_logo_heading_wrapper float_left">
                                <h3>Book on AutoRez Now!</h3>
                                <p>The Most User Centric Rental Theme on the Market.</p>
                            </div>
                        </div>
        <div class="col-md-3">
            <div class="x_book_logo_btn float_left">
                <ul>
                    <li><a href="#">See All Cars <i class="fa fa-arrow-right"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        </div>
                </div>
            </div>--%>
            <!-- x booking Wrapper End -->
        <!-- xs offer car tabs Start -->
        <%--<div class="x_offer_car_main_wrapper float_left padding_tb_100">
		<div class="container">
			<div class="row">
				<%--<div class="col-md-12">
					<div class="x_offer_car_heading_wrapper float_left">
						<h4>Testimonials</h4>
						<h3>Top Reviews</h3>
						<p>Morbi mollis vestibulum sollicitudin. Nunc in eros a justo facilisis rutrum. Aenean id ullamcorper libero
							<br>Vestibulum imperdiet nibh vel magna lacinia commodo ultricies,</p>
					</div>
				</div>--%>
        <div class="col-md-12">
            <div class="screenshot">
                <div class="owl-carousel screen nplr screen-loop">
                    <div>
                        <div class="card  valign-wrapper">
                            <!-- Client's image -->
                            <div class="card-image">
                                <img src="images/client_1.jpg" alt="img">
                            </div>
                            <!-- /Client's image -->
                            <div class="card-content center-align valign">
                                <div class="testi_slide_star">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <!-- Client's Feedback -->
                                <p>“ I don't always clap, but when I do, it's because of Sella. We can't understand how we've been living without Sella. ”</p>
                                <!-- /Client's Feedback -->
                                <!-- Client's Name -->
                                <p class="card-title">
                                    Irene Marita <span>Support Manager @ Echo</span>
                                </p>
                                <!-- /Client's Name -->
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="card  valign-wrapper">
                            <!-- Client's image -->
                            <div class="card-image">
                                <img src="images/client_2.jpg" alt="img">
                            </div>
                            <!-- /Client's image -->
                            <div class="card-content center-align valign">
                                <div class="testi_slide_star">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <!-- Client's Feedback -->
                                <p>“ I don't always clap, but when I do, it's because of Sella. We can't understand how we've been living without Sella. ”</p>
                                <!-- /Client's Feedback -->
                                <!-- Client's Name -->
                                <p class="card-title">
                                    Irene Marita <span>Support Manager @ Echo</span>
                                </p>
                                <!-- /Client's Name -->
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="card  valign-wrapper">
                            <!-- Client's image -->
                            <div class="card-image">
                                <img src="images/client_3.jpg" alt="img">
                            </div>
                            <!-- /Client's image -->
                            <div class="card-content center-align valign">
                                <div class="testi_slide_star">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <!-- Client's Feedback -->
                                <p>“ I don't always clap, but when I do, it's because of Sella. We can't understand how we've been living without Sella. ”</p>
                                <!-- /Client's Feedback -->
                                <!-- Client's Name -->
                                <p class="card-title">
                                    Irene Marita <span>Support Manager @ Echo</span>
                                </p>
                                <!-- /Client's Name -->
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="card  valign-wrapper">
                            <!-- Client's image -->
                            <div class="card-image">
                                <img src="images/client_4.jpg" alt="img">
                            </div>
                            <!-- /Client's image -->
                            <div class="card-content center-align valign">
                                <div class="testi_slide_star">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <!-- Client's Feedback -->
                                <p>“ I don't always clap, but when I do, it's because of Sella. We can't understand how we've been living without Sella. ”</p>
                                <!-- /Client's Feedback -->
                                <!-- Client's Name -->
                                <p class="card-title">
                                    Irene Marita <span>Support Manager @ Echo</span>
                                </p>
                                <!-- /Client's Name -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--	</div>
		</div>
	</div>--%>
        <!-- btc team Wrapper Start -->
        <div class="x_why_main_wrapper">
            <div class="x_why_img_overlay"></div>
            <div class="container">
                <div class="x_why_left_main_wrapper">
                    <img src="images/w1.png" alt="car_img">
                </div>
                <div class="x_why_right_main_wrapper">
                    <h3>Why Choose Us ?</h3>
                   <p>
                       - Sit back and relax: Spend time with your family on your journey. Our experienced drivers will take care of the rest.
                        <br>
                         <br>
                       - Door-to-Door Pickup: You get picked up from and dropped at your desired location with no extra charge.
                         <br>
                        <br>
                       - Our Drivers are your Experts: Let our drivers guide you to the best spots, eateries and landmarks when you’re on your vacation.
                         <br>
                        <br>
                      - Flexible payment options: We have a range of payment options to choose from-
                        on one hand you can choose to pay only after your trip is completed or on the other hand, choose to make a full payment in advance so that your trip is cashless.
                    </p>

                    <ul>
                      <%--  <li><a href="#">read more <i class="fa fa-arrow-right"></i></a>
                        </li>--%>
                    </ul>
                </div>
            </div>
        </div>
        <!-- btc team Wrapper End -->
        <!-- xs offer car tabs Start -->
        <%--<div class="x_ln_car_main_wrapper float_left padding_tb_100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="x_ln_car_heading_wrapper float_left">
						<h3>Latest cars</h3>
					</div>
				</div>
				<div class="col-md-12">
					<div class="btc_ln_slider_wrapper">
						<div class="owl-carousel owl-theme">
							<div class="item">
								<div class="btc_team_slider_cont_main_wrapper">
									<div class="btc_ln_img_wrapper float_left">
										<img src="images/ln1.jpg" alt="team_img1">
									</div>
									<div class="btc_ln_img_cont_wrapper float_left">
										<h4><a href="#">Autoweek in review: Everything you missed Sept. 11-15</a></h4>
										<ul>
											<li><a href="#"><i class="fa fa-calendar"></i> &nbsp; September 19, 2017</a>
											</li>
											<li><a href="#"><i class="fa fa-user"></i> &nbsp;by Admin</a>
											</li>
										</ul>
										<p>What's your favorite game? Nam a diam tincidunt, condimentum nisi et, fringilla lectus. Nullam nec lectus..</p>	<span><a href="#">Read More &nbsp;<i class="fa fa-angle-double-right"></i></a></span>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="btc_team_slider_cont_main_wrapper">
									<div class="btc_ln_img_wrapper float_left">
										<img src="images/ln2.jpg" alt="team_img1">
									</div>
									<div class="btc_ln_img_cont_wrapper float_left">
										<h4><a href="#">Rakish Tokyo concept signals hope for Mitsubishi's lineup</a></h4>
										<ul>
											<li><a href="#"><i class="fa fa-calendar"></i> &nbsp; September 21, 2017</a>
											</li>
											<li><a href="#"><i class="fa fa-user"></i> &nbsp;by Admin</a>
											</li>
										</ul>
										<p>What's your favorite game? Nam a diam tincidunt, condimentum nisi et, fringilla lectus. Nullam nec lectus..</p>	<span><a href="#">Read More &nbsp;<i class="fa fa-angle-double-right"></i></a></span>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="btc_team_slider_cont_main_wrapper">
									<div class="btc_ln_img_wrapper float_left">
										<img src="images/ln3.jpg" alt="team_img1">
									</div>
									<div class="btc_ln_img_cont_wrapper float_left">
										<h4><a href="#">Dinan BMW S2 M4 first drive: Not for everyone's lineup</a></h4>
										<ul>
											<li><a href="#"><i class="fa fa-calendar"></i> &nbsp; September 23, 2017</a>
											</li>
											<li><a href="#"><i class="fa fa-user"></i> &nbsp;by Admin</a>
											</li>
										</ul>
										<p>What's your favorite game? Nam a diam tincidunt, condimentum nisi et, fringilla lectus. Nullam nec lectus..</p>	<span><a href="#">Read More &nbsp;<i class="fa fa-angle-double-right"></i></a></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>--%>
        <!--js Start-->
        <!-- xs offer car tabs Start -->
        <div class="x_partner_main_wrapper float_left padding_tb_100">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="x_offer_car_heading_wrapper float_left">
                            <h4>Our Cars Partners</h4>
                            <h3>brands in fleet</h3>
                          <%--  <p>
                                Morbi mollis vestibulum sollicitudin. Nunc in eros a justo facilisis rutrum. Aenean id ullamcorper libero
							<br>
                                Vestibulum imperdiet nibh vel magna lacinia commodo ultricies,
                            </p>--%>
                        </div>
                    </div>
                    <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="wrap-album-slider">
						<ul class="album-slider">
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt1.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt2.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt3.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt4.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt5.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt6.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt1.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt2.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt3.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt4.png" alt="img">
								</figure>
							</li>
							<li class="album-slider__item">
								<figure class="album">
									<img src="images/prt5.png" alt="img">
								</figure>
							</li>
						</ul>
					</div>
				</div>--%>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="wrap-album-slider">
                            <div class="bx-wrapper" style="max-width: 1653px;">
                                <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 107px;">
                                    <ul class="album-slider" style="width: 11215%; position: relative; left: -772.091px;">
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt1.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt2.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt3.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt4.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt5.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt6.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt1.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt2.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt3.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt4.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt5.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt1.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt2.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt3.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt4.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt5.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt6.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt1.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt2.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt3.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt4.png" alt="img">
                                            </figure>
                                        </li>
                                        <li class="album-slider__item bx-clone" style="float: left; list-style: none; position: relative; width: 150px; margin-right: 17px;">
                                            <figure class="album">
                                                <img src="images/prt5.png" alt="img">
                                            </figure>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- btc team Wrapper Start -->
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
        <!-- x footer Wrapper Start -->
        <%--<div class="x_footer_top_main_wrapper float_left">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
					<div class="x_footer_top_left float_left">
						<img src="images/footer_logo.png" alt="logo">
					</div>
				</div>
				<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
					<div class="x_footer_top_right float_left">
						<div class="x_footer_top_title_box x_footer_top_title_box1">
							<div class="x_footer_top_title_box_icon_cont">	<i class="flaticon-pie-chart"></i>
								<h3>latest News</h3>
							</div>
						</div>
						<div class="x_footer_top_title_box">
							<div class="x_footer_top_title_box_icon_cont">	<i class="flaticon-phone-call"></i>
								<h3>Contact our Office</h3>
							</div>
						</div>
						<div class="x_footer_top_title_box">
							<div class="x_footer_top_title_box_icon_cont x_footer_top_title_box_icon_cont_first">	<i class="flaticon-home-page"></i>
								<h3>Get Appointment</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>--%>
        <!-- x footer Wrapper End -->
        <!-- x footer Wrapper Start -->
        <%--<div class="x_footer_bottom_main_wrapper float_left">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
					<div class="x_footer_bottom_box_wrapper float_left">
						<h3>About Us</h3>
						<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>	<span><a href="#">Read More &nbsp;<i class="fa fa-angle-double-right"></i></a></span>
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-twitter"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
					<div class="x_footer_bottom_box_wrapper_second float_left">
						<h3>Information</h3>
						<ul>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; About</a>
							</li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; Service</a>
							</li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; Terms and Conditions</a>
							</li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; Become a Driver</a>
							</li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; Best Price Guarantee</a>
							</li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; Privacy & Cookies Policy</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
					<div class="x_footer_bottom_box_wrapper_second float_left">
						<h3>Customer Support</h3>
						<ul>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; FAQ</a>
							</li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; Payment Option</a>
							</li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; Booking Tips</a>
							</li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; How it words ?</a>
							</li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i> &nbsp; Contact Us</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
					<div class="x_footer_bottom_box_wrapper_third float_left">
						<h3>Have Questions?</h3>
						<div class="x_footer_bottom_icon_section float_left">
							<div class="x_footer_bottom_icon">	<i class="flaticon-phone-call"></i>
							</div>
							<div class="x_footer_bottom_icon_cont">
								<h4>Toll Free caling in world</h4>
								<p>808 - 111 - 9999</p>
							</div>
						</div>
						<div class="x_footer_bottom_icon_section x_footer_bottom_icon_section2 float_left">
							<div class="x_footer_bottom_icon x_footer_bottom_icon2">	<i class="flaticon-mail-send"></i>
							</div>
							<div class="x_footer_bottom_icon_cont">
								<h4>Email Us</h4>
								<p><a href="#">listing@example.com</a>
								</p>
							</div>
						</div>
						<div class="x_footer_bottom_icon_section x_footer_bottom_icon_section2 float_left">
							<div class="x_footer_bottom_icon x_footer_bottom_icon3">	<i class="fa fa-map-marker"></i>
							</div>
							<div class="x_footer_bottom_icon_cont x_footer_bottom_icon_cont2">
								<h4><a href="#">View On Map</a></h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>--%>
        <%--<div class="x_copyr_main_wrapper float_left">
		<a href="javascript:" id="return-to-top"><i class="fa fa-arrow-up"></i></a>
		<div class="container">
			<p>Copyright © 2018 Expedia. All rights reserved.</p>
		</div>
	</div>--%>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/modernizr.js"></script>
        <script src="js/select2.min.js"></script>
        <script src="js/jquery.menu-aim.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/owl.carousel.js"></script>
        <script src="js/own-menu.js"></script>
        <script src="js/jquery.bxslider.min.js"></script>
        <script src="js/jquery.magnific-popup.js"></script>
        <script src="js/xpedia.js"></script>
        <!-- custom js-->
    </form>
    <%--</body>--%>
</>

    <!-- Mirrored from webstrot.com/html/xpedia/index.aspx by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Feb 2019 09:52:21 GMT -->

</asp:Content>

