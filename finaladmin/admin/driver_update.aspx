<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="driver_update.aspx.cs" Inherits="admin_driver_update" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">.

     <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row">
                    <div class="col-12">
                        
                       <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Enter driver details</h4>
                                <br />
                                <br />
                                <%--<h6 class="card-subtitle">Just add <code>floating-labels</code> class to the form and <code>has-warning, has-success, has-danger &amp; has-error</code> for various inputs. For input with icon add <code>has-feedback</code> class.</h6>--%>
                                
                                   <%-- <div class="form-group m-b-40">
                                        <input type="text" class="form-control input-lg" id="input8"><span class="bar"></span>
                                        <label for="input8">Large Input</label>
                                    </div>
                                    <div class="form-group m-b-40">
                                        <input type="text" class="form-control input-sm" id="input9"><span class="bar"></span>
                                        <label for="input9">Small Input</label>
                                    </div>--%>
                                    <div class="form-group has-warning m-b-40">
                                        <label for="input8">First name</label>
                                        <%--<input type="text" class="form-control" id="input10"><span class="bar"></span>--%>
                                        <asp:textbox runat="server" type="text" class="form-control" id="txtfname"></asp:textbox>
                                        
                                    </div>
                                    <div class="form-group has-success m-b-40">
                                        <label for="input9">Last name</label>
                                        <%--<input type="text" class="form-control" id="input11"><span class="bar"></span>--%>
                                         <asp:textbox runat="server" type="text" class="form-control" id="txtlname"></asp:textbox>
                                        
                                    </div>

                                    <div class="form-group has-success m-b-40">
                                        <label for="input7">Phone Number</label>
                                        <%--<input type="text" class="form-control" id="input11"><span class="bar"></span>--%>
                                         <asp:textbox runat="server" type="numeric" class="form-control" id="txtphone" TextMode="Phone"></asp:textbox>
                                        
                                    </div>

                                     <div class="form-group has-success m-b-40">
                                         <label for="input5">Email</label>
                                        <%--<input type="text" class="form-control" id="input11"><span class="bar"></span>--%>
                                         <asp:textbox runat="server" type="text" class="form-control" id="txtmail"></asp:textbox>
                                        
                                    </div>

                                     <div class="form-group has-success m-b-40">
                                          <label for="input6">Password</label>
                                        <%--<input type="text" class="form-control" id="input11"><span class="bar"></span>--%>
                                         <asp:textbox runat="server" type="text" class="form-control" id="txtpass" TextMode="Password"></asp:textbox>
                                       
                                    </div>

                                    <div class="form-group has-success m-b-40">
                                        <asp:RadioButtonList ID="rbgen" runat="server"  RepeatDirection="Horizontal">
                                            <asp:ListItem Selected="True">male</asp:ListItem>
                                            <asp:ListItem>female</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>

                                    <div class="form-group has-error has-danger m-b-40">
                                        &nbsp;
                                        <label for="input10">Birth date</label>
                                        <%--<input type="text" class="form-control" id="bdate"><span class="bar"></span>--%>
                                        <asp:textbox runat="server" type="text" class="form-control" id="txtbdate" OnTextChanged="txtbdate_TextChanged"> </asp:textbox>
                                       <asp:CalendarExtender runat="server"  TargetControlID="txtbdate" ID="txtbdate_CalendarExtender"></asp:CalendarExtender>
                                    </div>

                                    <div class="form-group has-warning has-feedback m-b-40">
                                         <label for="input11">age</label>
                                           <asp:textbox runat="server" type="text" class="form-control" id="txtage" ReadOnly="True"> </asp:textbox>
                                       
                                    </div>

                                    <div class="form-group has-warning has-feedback m-b-40">
                                        <label for="input12">License number</label>
                                        <%--<input type="text" class="form-control form-control-warning" id="input13"><span class="bar"></span>--%>
                                           <asp:textbox runat="server" type="text" class="form-control" id="txtlicense_no" > </asp:textbox>
                                        
                                    </div>
                                    <div class="form-group has-success has-feedback m-b-40">
                                        <label for="input13">License expiry date </label>
                                        <%--<input type="text" class="form-control form-control-success" id="input14"><span class="bar"></span>--%>
                                         &nbsp;
                                          <asp:textbox runat="server" type="text" class="form-control" id="txtlicense_ex_no"> </asp:textbox>
                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtlicense_ex_no"></asp:CalendarExtender>
                                    </div>
                                    <div class="form-group has-danger has-error has-feedback m-b-5">
                                        <label for="input14">Adharcard no</label>
                                        <%--<input type="text" class="form-control form-control-danger" id="input15"><span class="bar"></span>--%>
                                            <asp:textbox runat="server" type="text" class="form-control" id="txtadharno" > </asp:textbox>
                                        
                                    </div>
                                     

                                    <div class="form-group has-warning has-feedback m-b-40">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                         <ContentTemplate>
                                              <label for="input6">State</label>
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
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                         <ContentTemplate>
                                             <label for="input7">city</label>
                                                <asp:DropDownList ID="ddlcity" runat="server" class="form-control" DataSourceID="SqlDataSource_city" DataTextField="city_name" DataValueField="city_id"></asp:DropDownList>
                                                 <asp:SqlDataSource ID="SqlDataSource_city" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_city] WHERE ([state_id] = @state_id)">
                                                    <SelectParameters>
                                                      <asp:ControlParameter ControlID="ddlstate" Name="state_id" PropertyName="SelectedValue" Type="Int32" />
                                                     </SelectParameters>
                                                 </asp:SqlDataSource>
                                          </ContentTemplate>
                                        </asp:UpdatePanel>
                                        
                                    </div>
                                     &nbsp;
                                

                                       <div class="form-group has-warning m-b-40">
                                           <label for="input10">Address</label>
                                        <%--<input type="text" class="form-control" id="input10"><span class="bar"></span>--%>
                                        <asp:textbox runat="server" type="text" class="form-control" id="txtadd" TextMode="MultiLine"></asp:textbox>
                                           <%--<textarea id="txtadd" name="txtadd" cols="20" rows="2" class="form-control"></textarea>--%>
                                          
                                        
                                    </div>
                                     <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                             <%--<span class="input-group-addon btn btn-default btn-file"> 
                                                 <span class="fileinput-new">Select file</span> 
                                                 <span class="fileinput-exists">Change</span>
                                            </span>--%>
                                            <%--<input type="hidden">--%>
                                            <%--<input type="file" name="..."> </span> <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> </div>--%>
                                                 <asp:FileUpload ID="FileUpload1" runat="server" class="input-group-addon btn btn-default btn-file" />
                                       </div>

                                    <div>
                                    <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                        <asp:button runat="server" text="SUBMIT" ID="btnsubmit" class="form-control" OnClick="btnsubmit_Click" />
                                    </div>

                                    <div class="form-group has-danger has-error has-feedback m-b-5">
                                        <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
                                    </div>

                               
                            </div>
                        </div>
                    </div>
                </div>
   
     </form>


</asp:Content>

