<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="add_city.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        &nbsp;
   <div class="row">
       <div class="col-lg-12">
           <div class="card">


               <div class="card-body">
                   <h4 class="card-title">Add State </h4>

                   <div class="form-group has-warning has-feedback m-b-40">
                       <label for="input6">Country</label>
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                               <asp:DropDownList ID="ddlcountry" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource_country" DataTextField="c_name" DataValueField="country_id"></asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource_country" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_country]"></asp:SqlDataSource>
                           </ContentTemplate>
                       </asp:UpdatePanel>
                   </div>

                   <div class="form-group has-warning has-feedback m-b-40">
                       <label for="input7">State</label>
                       <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                           <ContentTemplate>
                               <asp:DropDownList ID="ddlstate" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource_state" DataTextField="state_name" DataValueField="state_id"></asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource_state" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_state] WHERE ([country_id] = @country_id)">
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="ddlcountry" PropertyName="SelectedValue" Name="country_id" Type="Int32"></asp:ControlParameter>

                                   </SelectParameters>
                               </asp:SqlDataSource>
                           </ContentTemplate>
                       </asp:UpdatePanel>
                   </div>


                   <div class="form-group has-warning m-b-40">
                       <label for="input8">City Name</label>
                       <asp:RequiredFieldValidator ControlToValidate="txtct" ErrorMessage="Enter City Name" ForeColor="red" ID="RequiredFieldValidator6" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                       <asp:TextBox runat="server" type="text" class="form-control" ID="txtct"></asp:TextBox>

                   </div>


                   <div class="form-group" style="text-align: center">
                       <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ValidationGroup="driver" ShowSummary="False" DisplayMode="BulletList" Font-Bold="True" Font-Size="Large" HeaderText="All fields are mendatory" BorderStyle="Ridge" BackColor="#0000CC" />
                       <asp:Button runat="server" ID="btnsub" Text="SUBMIT" ValidationGroup="driver" class="btn-rounded btn-success" OnClick="btnsub_Click" />
                   </div>


                   <br />
                  
                   <center>
                   <div>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="city_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:BoundField DataField="city_id" HeaderText="city id" ReadOnly="True" SortExpression="city_id" InsertVisible="False" />
                           <asp:BoundField DataField="city_name" HeaderText="city name" SortExpression="city_name" />
                           <asp:BoundField DataField="state_name" HeaderText="state name" SortExpression="state_name" />
                           <asp:BoundField DataField="c_name" HeaderText="c name" SortExpression="c_name" />
                           <asp:CommandField ShowDeleteButton="True" />
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_city] WHERE [city_id] = @city_id" SelectCommand="SELECT tbl_city.city_id, tbl_city.city_name, tbl_state.state_name, tbl_country.c_name FROM tbl_state INNER JOIN tbl_country ON tbl_state.country_id = tbl_country.country_id INNER JOIN tbl_city ON tbl_state.state_id = tbl_city.state_id">
                    <DeleteParameters>
                           <asp:Parameter Name="city_id" Type="Int32" />
                       </DeleteParameters>   
                   </asp:SqlDataSource>
                    </div>
                       </center>

               </div>
           </div>
       </div>
   </div>
    </form>

</asp:Content>

