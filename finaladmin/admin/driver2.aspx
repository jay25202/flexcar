<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="driver2.aspx.cs" Inherits="admin_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                                                <asp:DropDownList ID="ddlcity" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource_city" DataTextField="city_name" DataValueField="city_id" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged"></asp:DropDownList>
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
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
        <div class="container-fluid">
            <div class="row">
                </HeaderTemplate>
                            <ItemTemplate>
                                <!-- .col -->
                                <div class="col-md-6 col-lg-6 col-xlg-4">
                                    <div class="card card-body">
                                        <div class="row">

                                            <div class="col-md-4 col-lg-3 text-center">
                                                <a href='driversdetails.aspx?id=<%# Eval("driver_id") %>'>
                                                    <img src='../driver_image/<%# Eval("pic") %>' alt="user" class="img-circle img-responsive"></a>
                                            </div>
                                            <div class="col-md-8 col-lg-9">
                                                <h3 class="box-title m-b-0">
                                                    <%--Johnathan Doe--%>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                                                </h3>

                                                <address>
                                                    <%--795 Folsom Ave, Suite 600 San Francisco, CADGE 94107--%>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                                    <br>
                                                    <br>
                                                    <abbr title="Phone">P:</abbr>
                                                    <%--(123) 456-7890--%>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("phone_number") %>'></asp:Label>
                                                </address>
                                                <div>
                                                    <a class="btn default btn-outline image-popup-vertical-fit" href='driver_update.aspx?id=<%# Eval("driver_id") %>'><i class="ti-pencil-alt"></i><%--Update--%></a>
                                                    &nbsp;    <a class="btn default btn-outline image-popup-vertical-fit" href='driversdetails.aspx?id=<%# Eval("driver_id") %>'><i class="icon-magnifier"></i></a>
                                                    &nbsp;    <a class="btn default btn-outline image-popup-vertical-fit" href='driver_delete.aspx?id=<%# Eval("driver_id") %>'><i class="mdi mdi-delete"></i><%--Delete--%></a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.col -->
                            </ItemTemplate>
              <FooterTemplate>          
            </div>

            <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_driver]"></asp:SqlDataSource>--%>
        </div>
                  </FooterTemplate>
    </asp:Repeater>
                    </ContentTemplate>
                </asp:UpdatePanel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

    </form>
</asp:Content>

