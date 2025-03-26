<%@ Page Title="" Language="C#" MasterPageFile="~/user/HomeMasterPage1.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="user_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="btc_tittle_main_wrapper">
        <div class="btc_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_left_heading">
                        <h1>Booking & Review</h1>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
                    <div class="btc_tittle_right_heading">
                        <div class="btc_tittle_right_cont_wrapper">
                            <ul>
                                <li><a href="#">Profile</a>  <i class="fa fa-angle-right"></i>
                                </li>
                                <li>Booking & Review</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form runat="server">

        <div class="x_contact_title_main_wrapper float_left padding_tb_100">
            <div class="container">

                <div class='mybookings_nav table-responsive'>
                    <center>
                              <h3> Your Bookings </h3>
                          </center>
                    <div class="blog_pager_wrapper">
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="booking_id" align="center" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AlternatingRowStyle-Height="60" BorderColor="Blue" BorderStyle="Solid">
                            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                            <Columns>
                                <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" InsertVisible="False" SortExpression="booking_id"></asp:BoundField>
                                <asp:BoundField DataField="booking_date" HeaderText="booking_date" SortExpression="booking_date"></asp:BoundField>
                                <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" Visible="False"></asp:BoundField>
                                <asp:BoundField DataField="car_id" HeaderText="car_id" SortExpression="car_id" Visible="False"></asp:BoundField>
                                <asp:BoundField DataField="driver_id" HeaderText="driver_id" SortExpression="driver_id" Visible="False"></asp:BoundField>
                                <%--<asp:BoundField DataField="total_fare" HeaderText="total_fare" SortExpression="total_fare"></asp:BoundField>--%>
                                <asp:BoundField DataField="booking_days" HeaderText="booking_days" SortExpression="booking_days" Visible="False"></asp:BoundField>
                                <asp:BoundField DataField="pick_time" HeaderText="pick_time" SortExpression="pick_time" Visible="False"></asp:BoundField>
                                <asp:BoundField DataField="ride_starting_date" HeaderText="ride_starting_date" SortExpression="ride_starting_date"></asp:BoundField>
                                <asp:BoundField DataField="ride_ending_date" HeaderText="ride_ending_date" SortExpression="ride_ending_date"></asp:BoundField>
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" Visible="False"></asp:BoundField>
                                <asp:HyperLinkField DataNavigateUrlFields="booking_id,customer_id,car_id,driver_id" DataNavigateUrlFormatString="booking_details.aspx?bid={0}&cid={1}&car_id={2}&did={3}" HeaderText="More Detail & Review" Text="More Detail & Review"></asp:HyperLinkField>
                                <asp:HyperLinkField DataNavigateUrlFields="booking_id,status" DataNavigateUrlFormatString="ucan_booking.aspx?bid={0}&amp;s={1}" Text="Cancel Ride" HeaderText="Cancel Ride"></asp:HyperLinkField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                            <RowStyle BackColor="#EFF3FB"></RowStyle>

                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tbl_booking] WHERE ([customer_id] = @customer_id) and ( status=0 or status=2)">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="uid" Name="customer_id" Type="Int32"></asp:SessionParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

            </div>
        <%--</div>--%>



        <%--<div class="x_contact_title_main_wrapper float_left padding_tb_100">--%>
            <div class="container">

                <div class='mybookings_nav table-responsive'>
                    <center> <br /><br /> <br />
                              <h3> Your Cancelled Bookings </h3>
                          </center>
                    <div class="blog_pager_wrapper">
                        <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="booking_id" align="center" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="Red" GridLines="Horizontal" AlternatingRowStyle-Height="60" BorderColor="#CCCCCC" BorderStyle="None" BackColor="White" BorderWidth="1px">
                            <AlternatingRowStyle></AlternatingRowStyle>
                            <Columns>
                                <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" InsertVisible="False" SortExpression="booking_id"></asp:BoundField>
                                <asp:BoundField DataField="booking_date" HeaderText="booking_date" SortExpression="booking_date"></asp:BoundField>
                                <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" Visible="False"></asp:BoundField>
                                <asp:BoundField DataField="car_id" HeaderText="car_id" SortExpression="car_id" Visible="False"></asp:BoundField>
                                <asp:BoundField DataField="driver_id" HeaderText="driver_id" SortExpression="driver_id" Visible="False"></asp:BoundField>
                                <%--<asp:BoundField DataField="total_fare" HeaderText="total_fare" SortExpression="total_fare"></asp:BoundField>--%>
                                <asp:BoundField DataField="booking_days" HeaderText="booking_days" SortExpression="booking_days" Visible="False"></asp:BoundField>
                                <asp:BoundField DataField="pick_time" HeaderText="pick_time" SortExpression="pick_time" Visible="False"></asp:BoundField>
                                <asp:BoundField DataField="ride_starting_date" HeaderText="ride_starting_date" SortExpression="ride_starting_date"></asp:BoundField>
                                <asp:BoundField DataField="ride_ending_date" HeaderText="ride_ending_date" SortExpression="ride_ending_date"></asp:BoundField>
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" Visible="False"></asp:BoundField>
                                <asp:HyperLinkField DataNavigateUrlFields="booking_id,customer_id,car_id,driver_id" DataNavigateUrlFormatString="booking_details.aspx?bid={0}&cid={1}&car_id={2}&did={3}" HeaderText="More Detail & Review" Text="More Detail & Review"></asp:HyperLinkField>
                                <%--<asp:HyperLinkField DataNavigateUrlFields="booking_id" DataNavigateUrlFormatString="ucan_booking.aspx?bid={0}" Text="Cancel Ride" HeaderText="Cancel Ride"></asp:HyperLinkField>--%>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tbl_booking] WHERE ([customer_id] = @customer_id) and ( status=5)">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="uid" Name="customer_id" Type="Int32"></asp:SessionParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

            </div>
        </div>


    </form>
</asp:Content>

