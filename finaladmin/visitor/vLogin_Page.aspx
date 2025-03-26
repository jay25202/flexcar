<%@ Page Title="" Language="C#" MasterPageFile="~/visitor/visitorMasterPage.master" AutoEventWireup="true" CodeFile="vLogin_Page.aspx.cs" Inherits="visitor_Default" %>

<%@ Register Src="~/MyCaptcha.ascx" TagPrefix="uc1" TagName="MyCaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <!-- hs Navigation End -->
        <!-- btc tittle Wrapper Start -->
        <div class="btc_tittle_main_wrapper">
            <div class="btc_tittle_img_overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                        <div class="btc_tittle_left_heading">
                            <h1>Login</h1>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                        <div class="btc_tittle_right_heading">
                            <div class="btc_tittle_right_cont_wrapper">
                                <ul>
                                    <li><a href="#">Home</a>  <i class="fa fa-angle-right"></i>
                                    </li>
                                    <li>Login</li>
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
                            <h3>LOGIN TO YOUR ACCOUNT</h3>
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
                                    &nbsp;<asp:RadioButton ID="rbcust" GroupName="user" runat="server" CssClass="radio" Checked="true" Text="I'm Customer"/> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButton ID="rbdriver" GroupName="user" runat="server" CssClass="radio" Text="I'm Driver"/>
                                    <br />
                                </div>
                            </div>
                            <div class="formsix-pos">
                                <div class="form-group i-email">
                                    <%--<input type="email" class="form-control" required="" id="email2" placeholder="Username*">--%>
                                    <br />
                                    <asp:TextBox ID="txtemail" runat="server" type="email" class="form-control" placeholder="Email*"></asp:TextBox>
                                </div>
                            </div>

                            <div class="formsix-e">
                                <div class="form-group i-password">
                                    <%--<input type="password" class="form-control" required="" id="password2" placeholder="Password *">--%>
                                    <asp:TextBox runat="server" type="password" class="form-control" ID="txtpassword" placeholder="Password *"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div >
                                <label class="control control--checkbox">
                                    <uc1:MyCaptcha runat="server" ID="MyCaptcha" />
                                    <span class="control__indicator"></span>
                                </label>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                            </div>

                            

                            <div class="login_remember_box">
                                <asp:Label ID="lbl1" class="control control--checkbox" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                             <asp:Label ID="lbl2" class="control control--checkbox" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                            </div>
                           
                            <div class="login_btn_wrapper">

                                <center> <asp:Button ID="btnsubmit" runat="server" Text="Login" class="btn btn-primary" OnClick="btnsubmit_Click" /> </center>

                                <%--<a href="#" class="btn btn-primary login_btn"> login </a>--%>
                                <%--<asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary login_btn" />--%>


                                <div class="login_message">
                                    <p>Don’t have an account ? <a href="vregister.aspx">Register Now </a></p>
                                      <p> <a href="../user/forget.aspx" class="forget_password">Forgot Password
                                </a></p>
                                </div>
                            </div>
                            <p>In case you are using a public/shared computer we recommend that you logout to prevent any un-authorized access to your account</p>
                            <!-- /.login_wrapper-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtemail" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass" runat="server" ErrorMessage="Please Enter password" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
    </form>

</asp:Content>

