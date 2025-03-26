<%@ Page Title="" Language="C#" MasterPageFile="~/visitor/visitorMasterPage.master" AutoEventWireup="true" CodeFile="vcars.aspx.cs" Inherits="user_Default3" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="btc_tittle_main_wrapper">
            <div class="btc_tittle_img_overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                        <div class="btc_tittle_left_heading">
                            <h1>Cars</h1>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                        <div class="btc_tittle_right_heading">
                            <div class="btc_tittle_right_cont_wrapper">
                                <ul>
                                    <li><a href="visitorhome.aspx">Home</a>  <i class="fa fa-angle-right"></i>
                                    </li>
                                    <li>Cars</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <div class="x_offer_car_main_wrapper float_left padding_tb_100">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-12">

                                <div class="tab-content">
                                    <div id="home" class="tab-pane active">
                                        <div class="row">
            </HeaderTemplate>
            <ItemTemplate>
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="x_car_offer_main_boxes_wrapper float_left">
                        <div class="x_car_offer_starts float_left">
                            <%--<i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>--%>
                            <asp:Rating ID="Rating1" runat="server" AutoPostBack="True"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" ReadOnly="true" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar" CurrentRating='<%# getstar(Eval("car_id").ToString())%>'>
                            </asp:Rating>
                        </div>
                        <div class="x_car_offer_img float_left">
                            <a href='vcar_details.aspx?id=<%# Eval("car_id") %>' ><img src='../car_images/<%# Eval("car_image") %>' alt="img" height="110px" width="190px"></a>
                            <%--<img src="images/c3.png" alt="img">--%>
                        </div>
                        <div class="x_car_offer_price float_left">
                            <div class="x_car_offer_price_inner">
                                <h3><%--$25--%>
                                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("car_rent") %>'></asp:Label>
                                </h3>
                                <p>
                                    <span>from</span>
                                    <br>
                                    / day
                                </p>
                            </div>
                        </div>
                        <div class="x_car_offer_heading float_left">
                            <h2><a href="#">
                                <asp:Label ID="lblcname" runat="server" Text='<%# Eval("car_name") %>'></asp:Label></a></h2>
                            <p>
                                <asp:Label ID="lblcomname" runat="server" Text='<%# Eval("car_company_name") %>'></asp:Label>
                            </p>
                            <%--<h2><a href="#">Brilliance</a></h2>
											<p>Extra Small</p>--%>
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
                                <li><a href='visitorhome.aspx'>Book now</a>
                                </li>
                                <li><a href='vcar_details.aspx?id=<%# Eval("car_id") %>'>Details</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
                </div>                          
						</div>													
					</div>					
				</div>
			</div>
		</div>
	</div>
            </FooterTemplate>
        </asp:Repeater>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT tbl_car.*, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id"></asp:SqlDataSource>


        <%--     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [car_id], [car_name_id], [car_company_id], [car_model_id], [transmission_type], [car_fuel_id], [car_type_id], [avarage_fuel_efficiency], [color_id], [status], [city_id], [state_id], [car_rent], [car_image], [customer_id], [car_menufacture_year], [owner_name], [registration_number] FROM [tbl_car]"></asp:SqlDataSource>--%>
    </form>
</asp:Content>

