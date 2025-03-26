<%@ Page Title="" Language="C#" MasterPageFile="~/visitor/visitorMasterPage.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="user_forget" %>

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
						<h1>Forget</h1>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_right_heading">
						<div class="btc_tittle_right_cont_wrapper">
							<ul>
								<li><a href="#">Home</a>  <i class="fa fa-angle-right"></i>
								</li>
								<li>Forget</li>
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
						<h3>Forget Your Account</h3>
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
                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email*" ></asp:TextBox >
                                    
                                </div>
                            </div>


                           

                            <div class="login_btn_wrapper">

                                 <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary" OnClick="Button1_Click"  /> 
                                
                                <%--<a href="#" class="btn btn-primary login_btn"> login </a>--%>
                                <%--<asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary login_btn" />--%>    
                            </div>
                             <asp:label  id="Lable1" runat="server"  text="Please Register" Visible="False"></asp:label><br />
                            <asp:HyperLink ID="HyperLink1" runat="server" Visible="false" NavigateUrl="~/visitor/vLogin_Page.aspx">Register</asp:HyperLink>
</div> </div> </div> </div> </div> 
                          
<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtemail" SetFocusOnError="True"></asp:RequiredFieldValidator>

        

</form>
</asp:Content>

