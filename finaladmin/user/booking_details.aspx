<%@ Page Title="" Language="C#" MasterPageFile="~/user/HomeMasterPage1.master" AutoEventWireup="true" CodeFile="booking_details.aspx.cs" Inherits="user_Default3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <%--  <head runat="server">
    <title></title>
     <style type="text/css">
        .Star {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }

        .WaitingStar {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }

        .FilledStar {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
        </style>
</head>--%>
    <form runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="Server" EnablePartialRendering="true">
    </asp:ScriptManager>
    <!-- x tittle num Wrapper End -->
    <br />
    <br />
	<div class="x_car_donr_main_box_wrapper float_left">
		<div class="container">
			<div class="x_car_donr_main_box_wrapper_inner">
				<div class="order-done"> <i class="icon-checked"><img src="images/icon-checked.png" alt=""></i>
					<h4>Order</h4>
					<h4>Order number: <span>
                      #<asp:Label ID="lblbillno" runat="server" Text=""></asp:Label></span></h4>
					<hr>
					<h4>Summary</h4>
					<ul class="row list-unstyled">
                        	
                      
						<li class="col-md-6">
							<h6>Date</h6>
                            <p>Booking Date
                                <span>
                                    <asp:Label ID="lblbdt" runat="server" Text="Label"></asp:Label></span>
							</p>
							<p>From 
                                <span>
                                    <asp:Label ID="lblpicktime" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="lblpickdate" runat="server" Text="Label"></asp:Label>
							      </span>
							</p>
							<p>To <span>
                                <asp:Label ID="lbldroptime" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="lbldropdate" runat="server" Text="Label"></asp:Label>
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
							<h6>Give Your Experience</h6>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                                 <asp:Rating ID="Rating1" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
                            </asp:Rating>
                            </ContentTemplate>
                        </asp:UpdatePanel>

	<div class="col-xl-10 offset-xl-1 col-lg-12 ">
					<div class="contect_form4">
				
					</div>
				</div>
                            </li>
  <li class="col-md-12">
						<div class="contect_form4">
                        <asp:TextBox ID="comt" runat="server" Font-Bold="True" TextMode="MultiLine" placeholder="Write Feedback" ></asp:TextBox>
                            </div>
                        <li>
                      &nbsp;&nbsp;       <asp:Button ID="btnrate" runat="server" Text="Submit" class="btn btn-primary" OnClick="btnrate_Click" />
                                                       </li>
                            </li>


					</ul>
					<hr>
					<div class="contect_btn contect_btn_contact">
						<ul>
                            <li>
                                 <a href="javascript:window.print();">Print Order <i class="fa fa-print">  </i></a>
                                <br />

                            </li>
                            <li>
                                <br />
                            </li>
							<li>
                                <a href="Booking.aspx"> Back </a>
                                                                  
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
        </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

