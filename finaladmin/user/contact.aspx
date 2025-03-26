<%@ Page Title="" Language="C#" MasterPageFile="~/user/HomeMasterPage1.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="user_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    	<%--<div class="serach-header">
		<div class="searchbox">
			<button class="close">×</button>
			<form>
				<input type="search" placeholder="Search …">
				<button type="submit"><i class="fa fa-search"></i>
				</button>
			</form>
		</div>
	</div>--%>
	<!-- x top header_wrapper Start -->

	
	<!-- btc tittle Wrapper End -->
	<!-- xs offer car tabs Start -->
	<div class="x_contact_title_main_wrapper float_left padding_tb_100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="x_offer_car_heading_wrapper x_offer_car_heading_wrapper_contact float_left">
						<h4>get in touch</h4>
						<h3>Contact Info</h3>
					
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 full_width">
					<div class="x_contact_title_icon_cont_main_box">
						<div class="x_contact_title_icon">	<i class="fa fa-map-marker"></i>
						</div>
						<div class="x_contact_title_icon_cont">
							<h3><a href="#">address</a></h3>
							<p> 401, White Orchid Near Shell petrol pump, L P Savani Rd, Adajan, Surat, Gujarat, India 395009</p>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 full_width">
					<div class="x_contact_title_icon_cont_main_box">
						<div class="x_contact_title_icon">	<i class="flaticon-phone-call"></i>
						</div>
						<div class="x_contact_title_icon_cont">
							<h3><a href="#">phone Number</a></h3>
							<p><br>+919638014309
								<br>+919925112255
                                <br>+917226924298
                                <br>
							</p>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 full_width">
					<div class="x_contact_title_icon_cont_main_box">
						<div class="x_contact_title_icon">	<i class="flaticon-mail-send"></i>
						</div>
						<div class="x_contact_title_icon_cont">
							<h3><a href="#">Email Address</a></h3>
							<p><br><a>0FlexCar@gmail.com</a>
								<br><%--<a>mihirrathod456@gmail.com</a>--%>
                                <br><%--<a>moxil1514@gmail.com</a>--%>
                                <br><%--<a>jaypatel7226924298@gmail.com</a>--%>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- xs offer car tabs Start -->
	<div class="x_contact_title_main_wrapper float_left padding_tb_100">
        <form runat="server">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="x_offer_car_heading_wrapper x_offer_car_heading_wrapper_contact float_left">
						<h4>get in touch</h4>
						<h3>Leave A Message</h3>
						
					</div>
				</div>
				<div class="col-xl-5 offset-xl-1 col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="contect_form1">
						<%--<input type="text" placeholder="First Name">--%>
                        <asp:TextBox ID="fname" runat="server"  placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="fname" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First name" Display="None" ValidationGroup="co1" Font-Size="Large" ForeColor="red"></asp:RequiredFieldValidator>
                       
					</div>
				</div>
				<div class="col-xl-5 col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="contect_form2">
						<%--<input type="text" placeholder="Last Name">--%>

                        <asp:TextBox ID="lname" runat="server"  placeholder="Last Name"></asp:TextBox>
                           <asp:RequiredFieldValidator ControlToValidate="lname" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter last name" Display="None" ValidationGroup="co1" Font-Size="Large" ForeColor="red"></asp:RequiredFieldValidator>
					
					</div>
				</div>
				<div class="col-xl-5 offset-xl-1 col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="contect_form2">
						<%--<input type="email" placeholder="Email">--%>
                        <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="email" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" Display="None" ValidationGroup="co1" Font-Size="Large" ForeColor="red"></asp:RequiredFieldValidator>
					</div>
				</div>
				<div class="col-xl-5 col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="contect_form2">
						<%--<input type="text" placeholder="Phone">--%>
                        <asp:TextBox ID="phone" runat="server" placeholder="Phone"></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="phone" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter phone" Display="None" ValidationGroup="co1" Font-Size="Large" ForeColor="red"></asp:RequiredFieldValidator>
					</div>
				</div>
				<div class="col-xl-10 offset-xl-1 col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="contect_form4">
						<%--<textarea rows="4" placeholder="Write Comment"></textarea>--%>
                        <%--<textarea id="comt" cols="20" rows="2" placeholder="Write Comment"></textarea>--%>
                        <asp:TextBox ID="comt" runat="server" Font-Bold="True" TextMode="MultiLine" placeholder="Write Comment" ></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="comt" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter comment" Display="None" ValidationGroup="co1" Font-Size="Large" ForeColor="red"></asp:RequiredFieldValidator>
					</div>
				</div>
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="contect_btn contect_btn_contact">
						<ul>
							<li><%--<a href="#">Send Message <i class="fa fa-arrow-right"></i></a>--%>
                                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ValidationGroup="co1" ShowSummary="False" DisplayMode="BulletList" Font-Bold="True" Font-Size="Large" HeaderText="All fields are mendatory" BorderStyle="Ridge" BackColor="#0000CC" />
                                <asp:Button ID="Button1" runat="server" ValidationGroup="co1" Text="Send Message" class="btn btn-primary" OnClick="Button1_Click"/>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
            </form>
	</div>
	<!-- xs offer car tabs Start -->
	<%--<div class="x_partner_main_wrapper float_left padding_tb_100">--%>
	
	<!-- btc team Wrapper Start -->
	<!-- x news latter Wrapper Start -->


	<!-- x news latter Wrapper End -->


<!-- Mirrored from webstrot.com/html/xpedia/contact.aspx by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Feb 2019 09:53:16 GMT -->
</asp:Content>

