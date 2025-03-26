<%@ Page Title="" Language="C#" MasterPageFile="~/visitor/visitorMasterPage.master" AutoEventWireup="true" CodeFile="vcar_booking.aspx.cs" Inherits="visitor_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <!-- x tittle num Wrapper Start -->
        <div class="x_title_num_mian_Wrapper float_left">
            <div class="container">
                <div class="x_title_inner_num_wrapper float_left">
                    <div class="x_title_num_heading">
                        <a href="vcar_booking.aspx">vcar_booking.aspx</a>             <h3>Choose a car</h3>
                        <p>Complete Your Step</p>
                    </div>
                    <div class="x_title_num_heading_cont">
                        <div class="x_title_num_main_box_wrapper">
                            <div class="x_icon_num">
                                <%--<a href="visitorhome.aspx">--%>
                                    <p>1</p>
                                <%--</a>--%>
                            </div>
                            <h5>Time & place</h5>
                        </div>
                        <div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper2">
                            <div class="x_icon_num x_icon_num2">
                                <p>2</p>
                            </div>
                            <h5>Car</h5>
                        </div>
                        <div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper3">
                            <div class="x_icon_num x_icon_num3">
                                <p>3</p>
                            </div>
                            <h5>detail</h5>
                        </div>
                        <div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper3">
                            <div class="x_icon_num x_icon_num3">
                                <p>4</p>
                            </div>
                            <h5>checkout</h5>
                        </div>
                        <div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper3 x_title_num_main_box_wrapper_last">
                            <div class="x_icon_num x_icon_num3">
                                <p>5</p>
                            </div>
                            <h5>done!</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- x tittle num Wrapper End -->
        <!-- x car book sidebar section Wrapper Start -->
        <div class="x_car_book_sider_main_Wrapper float_left">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-4 col-md-12 col-sm-12 col-12">
                        <div class="x_car_book_left_siderbar_wrapper float_left">
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

                                    <div class="car-filter accordion car_booking_onliy_side">
                                        <div class="x_slider_form_heading_wrapper x_slider_form_heading_wrapper_carbooking float_left">
                                        <h3>Filter Results</h3>
                                        </div>
                                        
                                        <hr>
                                        <!-- Resources -->
                                        <%--	<div class="panel panel-default">
										<div class="panel-heading">
											<h5 class="panel-title"> <a data-toggle="collapse" href="#collapseOne" class="collapse"> Resources</a> </h5>
										</div>
										<div id="collapseOne" class="collapse show">
											<div class="panel-body">
												<div class="x_slider_checkbox x_slider_checkbox_bottom_filter_use">
													<input type="checkbox" id="c3" name="cb">
													<label for="c3">GPS Device</label>
												</div>
												<div class="x_slider_checkbox x_slider_checkbox_bottom_filter_use">
													<input type="checkbox" id="c4" name="cb">
													<label for="c4">Babyseats</label>
												</div>
											</div>
										</div>
									</div>--%>
                                        <%--<hr>--%>
                                        <!-- Company -->
                                        <%--	<div class="panel panel-default">
										<div class="panel-heading">
											<h5 class="panel-title"> <a data-toggle="collapse" href="#collapseTwo" class="collapse"> Company</a> </h5>
										</div>
										<div id="collapseTwo" class="collapse show">
											<div class="panel-body">
												<div class="radio">
													<div class="fisrt">
														<input type="radio" name="radio1" id="radio1" value="option1" checked="">
														<label for="radio1">Company Name</label>
													</div>
													<div class="fisrt">
														<input type="radio" name="radio1" id="radio2" value="option2">
														<label for="radio2">Other One</label>
													</div>
												</div>
											</div>
										</div>
									</div>
									<hr>--%>
                                        <!-- Category -->

                                        <div class="x_car_book_fillter_select_box">
                                            <%--<asp:UpdatePanel runat="server">
                                                <ContentTemplate>--%>
                                                    <h5>Car Category</h5>
                                                    <%--<select class="myselect">--%>
                                                    <asp:DropDownList ID="cartype" CssClass="auto-style1" runat="server" class="myselect" DataSourceID="SqlDataSource_type" DataTextField="car_type" DataValueField="car_type_id" OnSelectedIndexChanged="cartype_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource runat="server" ID="SqlDataSource_type" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tbl_car_type]"></asp:SqlDataSource>
                                                <%--</ContentTemplate>
                                            </asp:UpdatePanel>--%>
                                        </div>

                                        <hr>

                                        <div class="x_car_book_fillter_select_box">
                                            <%--<asp:UpdatePanel runat="server">
                                                <ContentTemplate>--%>
                                                    <h5>Car company</h5>
                                                    <asp:DropDownList ID="carcompany" CssClass="auto-style1" runat="server" DataSourceID="SqlDataSource1" DataTextField="car_company_name" DataValueField="car_company_id" OnSelectedIndexChanged="carcompany_SelectedIndexChanged" AutoPostBack="False">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_company]"></asp:SqlDataSource>
                                                <%--</ContentTemplate>
                                            </asp:UpdatePanel>--%>

                                        </div>
                                        <hr>
                                        <%--<!-- Car Model -->
                                        <div class="x_car_book_fillter_select_box">
                                            <h5>Transmission Type</h5>
                                            <asp:DropDownList ID="ddltran" runat="server">
                                                <asp:ListItem Text="Automatic Transmission"></asp:ListItem>
                                                <asp:ListItem Text="Manual Transmission"></asp:ListItem>
                                            </asp:DropDownList>
                                            
                                        </div>--%>
                                        <hr>
                                        <!-- Attributes -->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h5 class="panel-title"><a data-toggle="collapse" href="#collapseThree" class="collapse">Attributes</a> </h5>
                                            </div>
                                            <div id="collapseThree" class="collapse show">
                                                <div class="panel-body">
                                                    <div class="x_slider_checkbox x_slider_checkbox_bottom_filter_use">
                                                        <%--<input type="checkbox" id="c10" name="cb">--%>
                                                        <%--<asp:CheckBox ID="CheckBox1" runat="server" Text="Diesel" />--%>
                                                        <%--<asp:UpdatePanel runat="server">
                                                            <ContentTemplate>--%>
                                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource_fuel" DataTextField="car_fuel_type" DataValueField="car_fuel_id" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"></asp:RadioButtonList>
                                                                <asp:SqlDataSource runat="server" ID="SqlDataSource_fuel" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Tbl_car_fuel_type]"></asp:SqlDataSource>
                                                            <%--</ContentTemplate>
                                                        </asp:UpdatePanel>--%>
                                                    </div>
                                                    <%--<div class="x_slider_checkbox x_slider_checkbox_bottom_filter_use">
                                                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Petrol" />
                                                    </div>--%>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="x_slider_checout_right x_slider_checout_right_carbooking x_slider_checout_right_carbooking_fiter">
                                            <ul>
                                                <li>
                                                    <%--<a href="#">filter <i class="fa fa-arrow-right"></i></a>--%>
                                                    <asp:Button ID="btnfilter" runat="server" Text="Apply" class="btn btn-primary" OnClick="btnfilter_Click" />
                                                </li>
                                                <li><br />
                                                    <asp:Button ID="btnclear" runat="server" Text="Remove Filter" class="btn btn-primary" OnClick="btnclear_Click"  Visible="false"/>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    &nbsp;
								<div class="x_slider_form_main_wrapper float_left x_slider_form_main_wrapper_ccb">
                                    <div class="x_slider_form_heading_wrapper x_slider_form_heading_wrapper_carbooking float_left">
                                        <h3>Let’s find your perfect car</h3>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="x_slider_form_input_wrapper float_left">
                                                <h3>Pick-up Location</h3>
                                                <%--<input type="text" placeholder="City, Airport, Station, etc.">--%>
                                                <asp:TextBox ID="txtpickup" type="text" runat="server" placeholder="City, Airport, Station, etc."></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="x_slider_form_input_wrapper float_left">
                                                <h3>Drop-off Location</h3>
                                                <%--<input type="text" placeholder="City, Airport, Station, etc.">--%>
                                                <asp:TextBox ID="txtdrop" runat="server" type="text" placeholder="City, Airport, Station, etc."></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-sec-header">
                                                <h3>Pick-up Date</h3>
                                                <label class="cal-icon">
                                                    Pick-up Date
													<%--<input type="text" placeholder="Tue 16 Jan 2018" class="form-control datepicker">--%>
                                                    <asp:TextBox ID="txtpickdate" type="date" runat="server" class="form-control datepicker"></asp:TextBox>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-sec-header">
                                                <h3>Pick-up Time</h3>
                                                <asp:TextBox ID="pickuptime" runat="server" type="time"></asp:TextBox>

                                                <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="11" style="width: 242.4px;">
                                                    <%--<span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-hhf4-container">--%>
                                                    <%--<span class="select2-selection__rendered" id="select2-hhf4-container" role="textbox" aria-readonly="true" title="50">50</span>--%>
                                                    <%--<span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span>--%>
                                                    <span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-sec-header">
                                                <h3>Drop-Off Date</h3>
                                                <label class="cal-icon">
                                                    Drop-Off Date
													<%--<input type="text" placeholder="Tue 16 Jan 2018" class="form-control datepicker">--%>
                                                    <asp:TextBox ID="txtdropdate" type="date" runat="server" class="form-control datepicker"></asp:TextBox>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-sec-header">
                                                <h3>Drop-Off Time</h3>
                                                <asp:TextBox ID="dropofftime" runat="server" Type="time"></asp:TextBox>
                                            </div>
                                            <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="8" style="width: 242.4px;">
                                                <%--<span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-05m8-container">--%>
                                                <%--<span class="select2-selection__rendered" id="select2-05m8-container" role="textbox" aria-readonly="true" title="09">09</span>--%>
                                                <%--<span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span>--%>
                                                <span class="dropdown-wrapper" aria-hidden="true"></span></span><%--<i class="fa fa-clock-o"></i>--%>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-sec-header">
                                                <h3>State</h3>
                                                <asp:UpdatePanel runat="server">
                                                    <ContentTemplate>
                                                        <asp:DropDownList ID="ddlstate" runat="server" class="myselect auto-style1" AutoPostBack="True" DataTextField="state_name" DataValueField="state_id" DataSourceID="SqlDataSource_state">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource_state" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_state] WHERE ([country_id] = @country_id)">
                                                            <SelectParameters>
                                                                <asp:Parameter DefaultValue="1" Name="country_id" Type="Int32" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-sec-header">
                                                <h3>City</h3>
                                                <asp:UpdatePanel runat="server">
                                                    <ContentTemplate>
                                                        <asp:DropDownList ID="ddlcity" runat="server" class="myselect auto-style1" AutoPostBack="True" DataTextField="city_name" DataValueField="city_id" DataSourceID="SqlDataSource_city">
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource_city" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_city] WHERE ([state_id] = @state_id)">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="ddlstate" Name="state_id" PropertyName="SelectedValue" Type="Int32" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </div>

                                        <%--</div>--%>
                                        <div class="col-md-12">
                                            <div class="x_slider_checkbox float_left">
                                                <input type="checkbox" id="c2" name="cb">
                                                <%--<label for="c2">
                                                    Driver age is between 18-65 &nbsp;<i class="fa fa-question-circle"></i>
                                                </label>--%>
                                            </div>
                                        </div>


                                        <div class="col-md-12">
                                            <div class="x_slider_checout_right x_slider_checout_right_carbooking">
                                                <ul>
                                                    <li><%--<li><a href="#">search <i class="fa fa-arrow-right"></i></a>--%>
                                                    <asp:Button ID="btnsearch" class="btn btn-primary" runat="server" Text="Search Cars" OnClick="btnsearch_Click"/>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <!-- Filter Results -->

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 col-12">
                        <div class="x_carbooking_right_section_wrapper float_left">
                            <div class="row">
                                <%--<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="x_carbook_right_select_box_wrapper float_left">
                                        <select class="myselect">
                                            <option>Sort by Price</option>
                                            <option>12$</option>
                                            <option>13$</option>
                                            <option>14$</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="x_carbook_right_tabs_box_wrapper float_left">
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#home"><i class="flaticon-menu"></i>
                                                </a>
                                            </li>
                                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu1"><i class="flaticon-list"></i></a>
                                            </li>
                                        </ul>
                                        <p><span>Showing 1-12</span> of 256 results</p>
                                    </div>
                                </div>--%>


                                <div class="col-md-12">
                                    <div class="x_car_book_tabs_content_main_wrapper">
                                        <div class="tab-content">
                                            <div id="home" class="tab-pane active">
                                                <center>
                                                <asp:Label ID="lblcar" runat="server" Font-Size="XX-Large" ForeColor="#999999" Visible="False"></asp:Label>
                                                </center>

                                                <%--Start Car--%>

                                                <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>--%>
                                                <asp:Repeater ID="Repeater1" runat="server">
                                                    <HeaderTemplate>
                                                        <div class="row">
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
                                                            <div class="x_car_offer_main_boxes_wrapper float_left">

                                                                
                                                                <div class="x_car_offer_starts float_left">
                                                                     <asp:Rating ID="Rating1" runat="server" AutoPostBack="True"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" ReadOnly="true" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar" CurrentRating='<%# getstar(Eval("car_id").ToString())%>'>
                            </asp:Rating>
                                                                   <%-- <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>--%>
                                                                </div>
                                                                <div class="x_car_offer_img float_left">
                                                                    <a href='vcar_detail_left.aspx?id=<%# Eval("car_id") %>'>
                                                                    <img src='../car_images/<%# Eval("car_image") %>' alt="img" height="110px" width="190px">
                                                                    </a>
                                                                &nbsp;&nbsp;&nbsp;</div>
                                                                <div class="x_car_offer_price float_left">
                                                                    <div class="x_car_offer_price_inner">
                                                                        <%--<h6><i class="fa fa-tag"></i>&nbsp;15% off Deal</h6>--%>
                                                                        <h3>
                                                                            <%--$25--%>
                                                                            <asp:Label ID="lblprice" runat="server" Text='<%# Eval("car_rent") %>'></asp:Label>
                                                                        </h3>
                                                                        <p>
                                                                            <span>Per</span>
                                                                            <br>
                                                                            / day
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <div class="x_car_offer_heading float_left">
															<h2><a href="#"><asp:Label ID="lblcname" runat="server" Text='<%# Eval("car_name") %>'></asp:Label></a></h2>
															<p><asp:Label ID="lblcomname" runat="server" Text='<%# Eval("car_company_name") %>'></asp:Label></p>
														</div>
                                                                <div class="x_car_offer_heading float_left">
                                                                    <ul>
                                                                        <li><a href="#"><i class="fa fa-users"></i>&nbsp;4</a>
                                                                        </li>
                                                                        <li><a href="#"><i class="fa fa-clone"></i>&nbsp;2</a>
                                                                        </li>
                                                                        <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;9</a>
                                                                        </li>
                                                                        <li>
                                                                            <div class="nice-select" tabindex="0">
                                                                                <span class="current"><i class="fa fa-bars"></i></span>
                                                                                <ul class="list">
                                                                                    <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                                                    </li>
                                                                                    <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                                                    </li>
                                                                                    <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="x_car_offer_bottom_btn float_left">
                                                                    <ul>
                                                                        <li><a href='vcar_checkout.aspx?id=<%# Eval("car_id") %>'>Book now</a>
                                                                        </li>
                                                                        <li><a href='vcar_detail_left.aspx?id=<%# Eval("car_id") %>'>Details</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>

                                                        </div>

                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </div>
                                                    </FooterTemplate>

                                                </asp:Repeater>
                                                <%-- </ContentTemplate>
                                     </asp:UpdatePanel>--%>

                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>


                                                <%--End Car--%>

                                                <%--<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c2.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">Holden</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c3.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">Elfin</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c4.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">Bowler</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c5.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">Diatto</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c6.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">Lloyd</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c7.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">Genesis</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c8.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">Brammo</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c1.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">AC Cars</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c2.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">BMW</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c3.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">Austin</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
													<div class="x_car_offer_main_boxes_wrapper float_left">
														<div class="x_car_offer_starts float_left">	<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="x_car_offer_img float_left">
															<img src="images/c4.png" alt="img">
														</div>
														<div class="x_car_offer_price float_left">
															<div class="x_car_offer_price_inner">
																<h3>$25</h3>
																<p><span>from</span> 
																	<br>/ day</p>
															</div>
														</div>
														<div class="x_car_offer_heading float_left">
															<h2><a href="#">Eterniti</a></h2>
															<p>Extra Small</p>
														</div>
														<div class="x_car_offer_heading float_left">
															<ul>
																<li>	<a href="#"><i class="fa fa-users"></i> &nbsp;4</a>
																</li>
																<li>	<a href="#"><i class="fa fa-clone"></i> &nbsp;2</a>
																</li>
																<li>	<a href="#"><i class="fa fa-briefcase"></i> &nbsp;9</a>
																</li>
																<li>
																	<div class="nice-select" tabindex="0">	<span class="current"><i class="fa fa-bars"></i></span>
																		<ul class="list">
																			<li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i> Air Conditioning</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i> Transmission</a>
																			</li>
																			<li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i> Minimum age</a>
																			</li>
																		</ul>
																	</div>
																</li>
															</ul>
														</div>
														<div class="x_car_offer_bottom_btn float_left">
															<ul>
																<li><a href="#">Book now</a>
																</li>
																<li><a href="#">Details</a>
																</li>
															</ul>
														</div>
													</div>
												</div>--%>
                                                <%--<div class="col-md-12">
													<div class="pager_wrapper prs_blog_pagi_wrapper">
														<ul class="pagination">
															<li><a href="#"><i class="flaticon-left-arrow"></i></a>
															</li>
															<li class="btc_shop_pagi"><a href="#">01</a>
															</li>
															<li class="btc_shop_pagi"><a href="#">02</a>
															</li>
															<li class="btc_third_pegi btc_shop_pagi"><a href="#">03</a>
															</li>
															<li class="btc_four_pegi"><a href="#">...</a>
															</li>
															<li><a href="#"><i class="flaticon-right-arrow"></i></a>
															</li>
														</ul>
													</div>
												</div>--%>
                                            </div>
                                        </div>
                                        <%--<div id="menu1" class="tab-pane fade">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="x_car_offer_main_boxes_wrapper float_left">
                                                        <div class="x_car_offer_starts x_car_offer_starts_list_img float_left">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <div class="x_car_offer_img x_car_offer_img_list float_left">
                                                                <img src="images/c1.png" alt="img">
                                                            </div>
                                                            <div class="x_car_offer_price x_car_offer_price_list float_left">
                                                                <div class="x_car_offer_price_inner x_car_offer_price_inner_list">
                                                                    <h6><i class="fa fa-tag"></i>&nbsp;15% off Deal
                                                                    <h3>$25</h3>
                                                                    <p>
                                                                        <span>from</span>
                                                                        <br>
                                                                        / day
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="x_car_offer_starts_list_img_cont">
                                                            <div class="x_car_offer_heading x_car_offer_heading_list float_left">
                                                                <h2><a href="#">IKCO</a></h2>
                                                                <p>Extra Small</p>
                                                            </div>
                                                            <div class="x_car_offer_bottom_btn x_car_offer_bottom_btn_list float_left">
                                                                <ul>
                                                                    <li><a href="#">Book now</a>
                                                                    </li>
                                                                    <li><a href="#">Details</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="x_car_offer_heading x_car_offer_heading_listing float_left">
                                                                <ul class="">
                                                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4 Seats</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;4 Doors</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-shield"></i>&nbsp;9 Manual</a>
                                                                    </li>

                                                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;4 Bag Space</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-snowflake-o"></i>&nbsp;2 Air: Yes</a>
                                                                    </li>
                                                                    <li>
                                                                        <div class="nice-select" tabindex="0">
                                                                            <span class="current"><i class="fa fa-bars"></i>Others (2)</span>
                                                                            <ul class="list">
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="x_car_offer_main_boxes_wrapper float_left">
                                                        <div class="x_car_offer_starts x_car_offer_starts_list_img float_left">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <div class="x_car_offer_img x_car_offer_img_list float_left">
                                                                <img src="images/c2.png" alt="img">
                                                            </div>
                                                            <div class="x_car_offer_price x_car_offer_price_list float_left">
                                                                <div class="x_car_offer_price_inner x_car_offer_price_inner_list">
                                                                    <h3>$25</h3>
                                                                    <p>
                                                                        <span>from</span>
                                                                        <br>
                                                                        / day
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="x_car_offer_starts_list_img_cont">
                                                            <div class="x_car_offer_heading x_car_offer_heading_list float_left">
                                                                <h2><a href="#">Gumpert</a></h2>
                                                                <p>Extra Small</p>
                                                            </div>
                                                            <div class="x_car_offer_bottom_btn x_car_offer_bottom_btn_list float_left">
                                                                <ul>
                                                                    <li><a href="#">Book now</a>
                                                                    </li>
                                                                    <li><a href="#">Details</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="x_car_offer_heading x_car_offer_heading_listing float_left">
                                                                <ul class="">
                                                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4 Seats</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;4 Doors</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-shield"></i>&nbsp;9 Manual</a>
                                                                    </li>

                                                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;4 Bag Space</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-snowflake-o"></i>&nbsp;2 Air: Yes</a>
                                                                    </li>
                                                                    <li>
                                                                        <div class="nice-select" tabindex="0">
                                                                            <span class="current"><i class="fa fa-bars"></i>Others (2)</span>
                                                                            <ul class="list">
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="x_car_offer_main_boxes_wrapper float_left">
                                                        <div class="x_car_offer_starts x_car_offer_starts_list_img float_left">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <div class="x_car_offer_img x_car_offer_img_list float_left">
                                                                <img src="images/c3.png" alt="img">
                                                            </div>
                                                            <div class="x_car_offer_price x_car_offer_price_list float_left">
                                                                <div class="x_car_offer_price_inner x_car_offer_price_inner_list">
                                                                    <h3>$25</h3>
                                                                    <p>
                                                                        <span>from</span>
                                                                        <br>
                                                                        / day
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="x_car_offer_starts_list_img_cont">
                                                            <div class="x_car_offer_heading x_car_offer_heading_list float_left">
                                                                <h2><a href="#">MEV</a></h2>
                                                                <p>Extra Small</p>
                                                            </div>
                                                            <div class="x_car_offer_bottom_btn x_car_offer_bottom_btn_list float_left">
                                                                <ul>
                                                                    <li><a href="#">Book now</a>
                                                                    </li>
                                                                    <li><a href="#">Details</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="x_car_offer_heading x_car_offer_heading_listing float_left">
                                                                <ul class="">
                                                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4 Seats</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;4 Doors</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-shield"></i>&nbsp;9 Manual</a>
                                                                    </li>

                                                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;4 Bag Space</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-snowflake-o"></i>&nbsp;2 Air: Yes</a>
                                                                    </li>
                                                                    <li>
                                                                        <div class="nice-select" tabindex="0">
                                                                            <span class="current"><i class="fa fa-bars"></i>Others (2)</span>
                                                                            <ul class="list">
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="x_car_offer_main_boxes_wrapper float_left">
                                                        <div class="x_car_offer_starts x_car_offer_starts_list_img float_left">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <div class="x_car_offer_img x_car_offer_img_list float_left">
                                                                <img src="images/c4.png" alt="img">
                                                            </div>
                                                            <div class="x_car_offer_price x_car_offer_price_list float_left">
                                                                <div class="x_car_offer_price_inner x_car_offer_price_inner_list">
                                                                    <h3>$25</h3>
                                                                    <p>
                                                                        <span>from</span>
                                                                        <br>
                                                                        / day
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="x_car_offer_starts_list_img_cont">
                                                            <div class="x_car_offer_heading x_car_offer_heading_list float_left">
                                                                <h2><a href="#">Brabus</a></h2>
                                                                <p>Extra Small</p>
                                                            </div>
                                                            <div class="x_car_offer_bottom_btn x_car_offer_bottom_btn_list float_left">
                                                                <ul>
                                                                    <li><a href="#">Book now</a>
                                                                    </li>
                                                                    <li><a href="#">Details</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="x_car_offer_heading x_car_offer_heading_listing float_left">
                                                                <ul class="">
                                                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4 Seats</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;4 Doors</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-shield"></i>&nbsp;9 Manual</a>
                                                                    </li>

                                                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;4 Bag Space</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-snowflake-o"></i>&nbsp;2 Air: Yes</a>
                                                                    </li>
                                                                    <li>
                                                                        <div class="nice-select" tabindex="0">
                                                                            <span class="current"><i class="fa fa-bars"></i>Others (2)</span>
                                                                            <ul class="list">
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="x_car_offer_main_boxes_wrapper float_left">
                                                        <div class="x_car_offer_starts x_car_offer_starts_list_img float_left">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <div class="x_car_offer_img x_car_offer_img_list float_left">
                                                                <img src="images/c5.png" alt="img">
                                                            </div>
                                                            <div class="x_car_offer_price x_car_offer_price_list float_left">
                                                                <div class="x_car_offer_price_inner x_car_offer_price_inner_list">
                                                                    <h3>$25</h3>
                                                                    <p>
                                                                        <span>from</span>
                                                                        <br>
                                                                        / day
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="x_car_offer_starts_list_img_cont">
                                                            <div class="x_car_offer_heading x_car_offer_heading_list float_left">
                                                                <h2><a href="#">Abbott-Detroit</a></h2>
                                                                <p>Extra Small</p>
                                                            </div>
                                                            <div class="x_car_offer_bottom_btn x_car_offer_bottom_btn_list float_left">
                                                                <ul>
                                                                    <li><a href="#">Book now</a>
                                                                    </li>
                                                                    <li><a href="#">Details</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="x_car_offer_heading x_car_offer_heading_listing float_left">
                                                                <ul class="">
                                                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4 Seats</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;4 Doors</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-shield"></i>&nbsp;9 Manual</a>
                                                                    </li>

                                                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;4 Bag Space</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-snowflake-o"></i>&nbsp;2 Air: Yes</a>
                                                                    </li>
                                                                    <li>
                                                                        <div class="nice-select" tabindex="0">
                                                                            <span class="current"><i class="fa fa-bars"></i>Others (2)</span>
                                                                            <ul class="list">
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="x_car_offer_main_boxes_wrapper float_left">
                                                        <div class="x_car_offer_starts x_car_offer_starts_list_img float_left">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <div class="x_car_offer_img x_car_offer_img_list float_left">
                                                                <img src="images/c6.png" alt="img">
                                                            </div>
                                                            <div class="x_car_offer_price x_car_offer_price_list float_left">
                                                                <div class="x_car_offer_price_inner x_car_offer_price_inner_list">
                                                                    <h3>$25</h3>
                                                                    <p>
                                                                        <span>from</span>
                                                                        <br>
                                                                        / day
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="x_car_offer_starts_list_img_cont">
                                                            <div class="x_car_offer_heading x_car_offer_heading_list float_left">
                                                                <h2><a href="#">Dartz</a></h2>
                                                                <p>Extra Small</p>
                                                            </div>
                                                            <div class="x_car_offer_bottom_btn x_car_offer_bottom_btn_list float_left">
                                                                <ul>
                                                                    <li><a href="#">Book now</a>
                                                                    </li>
                                                                    <li><a href="#">Details</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="x_car_offer_heading x_car_offer_heading_listing float_left">
                                                                <ul class="">
                                                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4 Seats</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;4 Doors</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-shield"></i>&nbsp;9 Manual</a>
                                                                    </li>

                                                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;4 Bag Space</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-snowflake-o"></i>&nbsp;2 Air: Yes</a>
                                                                    </li>
                                                                    <li>
                                                                        <div class="nice-select" tabindex="0">
                                                                            <span class="current"><i class="fa fa-bars"></i>Others (2)</span>
                                                                            <ul class="list">
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="x_car_offer_main_boxes_wrapper float_left">
                                                        <div class="x_car_offer_starts x_car_offer_starts_list_img float_left">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <div class="x_car_offer_img x_car_offer_img_list float_left">
                                                                <img src="images/c7.png" alt="img">
                                                            </div>
                                                            <div class="x_car_offer_price x_car_offer_price_list float_left">
                                                                <div class="x_car_offer_price_inner x_car_offer_price_inner_list">
                                                                    <h3>$25</h3>
                                                                    <p>
                                                                        <span>from</span>
                                                                        <br>
                                                                        / day
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="x_car_offer_starts_list_img_cont">
                                                            <div class="x_car_offer_heading x_car_offer_heading_list float_left">
                                                                <h2><a href="#">Ferrari</a></h2>
                                                                <p>Extra Small</p>
                                                            </div>
                                                            <div class="x_car_offer_bottom_btn x_car_offer_bottom_btn_list float_left">
                                                                <ul>
                                                                    <li><a href="#">Book now</a>
                                                                    </li>
                                                                    <li><a href="#">Details</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="x_car_offer_heading x_car_offer_heading_listing float_left">
                                                                <ul class="">
                                                                    <li><a href="#"><i class="fa fa-users"></i>&nbsp;4 Seats</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-clone"></i>&nbsp;4 Doors</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-shield"></i>&nbsp;9 Manual</a>
                                                                    </li>

                                                                    <li><a href="#"><i class="fa fa-briefcase"></i>&nbsp;4 Bag Space</a>
                                                                    </li>
                                                                    <li><a href="#"><i class="fa fa-snowflake-o"></i>&nbsp;2 Air: Yes</a>
                                                                    </li>
                                                                    <li>
                                                                        <div class="nice-select" tabindex="0">
                                                                            <span class="current"><i class="fa fa-bars"></i>Others (2)</span>
                                                                            <ul class="list">
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-code-fork"></i>Transmission</a>
                                                                                </li>
                                                                                <li class="dpopy_li"><a href="#"><i class="fa fa-user-circle-o"></i>Minimum age</a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="pager_wrapper prs_blog_pagi_wrapper">
                                                        <ul class="pagination">
                                                            <li><a href="#"><i class="flaticon-left-arrow"></i></a>
                                                            </li>
                                                            <li class="btc_shop_pagi"><a href="#">01</a>
                                                            </li>
                                                            <li class="btc_shop_pagi"><a href="#">02</a>
                                                            </li>
                                                            <li class="btc_third_pegi btc_shop_pagi"><a href="#">03</a>
                                                            </li>
                                                            <li class="hidden-xs btc_shop_pagi"><a href="#">...</a>
                                                            </li>
                                                            <li><a href="#"><i class="flaticon-right-arrow"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>--%>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- x car book sidebar section Wrapper End -->
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
        </div>
    </form>
</asp:Content>

