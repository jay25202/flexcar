<%@ Page Title="" Language="C#" MasterPageFile="~/user/HomeMasterPage1.master" AutoEventWireup="true" CodeFile="car_checkout.aspx.cs" Inherits="user_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .list-unstyled textarea {
            margin-top: 5px;
            border: 1px solid #eeeeee;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            resize: none;
        }

            .list-unstyled textarea:focus {
                outline: 0;
                box-shadow: none;
                border: 1px solid #eeeeee;
            }

        .list-unstyled lbl {
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            border: 1px solid #eeeeee;
        }

        .list-unstyled input:focus {
            outline: 0;
            box-shadow: none;
            border-color: #eeeeee;
        }

        .car_checkout_chekbox input[type="checkbox"] {
            display: none;
        }

        .car_checkout_chekbox label {
            cursor: pointer;
            color: #797979;
            font-weight: 500 !important;
        }

        .car_checkout_chekbox input[type="checkbox"] + label:before {
            border: 2px solid #eeeeee;
            content: "\00a0";
            display: inline-block;
            font: 18px/1em sans-serif;
            height: 19px;
            margin: .20em .56em .0 .0;
            padding: 0;
            vertical-align: top;
            width: 19px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        .car_checkout_chekbox input[type="checkbox"]:checked + label:before {
            background: #fff;
            color: #4f5dec;
            content: "\2713";
        }

        .car_checkout_chekbox input[type="checkbox"]:checked + label:after {
            font-weight: bold;
        }

        .car_checkout_chekbox1 {
            padding-top: 15px;
        }

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
    <!-- btc tittle Wrapper Start -->
    <div class="btc_tittle_main_wrapper">
        <div class="btc_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_left_heading">
                        <h1>Checkout</h1>
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
                                <li>Checkout</li>
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
                            <%--<a href="userhome.aspx">--%>
                                <p>1</p>
                            <%--</a>--%>
                        </div>
                        <h5>Time & place</h5>
                    </div>
                    <div class="x_title_num_main_box_wrapper">
                        <div class="x_icon_num ">
                            <%--<a href="car_booking.aspx">--%>
                                <p>2</p>
                            <%--</a>--%>
                        </div>
                        <h5>Car</h5>
                    </div>
                    <div class="x_title_num_main_box_wrapper">
                        <div class="x_icon_num">
                            <%--<a href="car_detail_left.aspx">--%>
                                <p>3</p>
                            <%--</a>--%>
                        </div>
                        <h5>detail</h5>
                    </div>
                    <div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper3">
                        <div class="x_icon_num x_icon_num2">
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
                                <!-- Filter Results -->
                                <div class="car-filter accordion x_inner_car_acc_accor">
                                    <h3>Order Details</h3>
                                    <hr>
                                    <!-- Resources -->
                                    <div class="x_car_access_filer_top_img">
                                        <%--<img src="images/c2.png" alt="car_img">--%>
                                        <asp:Image ID="Image1" runat="server" alt="car_img" Width="190" Height="95" />
                                        <h3>
                                            <asp:Label runat="server" ID="lblcname" Text="Label"></asp:Label></h3>
                                        <p>
                                            <asp:Label runat="server" ID="lblrent" Text="Label"></asp:Label>
                                        </p>
                                    </div>
                                    <hr>
                                    <!-- Company -->
                                    <!-- Attributes -->
                                    <div class="panel panel-default x_car_inner_acc_acordion_padding">
                                        <div class="collapse show">
                                            <div class="panel-body">
                                                <div class="x_car_acc_filter_date">
                                                    <%--<table class="table">
														<thead>
															<tr>
																<th scope="col">DAYS</th>
																<th scope="col">Rate</th>
																<th scope="col">Subtotal</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<th scope="col"><asp:label runat="server" ID="lblday" text="lblday">Day</asp:label></th> 
																<th scope="col"><asp:label runat="server" ID="lblrt" text="Label">₹</asp:label></th>
																<th scope="col"><asp:label runat="server" ID="lblttl" text="Label">₹</asp:label></th>
															</tr>
														</tbody>
													</table>--%>
                                                    <table id="Table1" class="table" width="200" height="100">
                                                        <tr>
                                                            <th style="text-align: right">Days </th>
                                                            <th style="text-align: right">Rate </th>
                                                            <th style="text-align: right">SubTotal </th>
                                                        </tr>
                                                        <tr>
                                                            <th style="text-align: center">
                                                                <asp:Label runat="server" ID="lblday"></asp:Label></th>
                                                            <th style="text-align: center">
                                                                <asp:Label runat="server" ID="lblrt"></asp:Label>₹</th>
                                                            <th style="text-align: center">
                                                                <asp:Label runat="server" ID="lblttl"></asp:Label>₹</th>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="panel panel-default x_car_inner_acc_acordion_padding x_car_inner_acc_acordion_padding_last">
                                        <div class="panel-heading car_checkout_caret">
                                            <h5 class="panel-title"><a href="#">Pick-up Date & Place </a> </h5>
                                        </div>
                                        <div class="collapse show">
                                            <div class="panel-body">
                                                <div class="x_car_acc_filter_date">
                                                    <ul>
                                                        <li><span>&nbsp;&nbsp;&nbsp;
                                                            <asp:Label runat="server" ID="lblptime" Text="lblptime"></asp:Label>
                                                            </span>
                                                        </li>
                                                        <li><span>
                                                            &nbsp;&nbsp;&nbsp;<asp:Label runat="server" ID="lblpickup" Text="lblpickup"></asp:Label></span>

                                                        </li>
                                                        <li><span>
                                                            &nbsp; &nbsp;&nbsp;<asp:Label runat="server" ID="lblpickdate" Text="lblpickupdt"></asp:Label></span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    &nbsp;
									<hr>
                                    <div class="panel panel-default x_car_inner_acc_acordion_padding x_car_inner_acc_acordion_padding_last">
                                        <div class="panel-heading car_checkout_caret">
                                            <h5 class="panel-title"><a href="#">Drop-Off Date & place</a> </h5>
                                        </div>
                                        <div class="collapse show">
                                            <div class="panel-body">
                                                <div class="x_car_acc_filter_date">
                                                    <ul>
                                                        <li><span>&nbsp;&nbsp;&nbsp;
                                                            <asp:Label runat="server" ID="lbldtime" Text="lbldtime"></asp:Label></span></li>
                                                        
                                                        <li><span>
                                                            &nbsp;&nbsp;&nbsp;<asp:Label runat="server" ID="lbldropoff" Text="lbldropoff"></asp:Label></span></li>
                                                        <li><span>
                                                            &nbsp;&nbsp;&nbsp;<asp:Label runat="server" ID="lbldropdate" Text="lbldropoffdt"></asp:Label></span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <%--<div class="panel panel-default x_car_inner_acc_acordion_padding x_car_inner_acc_acordion_padding_last">
										<div class="panel-heading car_checkout_caret">
											<h5 class="panel-title"> <a href="#"> Accessories</a> </h5>
										</div>
										<div class="collapse show">
											<div class="panel-body">
												<div class="x_car_acc_filter_date">
													<ul>
														<li>1x GPS <span>$19</span>
														</li>
														<li>Insurance <span>$199</span>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>--%>
                                    <hr>
                                    <div class="panel panel-default x_car_inner_acc_acordion_padding x_car_inner_acc_acordion_padding_last">
                                        <div class="panel-heading car_checkout_caret">
                                            <h5 class="panel-title"><a href="#">Taxes & Fees</a> </h5>
                                        </div>
                                        <div class="collapse show">
                                            <div class="panel-body">
                                                <div class="x_car_acc_filter_date">
                                                    <ul>
                                                        <li>SGST(7%) <span>
                                                            <asp:Label ID="lblsgst" runat="server" Text="Label"></asp:Label>₹</span></li>

                                                        <li>CGST(7%) <span>
                                                            <asp:Label ID="lblcgst" runat="server" Text="Label"></asp:Label>₹</span></li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <%--<div class="panel panel-default x_car_inner_acc_acordion_padding x_car_inner_acc_acordion_padding_last">
										<div class="collapse show">
											<div class="panel-body">
												<div class="x_car_acc_filter_date">
													<input type="text" placeholder="Coupon Code">
													<button type="submit"><i class="fa fa-arrow-right"></i>
													</button>
												</div>
											</div>
										</div>
									</div>--%>
                                    <div class="x_car_acc_filter_bottom_total">
                                        <ul>
                                            <li>total <span>
                                                <asp:Label runat="server" Text="Label" ID="lbltotal"></asp:Label>₹</span>


                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 col-12">
                    <div class="x_carbooking_right_section_wrapper float_left">
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="x_car_checkout_right_main_box_wrapper float_left">
                                    <div class="car-filter order-billing margin-top-0">
                                        <div class="heading-block text-left margin-bottom-0">
                                            <h4>Billing Details</h4>
                                            <%--<div class="pull-right checkout_login_btn">
												<ul>
													<li><a href="#">Login <i class="fa fa-arrow-right"></i></a>
													</li>
												</ul>
												<p class="retrn">Returning customer?</p>
											</div>--%>
                                        </div>
                                        <hr>
                                        <form class="billing-form" runat="server">
                                            <asp:ScriptManager runat="server"></asp:ScriptManager>
                                            <ul class="list-unstyled row">
                                                <li class="col-md-6">
                                                    <label>
                                                        First Name * </label>
														<%--<input type="text" placeholder="" class="form-control">--%>
                                                        <asp:Label ID="lblfname" class="form-control" ReadOnly="true" runat="server" Text=""></asp:Label>
                                                    
                                                </li>
                                                <li class="col-md-6">
                                                    <label>
                                                        Last Name * </label>
														<%--<input type="text" placeholder="" class="form-control">--%>
                                                        <asp:Label ID="lbllname" runat="server" ReadOnly="true" class="form-control" Text=""></asp:Label>
                                                    
                                                </li>
                                                <%--<li class="col-md-6">
													<label>Driver's Lisence ID
														<input type="text" placeholder="" class="form-control">

													</label>
												</li>--%>
                                                <%--<li class="col-md-6">
                                                    <label>
                                                        Company
														<input type="text" placeholder="" class="form-control">
                                                    </label>
                                                </li>--%>
                                                <li class="col-md-6">
                                                    <label>State</label>
                                                    
                                                    <asp:UpdatePanel runat="server">
                                                        <ContentTemplate>

                                                            <asp:DropDownList class="form-control" ID="ddlstate" runat="server" ReadOnly="true" AutoPostBack="True" DataTextField="state_name" DataValueField="state_id" CssClass="auto-style1 form-control" Width="250px" DataSourceID="SqlDataSource_state">
                                                            </asp:DropDownList>

                                                            <asp:SqlDataSource ID="SqlDataSource_state" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_state] WHERE ([country_id] = @country_id)">
                                                                <SelectParameters>
                                                                    <asp:Parameter DefaultValue="1" Name="country_id" Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>

                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                    
                                                </li>
                                                <li class="col-md-6">
                                                    <label>City </label>
                                                    <asp:UpdatePanel runat="server">
                                                        <ContentTemplate>
                                                            <asp:DropDownList ID="ddlcity" class="form-control" runat="server" ReadOnly="true" AutoPostBack="True" DataTextField="city_name" DataValueField="city_id" Width="250px" CssClass="auto-style1" DataSourceID="SqlDataSource_city">
                                                            </asp:DropDownList>


                                                            <asp:SqlDataSource ID="SqlDataSource_city" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_city] WHERE ([state_id] = @state_id)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlstate" Name="state_id" PropertyName="SelectedValue" Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>


                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </li>
                                                <%--<li class="col-md-6">
                                                    <label>State</label>
                                                    <select data-select2-id="7" tabindex="-1" aria-hidden="true" style="display: none;">
                                                        <option data-select2-id="9">Select</option>
                                                        <option>Afghanistan</option>
                                                        <option>Albania</option>
                                                        <option>Algeria</option>
                                                        <option>Andorra</option>
                                                        <option>Angola</option>
                                                    </select>
                                                    <div class="nice-select myselect select2-hidden-accessible" tabindex="0">
                                                        <span class="current">Select</span>
                                                        <ul class="list">
                                                            <li data-value="Select" class="option selected">Select</li>
                                                            <li data-value="Afghanistan" class="option">Afghanistan</li>
                                                            <li data-value="Albania" class="option">Albania</li>
                                                            <li data-value="Algeria" class="option">Algeria</li>
                                                            <li data-value="Andorra" class="option">Andorra</li>
                                                            <li data-value="Angola" class="option">Angola</li>
                                                        </ul>
                                                    </div>
                                                    <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="8" style="width: 108.4px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-fuq8-container"><span class="select2-selection__rendered" id="select2-fuq8-container" role="textbox" aria-readonly="true" title="Select">Select</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>City/town</label>
                                                    <select class="myselect select2-hidden-accessible" data-select2-id="10" tabindex="-1" aria-hidden="true" style="display: none;">
                                                        <option data-select2-id="12">Select</option>
                                                        <option>Afghanistan</option>
                                                        <option>Albania</option>
                                                        <option>Algeria</option>
                                                        <option>Andorra</option>
                                                        <option>Angola</option>
                                                    </select><div class="nice-select myselect select2-hidden-accessible" tabindex="0">
                                                        <span class="current">Select</span><ul class="list">
                                                            <li data-value="Select" class="option selected">Select</li>
                                                            <li data-value="Afghanistan" class="option">Afghanistan</li>
                                                            <li data-value="Albania" class="option">Albania</li>
                                                            <li data-value="Algeria" class="option">Algeria</li>
                                                            <li data-value="Andorra" class="option">Andorra</li>
                                                            <li data-value="Angola" class="option">Angola</li>
                                                        </ul>
                                                    </div>
                                                    <span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="11" style="width: 108.4px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-jdnm-container"><span class="select2-selection__rendered" id="select2-jdnm-container" role="textbox" aria-readonly="true" title="Select">Select</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                                </li>--%>
                                                
                                                <li class="col-md-6">
                                                    <label>
                                                        Pick-Up Address
														<%--<input type="text" placeholder="" class="form-control">--%>
                                                        <asp:TextBox ID="txtpick" placeholder="" ReadOnly="true" type="text" runat="server" class="form-control"></asp:TextBox>
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>
                                                        Drop-Off Address
														<%--<input type="text" placeholder="" class="form-control">--%>
                                                        <asp:TextBox ID="txtdrop" placeholder="" ReadOnly="true" type="text" runat="server" class="form-control"></asp:TextBox>
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>
                                                        Pick-Up Time
														<%--<input type="text" placeholder="" class="form-control">--%>
                                                        <asp:TextBox ID="txtpicktime" placeholder="" type="time" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                                                         <%--<span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="11" style="width: 242.4px;">
                                                           <span class="dropdown-wrapper" aria-hidden="true">
                                                           </span>
                                                         </span>--%>
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>
                                                        Phone
														<%--<input type="text" placeholder="" class="form-control">--%>
                                                        <asp:TextBox ID="txtphone" placeholder="" type="text" runat="server" class="form-control"></asp:TextBox>
                                                    </label>
                                                </li>
                                                <li class="col-md-6">
                                                    <label>
                                                        Email Address *
														<%--<input type="email" placeholder="" class="form-control">--%>
                                                        <asp:TextBox ID="txtmail" placeholder="" ReadOnly="true" type="text" runat="server" class="form-control"></asp:TextBox>
                                                    </label>
                                                </li>
                                                <li class="col-md-12">
                                                    <label>Additional information</label>
                                                    <asp:TextBox ID="txtnote" placeholder="Notes about your order, e.g. special notes for car." TextMode="MultiLine" type="text" runat="server" class="form-control"></asp:TextBox>
                                                    <%--<textarea placeholder="Notes about your order, e.g. special notes for car." class="form-control"></textarea>--%>
                                                </li>
                                            </ul>
                                            <hr>
                                            <div class="payme-opton">
                                                <div class="heading-block text-left margin-bottom-30">
                                                    <label><h4>Payment</h4></label>
                                                    <center>
                                                        <asp:Image ID="Image2" runat="server" ImageUrl="../img/paytm1.jpg" Height="150" Width="150" />
                                                     </center>
                                                </div>
                                                <%--<div class="radio">--%>
                                                    <%--<input type="radio" name="ratio" id="poa" value="option1" checked="">--%>
                                                    <%--<asp:RadioButton ID="rbride" runat="server" name="ratio" value="Pay On Ride" Checked="true" Text="Pay On Ride"/>--%>
                                                    <%--<asp:button id="btnpay" runat="server" text="paytm" OnClick="Unnamed4_Click"    />--%>
                                                    <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" name="ratio" >
                                                        <asp:ListItem Selected="True">Pay On Ride</asp:ListItem>
                                                        <asp:ListItem>Paytm</asp:ListItem>
                                                    </asp:RadioButtonList>--%>
                                                    <%--<label for="poa">Payment on Arrival</label>--%>
                                                <%--</div>
                                                <div class="radio">--%>
                                                    <%--<input type="radio" name="ratio" id="paypal" value="option1">--%>
                                                    <%--<asp:RadioButton ID="rbpaytm" runat="server" name="ratio" value="Paytm" Text="Paytm"/>--%>
                                                    <%--<label for="paypal">Paytm</label>--%>
                                                <%--</div>--%>
                                                <%--<div class="radio">
                                                    <input type="radio" name="ratio" id="stripe" value="option1">
                                                    <label for="stripe">Stripe</label>
                                                </div>--%>
                                            </div>
                                            <hr>
                                            <%--<div class="checkbox car_checkout_chekbox car_checkout_chekbox1">
                                                <input type="checkbox" id="c2" name="cb">
                                                <label for="c2">Create an Account?</label>
                                            </div>--%>
                                            <div class="checkbox car_checkout_chekbox">
                                                <%--<input type="checkbox" id="c3" name="cb">--%>
                                                <asp:CheckBox type="checkbox" id="c3" name="cb" Text="I have Read and Accept Terms Conditions." runat="server" />
                                                <a href="tandc.aspx"><i class="fa fa-long-arrow-right"></i> &nbsp; Terms & Condition** </a>
                                                <%--<label for="c3">I have Read and Accept Terms &amp; Conditions *</label>--%>
                                            </div>
                                            <br />
                                            <br />
                                            <div class="col-md-12">
                                <div class="contect_btn contect_btn_ontact">
                                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                    <%--<ul>
                                        <li>--%><%--<a href="#">Place an Order <i class="fa fa-arrow-right"></i></a>--%>
                                            <center>
                                                <asp:Button ID="btnsubmit" runat="server" class="btn btn-primary login_btn" Text="Pay Now & Confirm Order"  OnClick="btnsubmit_Click" />
                                            </center>
                                        <%--</li>
                                    </ul>--%>
                                </div>
                            </div>

                                       </form>
                                    </div>
                                </div>
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


</asp:Content>

