<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
&nbsp;
   
    <div class="col-lg-12">
                        <div class="card">
                             

                            <div class="card-body">
                                 <div class="table-responsive">
                                <h4 class="card-title">Booking Information</h4>
                                
                                    </br>
                               <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" datakeynames="booking_id" datasourceid="SqlDataSource2" class="table-hover" CellPadding="4" ForeColor="#333333" GridLines="None">
                                   <AlternatingRowStyle BackColor="White" />
                                   <Columns>
                                       <asp:BoundField DataField="booking_id" HeaderText="booking id" SortExpression="booking_id" InsertVisible="False" ReadOnly="True"></asp:BoundField>
                                       <asp:BoundField DataField="booking_date" HeaderText="booking date" SortExpression="booking_date"></asp:BoundField>
                                       <asp:BoundField DataField="booking_days" HeaderText="booking days" SortExpression="booking_days"></asp:BoundField>
                                       <asp:BoundField DataField="payment_id" HeaderText="payment id" SortExpression="payment_id"></asp:BoundField>
                                       <%--<asp:BoundField DataField="driver_id" HeaderText="driver_id" SortExpression="driver_id"></asp:BoundField>--%>
                                       <asp:BoundField DataField="ride_starting_date" HeaderText="ride starting date" SortExpression="ride_starting_date"></asp:BoundField>                                       
                                       <asp:BoundField DataField="ride_ending_date" HeaderText="ride ending date" SortExpression="ride_ending_date"></asp:BoundField>
                                       <asp:BoundField DataField="pick_address" HeaderText="pick-up address" SortExpression="pick_address"></asp:BoundField>
                                       <asp:BoundField DataField="drop_address" HeaderText="drop-off address" SortExpression="drop_address"></asp:BoundField>
                                       <asp:BoundField DataField="pick_time" HeaderText="pick-up time" SortExpression="pick_time"></asp:BoundField>

                                       <asp:BoundField DataField="pick_address" HeaderText="pick-up address" SortExpression="pick_address"></asp:BoundField>
                                       <asp:BoundField DataField="state_name" HeaderText="state name" SortExpression="state_name"></asp:BoundField>
                                       <asp:BoundField DataField="city_name" HeaderText="city name" SortExpression="city_name"></asp:BoundField>
                                       <asp:BoundField DataField="car_name" HeaderText="car name" SortExpression="car_name"></asp:BoundField>
                                       <asp:BoundField DataField="car_company_name" HeaderText="car company name" SortExpression="car_company_name"></asp:BoundField>

                                       <asp:BoundField DataField="registration_number" HeaderText="registration number" SortExpression="registration_number"></asp:BoundField>
                                       <asp:BoundField DataField="fname" HeaderText="driver fname" SortExpression="fname"></asp:BoundField>
                                       <asp:BoundField DataField="lname" HeaderText="driver lname" SortExpression="lname"></asp:BoundField>
                                       <asp:BoundField DataField="phone_number" HeaderText="driver phone number" SortExpression="phone_number"></asp:BoundField>
                                       <asp:BoundField DataField="Expr1" HeaderText="customer fname" SortExpression="Expr1"></asp:BoundField>
                                       <asp:BoundField DataField="Expr2" HeaderText="customer lname" SortExpression="Expr2"></asp:BoundField>
                                       <asp:BoundField DataField="Expr3" HeaderText="customer phone number" SortExpression="Expr3"></asp:BoundField>
                                   </Columns>
                                   <EditRowStyle BackColor="#2461BF" />
                                   <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                   <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                   <RowStyle BackColor="#EFF3FB" />
                                   <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                   <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                   <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                   <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                   <SortedDescendingHeaderStyle BackColor="#4870BE" />
                               </asp:gridview>

                                     <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT tbl_booking.booking_date, tbl_booking.booking_days, tbl_booking.payment_id, tbl_booking.driver_id, tbl_booking.booking_id, tbl_booking.ride_ending_date, tbl_booking.drop_address, tbl_booking.ride_starting_date, tbl_booking.pick_time, tbl_booking.pick_address, tbl_state.state_name, tbl_city.city_name, tbl_car_name.car_name, tbl_car_company.car_company_name, tbl_car.registration_number, tbl_driver.fname, tbl_driver.lname, tbl_driver.phone_number, tbl_customer.fname AS Expr1, tbl_customer.lname AS Expr2, tbl_customer.phone_number AS Expr3 FROM tbl_booking INNER JOIN tbl_city ON tbl_booking.city_id = tbl_city.city_id INNER JOIN tbl_state ON tbl_booking.state_id = tbl_state.state_id AND tbl_city.state_id = tbl_state.state_id INNER JOIN tbl_car ON tbl_booking.car_id = tbl_car.car_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id AND tbl_car_company.car_company_id = tbl_car_name.car_company_id INNER JOIN tbl_driver ON tbl_booking.driver_id = tbl_driver.driver_id INNER JOIN tbl_customer ON tbl_booking.customer_id = tbl_customer.customer_id"></asp:SqlDataSource>
                                    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_admin]"></asp:SqlDataSource>--%>
                             





                            </div>
                          </div>
                        </div>
                    </div>
</form>
</asp:Content>

