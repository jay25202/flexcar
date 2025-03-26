<%@ Page Title="" Language="C#" MasterPageFile="~/visitor/visitorMasterPage.master" AutoEventWireup="true" CodeFile="vabout_us.aspx.cs" Inherits="visitor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
       <%-- <div>
            <iframe src="../htmlpages/aboutus.htm" style="height:918px; width: 1419px;" frameborder="0"> 

            </iframe> 
        </div>--%>     
        <!-- btc tittle Wrapper Start -->
	<div class="btc_tittle_main_wrapper">
		<div class="btc_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_left_heading">
						<h1>About Us</h1>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_right_heading">
						<div class="btc_tittle_right_cont_wrapper">
							<ul>
								<li><a href="#">Home</a>  <i class="fa fa-angle-right"></i>
								</li>
								<li>About Us</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- btc tittle Wrapper End -->

        <!-- x about title Wrapper Start -->
	<div class="x_about_seg_main_wrapper float_left padding_tb_100">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<div class="x_about_seg_img_wrapper float_left">
						<img src="images/about_img1.jpg" alt="about_img">
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<div class="x_about_seg_img_cont_wrapper float_left">
						<h3>Our Story</h3>
                        <iframe src="../htmlpages/aboutus.htm" style="height:296px; width: 555px;" frameborder="0"> 

                                 </iframe> 
					<%--	<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, rem a quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Dssed odio sit amet nibh vulputate cursus a sit amt mauris. Morbi accumsan ipsum velit.
							<br>
							<br>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, rem a quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Dssed odio sit amet nibh vulputate cursus a sit amt mauris. Morbi accumsan ipsum velit.</p>--%>
						<img src="images/seg.png" alt="segn">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- x about title Wrapper End -->
	<!--  counter Wrapper Start -->
	<div class="counto_main_wrapper">
		<div class="counto_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<section class="counter-section section-padding">
						<div class="row">
							<div class="trucking_counter">
								<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-12">
									<div class="con con_right_border"> <i class="flaticon-car-trip"></i>
									</div>
									<div class="count-description"> <span class="timer">
                                        <asp:Label ID="lblcar" runat="server" Text=""></asp:Label></span>
										<h5 class="con1">Cars</h5>
									</div>
								</div>
								<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-12">
									<div class="con con_right_border con2 cont2 cont3"> <i class="flaticon-multiple-users-silhouette"></i>
									</div>
									<div class="count-description"> <span class="timer"><asp:Label ID="lbluser" runat="server" Text=""></asp:Label></span></span>
										<h5 class="con2">Clients</h5>
									</div>
								</div>
								<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-12">
									<div class="con con_right_border con3 cont2"> <%--<i class="flaticon-cup-of-hot-chocolate"></i>--%>
                                        <i class="flaticon-speedometer"></i>
									</div>
									<div class="count-description"> <span class="timer"><asp:Label ID="lblbook" runat="server" Text=""></asp:Label></span></span>
										<h5 class="con3">Bookings</h5>
									</div>
								</div>
								<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-12">
									<div class="con con_right_border con4"> <i class="flaticon-mail-send"></i>
									</div>
									<div class="count-description"> <span class="timer"><asp:Label ID="lblawd" runat="server" Text=""></asp:Label></span>
										<h5 class="con4">Deserved Awards</h5>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!--  counter Wrapper End -->
	<!-- xs offer car tabs Start -->
	<%--<div class="x_ln_car_main_wrapper float_left padding_tb_100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="x_ln_car_heading_wrapper float_left">
						<h3>Our Core team</h3>
					</div>
				</div>
				<div class="col-md-12">
					<div class="btc_ln_slider_wrapper">
						<div class="owl-carousel owl-theme">
							<div class="item">
								<div class="btc_team_slider_cont_main_wrapper">
									<div class="btc_team_img_wrapper">
										<img src="../user/images/team1.jpg" alt="team_img1">
										<div class="btc_team_social_wrapper">
											<ul>
												<li><a href="#"><i class="fa fa-facebook"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-twitter"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-linkedin"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-google-plus"></i></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="btc_team_img_cont_wrapper">
										<h4><a href="#">Ajay Suryavanshi</a></h4>
										<p>(Consultant)</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="btc_team_slider_cont_main_wrapper">
									<div class="btc_team_img_wrapper">
										<img src="images/team2.jpg" alt="team_img1">
										<div class="btc_team_social_wrapper">
											<ul>
												<li><a href="#"><i class="fa fa-facebook"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-twitter"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-linkedin"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-google-plus"></i></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="btc_team_img_cont_wrapper">
										<h4><a href="#">Ajay Suryavanshi</a></h4>
										<p>(Consultant)</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="btc_team_slider_cont_main_wrapper">
									<div class="btc_team_img_wrapper">
										<img src="images/team3.jpg" alt="team_img1">
										<div class="btc_team_social_wrapper">
											<ul>
												<li><a href="#"><i class="fa fa-facebook"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-twitter"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-linkedin"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-google-plus"></i></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="btc_team_img_cont_wrapper">
										<h4><a href="#">Ajay Suryavanshi</a></h4>
										<p>(Consultant)</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>--%>


    </form>

</asp:Content>

