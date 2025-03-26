<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="userinfo.aspx.cs" Inherits="admin_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
   
    <div class="col-lg-12">
                        <div class="card">
                             

                            <div class="card-body">
                                 <div class="table-responsive">
                                <h4 class="card-title">Users Information</h4>
                                <form runat="server">
                                    </br>
                                <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="customer_id" DataSourceID="SqlDataSource1" class="table color-bordered-table info-bordered-table" CellPadding="4" ForeColor="#333333" GridLines="None">


                                    <AlternatingRowStyle BackColor="White" />


                                    <Columns>
                                        <%--<asp:BoundField DataField="state_name" HeaderText="state_name" SortExpression="state_name"></asp:BoundField>--%>
                                        <asp:BoundField DataField="customer_id" HeaderText="customer_id" ReadOnly="True" InsertVisible="False" SortExpression="customer_id"></asp:BoundField>
                                        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname"></asp:BoundField>
                                        <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname"></asp:BoundField>
                                        <asp:BoundField DataField="phone_number" HeaderText="phone_number" SortExpression="phone_number"></asp:BoundField>
                                        <asp:BoundField DataField="birthdate" HeaderText="birthdate" SortExpression="birthdate"></asp:BoundField>
                                        <asp:BoundField DataField="driving_lincense_number" HeaderText="driving_lincense_number" SortExpression="driving_lincense_number"></asp:BoundField>
                                        <asp:BoundField DataField="lincense_expire_date" HeaderText="lincense_expire_date" SortExpression="lincense_expire_date"></asp:BoundField>
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age"></asp:BoundField>
                                        <%--<asp:BoundField DataField="state_id" HeaderText="state_id" SortExpression="state_id"></asp:BoundField>
                                        <asp:BoundField DataField="city_id" HeaderText="city_id" SortExpression="city_id"></asp:BoundField>--%>
                                        <asp:BoundField DataField="city_name" HeaderText="city_name" SortExpression="city_name"></asp:BoundField>
                                        <asp:BoundField DataField="state_name" HeaderText="state_name" SortExpression="state_name"></asp:BoundField>
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
                                 
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT tbl_customer.customer_id, tbl_customer.fname, tbl_customer.lname, tbl_customer.phone_number, tbl_customer.birthdate, tbl_customer.driving_lincense_number, tbl_customer.lincense_expire_date, tbl_customer.email, tbl_customer.password, tbl_customer.gender, tbl_customer.age, tbl_customer.state_id, tbl_customer.city_id, tbl_city.city_name, tbl_state.state_name FROM tbl_city INNER JOIN tbl_customer ON tbl_city.city_id = tbl_customer.city_id INNER JOIN tbl_state ON tbl_city.state_id = tbl_state.state_id AND tbl_customer.state_id = tbl_state.state_id"></asp:SqlDataSource>
                                </form>





                            </div>
                          </div>
                        </div>
                    </div>



   

</asp:Content>

