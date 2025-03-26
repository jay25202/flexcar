<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="cars.aspx.cs" Inherits="admin_cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <%--<div class="row">--%>
        <%--<div class="row el-element-overlay">--%>
        <div class="card">
            <div class="card-body">
                <center>
                             <div class="form-group has-warning has-feedback m-b-40">
                                          <label for="input6">State</label>
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                         <ContentTemplate>
                                            <asp:DropDownList ID="ddlstate" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource_state" DataTextField="state_name" DataValueField="state_id"></asp:DropDownList>
                                             <asp:SqlDataSource ID="SqlDataSource_state" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_state] WHERE ([country_id] = @country_id)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="1" Name="country_id" Type="Int32" />
                                              </SelectParameters>
                                             </asp:SqlDataSource>
                                           </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                     
                                    <div class="form-group has-warning has-feedback m-b-40">
                                         <label for="input7">City</label>
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                         <ContentTemplate>
                                                <asp:DropDownList ID="ddlcity" runat="server" class="form-control" DataSourceID="SqlDataSource_city" DataTextField="city_name" DataValueField="city_id" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                                 <asp:SqlDataSource ID="SqlDataSource_city" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_city] WHERE ([state_id] = @state_id)">
                                                    <SelectParameters>
                                                      <asp:ControlParameter ControlID="ddlstate" Name="state_id" PropertyName="SelectedValue" Type="Int32" />
                                                     </SelectParameters>
                                                 </asp:SqlDataSource>
                                          </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
            </center>
            </div>
        </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <div class="row el-element-overlay">
                            <div class="col-md-12">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <h4 class="card-title"></h4>
                        <h6 class="card-subtitle m-b-20 text-muted"><code></code></h6>
                        </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="el-card-item">
                                <div class="el-card-avatar el-overlay-1">
                                    <img src='../car_images/<%# Eval("car_image") %>' alt="user" />
                                    <div class="el-overlay">
                                        <ul class="el-info">

                                            <li><a class="btn default btn-outline image-popup-vertical-fit" href='car_update.aspx?id=<%# Eval("car_id") %>'><i class="ti-pencil-alt"></i><%--Update--%></a></li>
                                            <li><a class="btn default btn-outline image-popup-vertical-fit" href='car_details.aspx?id=<%# Eval("car_id") %>'><i class="icon-magnifier"></i></a></li>
                                            <li><a class="btn default btn-outline image-popup-vertical-fit" href='car_delete.aspx?id=<%# Eval("car_id") %>'><i class="mdi mdi-delete"></i><%--Delete--%></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="el-card-content">
                                    <%--<h6><asp:Label ID="Label1" runat="server" Text='<%# Eval("registration_number") %>'></asp:Label></h6><br/>--%>
                                    <h6>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("car_name") %>'></asp:Label></h6>
                                    <br />
                                    <h6>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("car_company_name") %>'></asp:Label></h6>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                </div>
                    </FooterTemplate>

                </asp:Repeater>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>
    </form>
</asp:Content>

