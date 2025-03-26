<%@ Page Title="" Language="C#" MasterPageFile="~/user/HomeMasterPage1.master" AutoEventWireup="true" CodeFile="car_booking_done.aspx.cs" Inherits="user_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    	<!-- btc tittle Wrapper Start -->
	<div class="btc_tittle_main_wrapper">
		<div class="btc_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_left_heading">
						<h1>Order Done</h1>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_right_heading">
						<div class="btc_tittle_right_cont_wrapper">
							<ul>
								<li><a href="#">Home</a>  <i class="fa fa-angle-right"></i>
								</li>
								<li><a href="#">Cars</a>  <i class="fa fa-angle-right"></i>
								</li>
								<li>Done</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- btc tittle Wrapper End -->
	<!-- x tittle num Wrapper Start -->
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
						<a href="userhome.aspx"><p>1</p></a>
						</div>
						<h5>Time & place</h5>
					</div>
					<div class="x_title_num_main_box_wrapper">
						<div class="x_icon_num " >
						<a href="car_booking.aspx">
                            <p>2</p></a>
						</div>
						<h5>Car</h5>
					</div>
					<div class="x_title_num_main_box_wrapper">
						<div class="x_icon_num">
						<a href="car_detail_left.aspx">	<p>3</p></a>
						</div>
						<h5>detail</h5>
					</div>
					<div class="x_title_num_main_box_wrapper">
						<div class="x_icon_num">
						<a href="car_checkout.aspx"><p>4</p></a>
						</div>
						<h5>checkout</h5>
					</div>
					<div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper3 x_title_num_main_box_wrapper_last">
						<div class="x_icon_num x_icon_num2">
							<p>5</p>
						</div>
						<h5>done!</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- x tittle num Wrapper End -->
	<div class="x_car_donr_main_box_wrapper float_left">
		<div class="container">
			<div class="x_car_donr_main_box_wrapper_inner">
				<div class="order-done"> <i class="icon-checked"><img src="images/icon-checked.png" alt=""></i>
					<h4>thank you! Order has been received</h4>
					<h4>Order number: <span>
                      #<asp:Label ID="lblbillno" runat="server" Text=""></asp:Label></span></h4>
					<hr>
					<h4>Summary</h4>
					<ul class="row list-unstyled">
						<li class="col-md-6">
							<h6>Date</h6>
							<p>From 
                                <span>
                                    <asp:Label ID="lblpickdate" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="lblpicktime" runat="server" Text="Label"></asp:Label>
							      </span>
							</p>
							<p>To <span>
                                <asp:Label ID="lbldropdate" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="lbldroptime" runat="server" Text="Label"></asp:Label>
							      </span>
							</p>
							<p>Total days <span>
                                <asp:Label ID="lblttldays" runat="server" Text="Label">Days</asp:Label></span>
							</p>
						</li>
						<li class="col-md-6">
							<h6>Location</h6>
							<p>Pick-Up <span>
                                <asp:Label ID="lblpickup" runat="server" Text="Label"></asp:Label></span>
							</p>
							<p>Drop-off <span>
                                <asp:Label ID="lbldrop" runat="server" Text="Label"></asp:Label></span>
							</p>
						</li>
						<li class="col-md-6">
							<h6>Car</h6>
							<p>  <span> <asp:Label ID="lblcarprice" runat="server" Text="Label">₹</asp:Label>
                          </span>
							</p>
							<asp:Label ID="lblcarname" runat="server" Text="Label">Car name</asp:Label>
						</li>
						<li class="col-md-6">
							<h6>Driver</h6>
							
                                <asp:Label ID="lbldriver" runat="server" Text="Label">Driver name</asp:Label>
						
							
						</li>
						<li class="col-md-6">
							<h6>Taxes</h6>
							<p>SGST(7%) <span>
                                <asp:Label ID="lblsgst" runat="server" Text="Label">₹</asp:Label></span>
							</p>
                            <p>CGST(7%) <span>
                                <asp:Label ID="lblcgst" runat="server" Text="Label">₹</asp:Label></span>
							</p>
						</li>
						<li class="col-md-6">
							<h6>Total</h6>
							<p>Total Payment <span>
                                <asp:Label ID="lbltotal" runat="server" Text="Label">₹</asp:Label></span>
							</p>
						</li>
						<li class="col-md-12">
							<h6>Billing Information</h6>
							 <asp:Label ID="lblcname" runat="server" Text="Label">costomer name</asp:Label>
                               
								<%--<br> <asp:Label ID="Label14" runat="server" Text="Label">Driver’s License ID</asp:Label>--%>
								<%--<br>  <asp:Label ID="Label15" runat="server" Text="Label">Address</asp:Label>--%>
                               <%--<br> <asp:Label ID="" runat="server" Text="Label">country</asp:Label>--%>
								<br> <asp:Label ID="lblcphone" runat="server" Text="Label">phone no</asp:Label>
								<br> <asp:Label ID="lblcmail" runat="server" Text="Label">emailid</asp:Label>
								<br>
						
						</li>
                        
                        <li class="col-md-12">
							<h6>Driver Information</h6>
							 
								<%--<br> <asp:Label ID="Label14" runat="server" Text="Label">Driver’s License ID</asp:Label>--%>
								<%--<br>  <asp:Label ID="Label15" runat="server" Text="Label">Address</asp:Label>--%>
                               <%--<br> <asp:Label ID="" runat="server" Text="Label">country</asp:Label>--%>
								<br> <asp:Label ID="lbldname" runat="server" Text="Label"></asp:Label>
								<br> <asp:Label ID="lbldphone" runat="server" Text="Label"></asp:Label>
								<br>
						
						</li>

						<li class="col-md-12">
							<h6>Additional Information</h6>
                            <asp:Label ID="lblnote" runat="server" Text="Notes about your order, e.g. special notes for car."></asp:Label>
							<%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras vel lorem. Etiam pellentesque aliquet tellus. Phasellus pharetra nulla ac diam. Quisque semper justo at risus.</p>--%>
						</li>
					</ul>
					<hr>
					<div class="contect_btn contect_btn_contact">
						<ul>
							<li><form runat="server">
                                    <a href="javascript:window.print();">Print Order <i class="fa fa-print">  </i></a>
                                 </form>                                            
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

