<%@ Page Title="" Language="C#" MasterPageFile="~/driver/driverMasterPage.master" AutoEventWireup="true" CodeFile="next_booking.aspx.cs" Inherits="driver_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;
   
    <div class="col-lg-12">
        <div class="card">


            <div class="card-body">
                <div class="table-responsive">
                    <h4 class="card-title">Upcoming Booking</h4>
                    <form id="form1" runat="server">
                        </br>
          
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="booking_id" DataSourceID="SqlDataSource_prev" class="table color-bordered-table info-bordered-table" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="booking_id" HeaderText="booking_id" ReadOnly="True" InsertVisible="False" SortExpression="booking_id"></asp:BoundField>
                                <asp:BoundField DataField="booking_date" HeaderText="booking_date" SortExpression="booking_date"></asp:BoundField>
                                <asp:BoundField DataField="booking_days" HeaderText="booking_days" SortExpression="booking_days"></asp:BoundField>
                                <asp:BoundField DataField="pick_address" HeaderText="pick_address" SortExpression="pick_address"></asp:BoundField>
                                <asp:BoundField DataField="pick_time" HeaderText="pick_time" SortExpression="pick_time"></asp:BoundField>
                                <asp:BoundField DataField="ride_starting_date" HeaderText="ride_starting_date" SortExpression="ride_starting_date"></asp:BoundField>
                                <asp:BoundField DataField="drop_address" HeaderText="drop_address" SortExpression="drop_address"></asp:BoundField>
                                <asp:BoundField DataField="ride_ending_date" HeaderText="ride_ending_date" SortExpression="ride_ending_date"></asp:BoundField>
                                <%--<asp:HyperLinkField DataNavigateUrlFields="booking_id" DataNavigateUrlFormatString="can_booking.aspx?bid={0}" Text="Cancel Booking" HeaderText="Cancel Booking"></asp:HyperLinkField>--%>
                                <asp:HyperLinkField DataNavigateUrlFields="booking_id" DataNavigateUrlFormatString="cancel_booking.aspx?bid={0}" Text="Cancel Ride" HeaderText="Cancel Ride"></asp:HyperLinkField>
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
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource_prev" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [booking_id], [booking_date], [booking_days], [pick_address], [pick_time], [ride_starting_date], [drop_address], [ride_ending_date] FROM [tbl_booking] WHERE (([driver_id] = @driver_id) AND (([status] = @status) or ([ride_starting_date] >= @ride_starting_date)))">
                            <SelectParameters>
                                <asp:SessionParameter SessionField="uid" Name="driver_id" Type="Int32"></asp:SessionParameter>
                                <asp:Parameter DefaultValue="2" Name="status" Type="Int32"></asp:Parameter>
                                <asp:SessionParameter SessionField="today" Name="ride_starting_date" Type="String"></asp:SessionParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

