<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="add_state.aspx.cs" Inherits="admin_Default" %>

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


                   <div class="form-group has-warning m-b-40">
                       <label for="input8">State Name</label>
                       <asp:RequiredFieldValidator ControlToValidate="txtstate" ErrorMessage="Enter State Name" ForeColor="red" ID="RequiredFieldValidator6" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                       <asp:TextBox runat="server" type="text" class="form-control" ID="txtstate"></asp:TextBox>

                   </div>


                   <div class="form-group" style="text-align: center">
                       <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ValidationGroup="driver" ShowSummary="False" DisplayMode="BulletList" Font-Bold="True" Font-Size="Large" HeaderText="All fields are mendatory" BorderStyle="Ridge" BackColor="#0000CC" />
                       <asp:Button runat="server" ID="btnsub" Text="SUBMIT" ValidationGroup="driver" class="btn-rounded btn-success" OnClick="btnsub_Click" />
                   </div>


                   <br />
                  
                   <center>
                   <div>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="state_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           
                           
<asp:BoundField DataField="state_id" HeaderText="state id" ReadOnly="True" SortExpression="state_id"  InsertVisible="False"/>
                           <asp:BoundField DataField="state_name" HeaderText="state name" SortExpression="state_name" />
                           <asp:BoundField DataField="c_name" HeaderText="country name" SortExpression="c_name" />
                           <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbl_state] WHERE [state_id] = @state_id" SelectCommand="SELECT tbl_state.state_id, tbl_state.state_name, tbl_country.c_name FROM tbl_state INNER JOIN tbl_country ON tbl_state.country_id = tbl_country.country_id">
                       <DeleteParameters>
                           <asp:Parameter Name="state_id" Type="Int32" />
                       </DeleteParameters>
                       <InsertParameters>
                           
                           <asp:Parameter Name="state_name" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           
                           <asp:Parameter Name="state_name" Type="String" />
                           <asp:Parameter Name="state_id" Type="Int32" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                    </div>
                       </center>
               </div>

           </div>
       </div>
   </div>
        </form>
</asp:Content>

