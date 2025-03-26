<%@ Page Title="" Language="C#" MasterPageFile="~/visitor/visitorMasterPage.master" AutoEventWireup="true" CodeFile="conform.aspx.cs" Inherits="user_conform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <form runat="server">
        <!-- hs Navigation End -->
	<!-- btc tittle Wrapper Start -->
	<div class="btc_tittle_main_wrapper">
		<div class="btc_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_left_heading">
						<h1>conform password</h1>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_right_heading">
						<div class="btc_tittle_right_cont_wrapper">
							<ul>
								<li><a href="#">Home</a>  <i class="fa fa-angle-right"></i>
								</li>
								<li>conform password</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- btc tittle Wrapper End -->

    <div class="x_partner_main_wrapper float_left padding_tb_100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="x_offer_car_heading_wrapper float_left">
						<%--<h4>Please Login To Access Weapon Store Area.</h4>--%>
						<h3>conform your password</h3>
					</div>
				</div>
			</div>
			<div class="row">
                    <div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-12 col-sm-12 col-12">
                        <!-- login_wrapper -->

                        <div class="login_wrapper">
                            <%--<div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <a href="#" class="btn btn-primary" id="fb_btn"> <span>Login with Facebook</span><i class="fa fa-facebook-f"></i> </a>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                                    <a href="#" class="btn btn-primary google-plus"> Login  with Google <i class="fa fa-google"></i> </a>
                                </div>
                            </div>--%>
                            <%--<h2>or</h2>--%>
                            <div class="formsix-pos">
                                <div class="form-group i-email">

                                    <%--<input type="email" class="form-control" required="" id="email2" placeholder="Username*">--%>
                                    <asp:TextBox ID="newpassword" runat="server"  type="text" class="form-control" placeholder="new password*" ></asp:TextBox >
                                    
                                </div>
                            </div>
                            <div class="formsix-pos">
                                <div class="form-group i-email">

                                    <%--<input type="email" class="form-control" required="" id="email2" placeholder="Username*">--%>
                                    <asp:TextBox ID="conformpass" runat="server"  type="text" class="form-control" placeholder="conform password*" ></asp:TextBox >
                                    
                                </div>
                            </div>
                            <div class="login_btn_wrapper">

                                <center> <asp:Button ID="Button1" runat="server" Text="enter password" class="btn btn-primary" OnClick="Button1_Click"  /> </center>
                                
                                <%--<a href="#" class="btn btn-primary login_btn"> login </a>--%>
                                <%--<asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary login_btn" />--%>    
                            </div>
</div> </div> </div> </div> </div>
             </form> 
</asp:Content>

