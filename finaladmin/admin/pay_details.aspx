<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="pay_details.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     &nbsp;
   
    <div class="col-lg-12">
        <div class="card">


            <div class="card-body">
                <div class="table-responsive">
                    <h4 class="card-title">Payment Details</h4>
                    <form id="form1" runat="server">
                        </br>
          
                        
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" class="table color-bordered-table info-bordered-table" CellPadding="4" ForeColor="#333333" GridLines="None">

                            <AlternatingRowStyle BackColor="White" />

                            <Columns>
                                <asp:BoundField DataField="payment_id" HeaderText="payment id" ReadOnly="True" InsertVisible="False" SortExpression="payment_id"></asp:BoundField>
                                <asp:BoundField DataField="pay_date" HeaderText="payment date" SortExpression="pay_date"></asp:BoundField>
                                <asp:BoundField DataField="customer_id" HeaderText="customer id" SortExpression="customer_id"></asp:BoundField>
                                <asp:BoundField DataField="sgst" HeaderText="sgst" SortExpression="sgst"></asp:BoundField>
                                <asp:BoundField DataField="cgst" HeaderText="cgst" SortExpression="cgst"></asp:BoundField>
                                <asp:BoundField DataField="total_amount" HeaderText="total amount" SortExpression="total_amount"></asp:BoundField>
                                <asp:BoundField DataField="payment_mode" HeaderText="payment mode" SortExpression="payment_mode"></asp:BoundField>
                                <asp:BoundField DataField="fname" HeaderText="customer fname" SortExpression="fname"></asp:BoundField>
                                <asp:BoundField DataField="lname" HeaderText="customer lname" SortExpression="lname"></asp:BoundField>
                                <asp:BoundField DataField="phone_number" HeaderText="customer phone number" SortExpression="phone_number"></asp:BoundField>
                                <asp:BoundField DataField="booking_id" HeaderText="booking id" ReadOnly="True" InsertVisible="False" SortExpression="booking_id"></asp:BoundField>
                                <asp:BoundField DataField="booking_date" HeaderText="booking date" SortExpression="booking_date"></asp:BoundField>
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

                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT tbl_payment.*, tbl_customer.fname, tbl_customer.lname, tbl_customer.phone_number, tbl_booking.booking_id, tbl_booking.booking_date FROM tbl_payment INNER JOIN tbl_customer ON tbl_payment.customer_id = tbl_customer.customer_id INNER JOIN tbl_booking ON tbl_payment.payment_id = tbl_booking.payment_id AND tbl_customer.customer_id = tbl_booking.customer_id"></asp:SqlDataSource>
                               
                                </form>
                </div>
            </div>
        </div>
    </div>



</asp:Content>

