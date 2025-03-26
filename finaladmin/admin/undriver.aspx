<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="undriver.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     &nbsp;
   
    <div class="col-lg-12">
        <div class="card">


            <div class="card-body">
                <div class="table-responsive">
                    <h4 class="card-title">Unavailable Drivers</h4>
                    <form id="form1" runat="server">
                        </br>


                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table color-bordered-table info-bordered-table" DataKeyNames="driver_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="driver_id" HeaderText="driver id" ReadOnly="True" InsertVisible="False" SortExpression="driver_id"></asp:BoundField>
                                <asp:BoundField DataField="fname" HeaderText="first name" SortExpression="fname"></asp:BoundField>
                                <asp:BoundField DataField="lname" HeaderText="last name" SortExpression="lname"></asp:BoundField>
                                <asp:BoundField DataField="phone_number" HeaderText="phone number" SortExpression="phone_number"></asp:BoundField>
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
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

                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [driver_id], [fname], [lname], [phone_number], [email], [gender], [address] FROM [tbl_driver] WHERE ([status] = @status)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="3" Name="status" Type="Int32"></asp:Parameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

