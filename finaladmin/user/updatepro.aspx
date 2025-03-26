<%@ Page Title="" Language="C#" MasterPageFile="~/user/HomeMasterPage1.master" AutoEventWireup="true" CodeFile="updatepro.aspx.cs" Inherits="user_Default3" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="btc_tittle_main_wrapper">
		<div class="btc_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_left_heading">
						<h1>Update profile</h1>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_right_heading">
						<div class="btc_tittle_right_cont_wrapper">
							<ul>
								<li><a href="#">Profile</a>  <i class="fa fa-angle-right"></i>
								</li>
								<li>Update profile</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
       <div class="x_partner_main_wrapper float_left padding_tb_100">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="x_offer_car_heading_wrapper float_left">
                            <h3>UPDATE YOUR PROFILE HERE</h3>
                        </div>
                    </div>
                </div>
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <div class="row">
                    <div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-12 col-sm-12 col-12">
                        <!-- login_wrapper -->

                        <div class="register_wrapper_box">
                            <div class="register_left_form">

                                <div class="jp_regiter_top_heading">
                                    <p>All fields are mandetory</p>
                                </div>
                                <div class="row clearfix">

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                        <asp:Label ID="Label2" runat="server" Text="First name"></asp:Label>
                                        <asp:RequiredFieldValidator ControlToValidate="txtfname" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtfname" runat="server" type="text" ValidationGroup="reg"></asp:TextBox>
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="Label3" runat="server" Text="Last name"></asp:Label>
                                        <asp:RequiredFieldValidator ControlToValidate="txtlname" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                                        <%--<input type="password" name="field-name" value="" placeholder="re-enter password*">--%>
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="Label4" runat="server" Text="Enter Password"></asp:Label>
                                        <asp:RequiredFieldValidator ControlToValidate="txtpass" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password" value=""></asp:TextBox>
                                        <%--<input type="password" name="field-name" value="" placeholder="password*">--%>
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="Label5" runat="server" Text="Re-Enter password"></asp:Label>
                                        <asp:RequiredFieldValidator ControlToValidate="txtcpass" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtcpass" runat="server" value="" TextMode="Password"></asp:TextBox>
                                        <%--<input type="password" name="field-name" value="" placeholder="re-enter password*">--%>
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="Label6" runat="server" Text="Phone number"></asp:Label>
                                        <asp:RequiredFieldValidator ControlToValidate="txtphone" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtphone" runat="server" TextMode="Phone"></asp:TextBox>
                                        <%--<input type="text" name="field-name" value="" placeholder="phone">--%>
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="Label7" runat="server" Text="E-mail"></asp:Label>
                                        <asp:RequiredFieldValidator ControlToValidate="txtemail" ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtemail" runat="server" TextMode="Email" ValidationGroup="reg"></asp:TextBox>
                                        <%--<input type="text" name="field-name" value="" placeholder="phone">--%>
                                    </div>



                                    <%--<!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12" style="left: 0px; top: 0px">
                                        <asp:Label ID="Label10" runat="server" Text="Driving Licence number"></asp:Label>
                                        <asp:RequiredFieldValidator ControlToValidate="txtlicno" ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtlicno" runat="server" TextMode="Number" ValidationGroup="reg"></asp:TextBox>
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <div class="form-sec-header">
                                            <asp:Label ID="Label1" runat="server" Text="Licence expiry date"></asp:Label>
                                            <asp:RequiredFieldValidator ControlToValidate="txtlicexpdt" ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtlicexpdt" runat="server" TextMode="Date" class="form-control datepicker hasDatepicker"></asp:TextBox>

                                        </div>
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <div class="form-sec-header">
                                            <asp:Label ID="Label8" runat="server" Text="Birthdate"></asp:Label><asp:RequiredFieldValidator ControlToValidate="txtbdt" ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtbdt" runat="server" TextMode="Date" class="form-control datepicker hasDatepicker"></asp:TextBox>

                                        </div>
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="Label9" runat="server" Text="Age"></asp:Label>
                                        <asp:TextBox ID="txtage" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>--%>

                                    <!--Form Group-->

                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="Label11" runat="server" Text="Select State"></asp:Label>
                                        <asp:UpdatePanel runat="server">
                                            <ContentTemplate>

                                                <asp:DropDownList class="form-group col-md-6 col-sm-6 col-xs-12 myselect" ID="ddlstate" runat="server" AutoPostBack="True" DataTextField="state_name" DataValueField="state_id" CssClass="auto-style1" Width="250px" DataSourceID="SqlDataSource_state">
                                                </asp:DropDownList>

                                                <asp:SqlDataSource ID="SqlDataSource_state" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_state] WHERE ([country_id] = @country_id)">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="1" Name="country_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>

                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>

                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="Label12" runat="server" Text="Select City"></asp:Label>
                                        <asp:UpdatePanel runat="server">
                                            <ContentTemplate>
                                                <asp:DropDownList ID="ddlcity" class="form-group col-md-6 col-sm-6 col-xs-12 myselect" runat="server" AutoPostBack="True" DataTextField="city_name" DataValueField="city_id" Width="250px" CssClass="auto-style1" DataSourceID="SqlDataSource_city">
                                                </asp:DropDownList>


                                                <asp:SqlDataSource ID="SqlDataSource_city" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_city] WHERE ([state_id] = @state_id)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddlstate" Name="state_id" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>


                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <asp:Label ID="Label13" runat="server" Text="Gender"></asp:Label>
                                        <%--<input type="text" name="field-name" value="" placeholder="company name">--%>
                                        <%--<center>--%>
                                        <asp:RadioButtonList ID="rbgen" runat="server" CssClass="radio" RepeatDirection="Horizontal" Height="54px" Width="200px" Font-Size="Medium">
                                            <asp:ListItem Selected="True">Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <%--</center>--%>
                                    </div>

                                  <%--  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                       <ContentTemplate>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        
                                       
                                               <asp:Label ID="Label14" runat="server" Text="Enter OTP"></asp:Label>
                                               <asp:RequiredFieldValidator ControlToValidate="txtotp" ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" Display="Dynamic" ValidationGroup="reg" Font-Size="X-Large" ForeColor="red"></asp:RequiredFieldValidator>
                                               <asp:TextBox ID="txtotp" runat="server" type="text" ValidationGroup="reg"></asp:TextBox>
                                         
                                       
                                        <asp:Button ID="botp" runat="server" class="btn btn-primary login_btn"  Text="Verify Phone no" OnClick="botp_Click"/>
                                    </div>
                                </ContentTemplate>
                                        </asp:UpdatePanel>--%>




                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12 ">
                                        <%--<asp:UpdatePanel runat="server">
                                    <ContentTemplate>
                                   <%-- <input type="text" name="field-name" value="" placeholder="Username*">
                                     </asp:ContentTemplate>
                                </asp:updatepanel>--%>
                                    </div>

                                    <!--Form Group-->
                                    <%--<div class="form-group col-md-6 col-sm-6 col-xs-12">
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cname] FROM [tblcountry]"></asp:SqlDataSource>
                                </div>--%>

                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="check-box text-center">
                                            <%--      <input type="checkbox" name="shipping-option" id="account-option_2"> &ensp;
                                        <label for="account-option_2" class="label_2">I agreed to the <a href="#" class="check_box_anchr">Terms and Conditions</a> governing the use of weapon store</label>
                                            --%>
                                            <asp:Label ID="lblotp" runat="server" ForeColor="red"></asp:Label>
                                            <asp:Label ID="lblerror" runat="server" ForeColor="red"></asp:Label>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password must match*" ControlToCompare="txtpass" ValidationGroup="reg" ControlToValidate="txtcpass" ForeColor="red"></asp:CompareValidator>
                                        </div>
                                    </div>
                                </div>

                                <div class="login_btn_wrapper register_btn_wrapper login_wrapper register_wrapper_btn">
                                    <%--<a href="#" class="btn btn-primary login_btn"> register </a>--%>
                                    <center><asp:Button ID="btnreg" runat="server" class="btn btn-primary login_btn" Text="Update"  ValidationGroup="reg" OnClick="btnreg_Click" /><br /> <br /> </center>
                                </div>
                              <%--  <div class="login_message">
                                    <p>Already a member? <a href="vLoginPage.aspx">Login Here </a></p>
                                </div>--%>


                            </div>

                        </div>
                        <p class="btm_txt_register_form">In case you are using a public/shared computer we recommend that you logout to prevent any un-authorized access to your account</p>
                        <!-- /.login_wrapper-->
                    </div>
                </div>
        </form>
                </div>
</div>
</asp:Content>

