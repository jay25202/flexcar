<%@ Page Title="" Language="C#" MasterPageFile="~/visitor/visitorMasterPage.master" AutoEventWireup="true" CodeFile="vourteam.aspx.cs" Inherits="visitor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form runat="server">

        <meta http-equiv="content-type" content="text/html;charset=utf-8"><!-- /Added by HTTrack -->

	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta name="description" content="Xpedia">
	<meta name="keywords" content="Xpedia">
	<meta name="author" content="">
	<meta name="MobileOptimized" content="320">
	<!--Template style -->
	<link rel="stylesheet" type="text/css" href="css/xpedia.css">
	<!--favicon-->
	<link rel="shortcut icon" type="image/png" href="images/fevicon.png">


        <div class="btc_tittle_main_wrapper">
            <div class="btc_tittle_img_overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                        <div class="btc_tittle_left_heading">
                            <h1>our team</h1>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                        <div class="btc_tittle_right_heading">
                            <div class="btc_tittle_right_cont_wrapper">
                                <ul>
                                    <li><a href="#">Home</a>  <i class="fa fa-angle-right"></i>
                                    </li>
                                    <li>our team</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<!-- btc tittle Wrapper End -->
	<!-- xs offer car tabs Start -->
        
	
	<!--js Start-->
	<%--<!-- x booking Wrapper Start -->
	<div class="x_booking_main_wrapper float_left">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="x_book_logo_wrapper float_left">
						<img src="images/white_logo.png" alt="logo">
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
	</div>
	<!-- x booking Wrapper End -->--%>
	<!-- xs offer car tabs Start -->
	<div class="x_inner_team_main_wrapper float_left padding_tb_100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="x_offer_car_heading_wrapper x_offer_car_tb_heading_wrapper float_left">
						<h4>safe deivers</h4>
						<h3>Our Drivers</h3>
						<%--<p>Morbi mollis vestibulum sollicitudin. Nunc in eros a justo facilisis rutrum. Aenean id ullamcorper libero
							<br>Vestibulum imperdiet nibh vel magna lacinia commodo ultricies,</p>--%>
					</div>
				</div>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                <HeaderTemplate>
                 </HeaderTemplate>
                 <ItemTemplate>
				<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">
					<div class="btc_team_bot_cont_main_wrapper">
						<div class="btc_team_img_bot_wrapper">
							<img src='../driver_image/<%# Eval("pic") %>' alt="team_img1">
							<div class="btc_team_social_tb_wrapper">
								<h3>Age - <%# Eval("age") %></h3>
							</div>
                            
						</div>
						<div class="btc_team_img_bot_cont_wrapper">
							<h4><a href="#"><%# Eval("fname") %> <%# Eval("lname") %></a></h4>
							<%--<p> </p>--%>
						</div>
					</div>
				</div>
                   </ItemTemplate>
                  <FooterTemplate>
                      </FooterTemplate>
                    </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_driver]"></asp:SqlDataSource>
				<%--<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">
					<div class="btc_team_bot_cont_main_wrapper">
						<div class="btc_team_img_bot_wrapper">
							<img src="images/tb2.jpg" alt="team_img1">
							<div class="btc_team_social_tb_wrapper">
								<h3>14 Year Experience</h3>
							</div>
						</div>
						<div class="btc_team_img_bot_cont_wrapper">
							<h4><a href="#">Jhon Doe</a></h4>
							<p>Age - 30 Year</p>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">
					<div class="btc_team_bot_cont_main_wrapper">
						<div class="btc_team_img_bot_wrapper">
							<img src="images/tb3.jpg" alt="team_img1">
							<div class="btc_team_social_tb_wrapper">
								<h3>14 Year Experience</h3>
							</div>
						</div>
						<div class="btc_team_img_bot_cont_wrapper">
							<h4><a href="#">Jhon Doe</a></h4>
							<p>Age - 30 Year</p>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">
					<div class="btc_team_bot_cont_main_wrapper">
						<div class="btc_team_img_bot_wrapper">
							<img src="images/tb4.jpg" alt="team_img1">
							<div class="btc_team_social_tb_wrapper">
								<h3>14 Year Experience</h3>
							</div>
						</div>
						<div class="btc_team_img_bot_cont_wrapper">
							<h4><a href="#">Jhon Doe</a></h4>
							<p>Age - 30 Year</p>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">
					<div class="btc_team_bot_cont_main_wrapper">
						<div class="btc_team_img_bot_wrapper">
							<img src="images/tb5.jpg" alt="team_img1">
							<div class="btc_team_social_tb_wrapper">
								<h3>14 Year Experience</h3>
							</div>
						</div>
						<div class="btc_team_img_bot_cont_wrapper">
							<h4><a href="#">Jhon Doe</a></h4>
							<p>Age - 30 Year</p>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">
					<div class="btc_team_bot_cont_main_wrapper">
						<div class="btc_team_img_bot_wrapper">
							<img src="images/tb6.jpg" alt="team_img1">
							<div class="btc_team_social_tb_wrapper">
								<h3>14 Year Experience</h3>
							</div>
						</div>
						<div class="btc_team_img_bot_cont_wrapper">
							<h4><a href="#">Jhon Doe</a></h4>
							<p>Age - 30 Year</p>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">
					<div class="btc_team_bot_cont_main_wrapper">
						<div class="btc_team_img_bot_wrapper">
							<img src="images/tb7.jpg" alt="team_img1">
							<div class="btc_team_social_tb_wrapper">
								<h3>14 Year Experience</h3>
							</div>
						</div>
						<div class="btc_team_img_bot_cont_wrapper">
							<h4><a href="#">Jhon Doe</a></h4>
							<p>Age - 30 Year</p>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">
					<div class="btc_team_bot_cont_main_wrapper">
						<div class="btc_team_img_bot_wrapper">
							<img src="images/tb8.jpg" alt="team_img1">
							<div class="btc_team_social_tb_wrapper">
								<h3>14 Year Experience</h3>
							</div>
						</div>
						<div class="btc_team_img_bot_cont_wrapper">
							<h4><a href="#">Jhon Doe</a></h4>
							<p>Age - 30 Year</p>
						</div>
					</div>
				</div>--%>
			</div>
		</div>
	</div>
	<%--<!-- xs offer car tabs Start -->
	<div class="x_partner_main_wrapper float_left padding_tb_100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="x_offer_car_heading_wrapper float_left">
						<h4>Our Cars Partners</h4>
						<h3>brands in fleet</h3>
						<p>Morbi mollis vestibulum sollicitudin. Nunc in eros a justo facilisis rutrum. Aenean id ullamcorper libero
							<br>Vestibulum imperdiet nibh vel magna lacinia commodo ultricies,</p>
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
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
				</div>
			</div>
		</div>
	</div>
	<!-- btc team Wrapper Start -->--%>
	<%--<!-- x news latter Wrapper Start -->
	<div class="x_news_letter_main_wrapper">
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
	</div>
	<!-- x news latter Wrapper End -->--%>


    </form>

</asp:Content>

