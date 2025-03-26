<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="car_update.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div class="row">
                    <div class="col-12">
                    
                       <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Add Car</h4>
                               <br />
                                <br />
                                    <div class="form-group has-warning m-b-40">
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <label for="input10">Car company</label>
                                        <asp:DropDownList ID="ddl_car_company" runat="server" class="form-control" DataSourceID="SqlDataSource_carcom" DataTextField="car_company_name" DataValueField="car_company_id" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource_carcom" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_company]"></asp:SqlDataSource>
                                        <%--<asp:textbox runat="server" type="text" class="form-control" id="carcompany"></asp:textbox>--%>
                                         </ContentTemplate>
                                        </asp:UpdatePanel>
                                                
 
                                    </div>


                                    <div class="form-group has-success m-b-40">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <label for="input11">Car name</label>
                                                <asp:DropDownList ID="ddlcarname" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource_carname" DataTextField="car_name" DataValueField="car_name_id"></asp:DropDownList>

                                                <asp:SqlDataSource ID="SqlDataSource_carname" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_name] WHERE ([car_company_id] = @car_company_id)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddl_car_company" Name="car_company_id" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>

                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                         <%--<asp:textbox runat="server" type="text" class="form-control" id="carname"></asp:textbox>--%>
                                        
                                    </div>

                                    <div class="form-group has-error has-danger m-b-40">
                                         <label for="input12">Car Model </label>
                                           <asp:DropDownList ID="ddlcarmodel" runat="server" class="form-control" DataSourceID="SqlDataSource_model" DataTextField="car_model" DataValueField="car_model_id">
                                        </asp:DropDownList>

                                           <asp:SqlDataSource ID="SqlDataSource_model" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_model]"></asp:SqlDataSource>

                                        <%--<asp:textbox runat="server" type="text" class="form-control" id="carmodel" > </asp:textbox>--%>
                                    
                                    </div>
                                  
                                    <div class="form-group has-warning has-feedback m-b-40">
                                        <label for="input13">Transmission Type</label>
                                        <asp:DropDownList ID="ddltrans" runat="server" class="form-control">
                                             <asp:ListItem >Manual Transmission</asp:ListItem>
                                             <asp:ListItem >Automatic Transmission</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </div>


                                    <div class="form-group has-success has-feedback m-b-40">
                                           <label for="input10">Car Rent </label>
                                        <asp:textbox runat="server" type="number" class="form-control" id="txtrent"></asp:textbox>
                                      
                                    </div>

                                    <div class="form-group has-success has-feedback m-b-40">
                                        <%--<input type="text" class="form-control form-control-success" id="input14"><span class="bar"></span>--%>
                                        <label for="input14">Fuel Type </label>   
                                        <asp:DropDownList ID="ddlfuel" runat="server" class="form-control" DataSourceID="SqlDataSource_fuel" DataTextField="car_fuel_type" DataValueField="car_fuel_id">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource_fuel" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Tbl_car_fuel_type]"></asp:SqlDataSource>
                                        
                                    </div>


                                     <div class="form-group has-danger has-error has-feedback m-b-5">
                                         <label for="input15">Car Type </label>
                                           <asp:DropDownList ID="ddlcartype" runat="server" class="form-control" DataSourceID="SqlDataSource_cartype" DataTextField="car_type" DataValueField="car_type_id">
                                        </asp:DropDownList>
                                           <asp:SqlDataSource ID="SqlDataSource_cartype" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_type]"></asp:SqlDataSource>
                                            
                                    </div>
                                   &nbsp;

                                    <div class="form-group has-warning has-feedback m-b-40">
                                        <label for="input13">Fual Efficiency</label>
                                       <asp:textbox runat="server" type="number" class="form-control" id="txtfual_efficiency"></asp:textbox>
                                        
                                    </div>
             
                                       <div class="form-group has-success has-feedback m-b-40">
                                           <label for="input14">Car Colour</label>
                                        <%--<asp:textbox runat="server" type="text" class="form-control" id="car_color"></asp:textbox>--%>
                                         <asp:DropDownList ID="ddlcolor" runat="server" class="form-control" DataSourceID="SqlDataSource_color" DataTextField="color" DataValueField="color_id"></asp:DropDownList>
                                           <asp:SqlDataSource ID="SqlDataSource_color" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_color]"></asp:SqlDataSource>
                                        
                                    </div>

                                     <div class="form-group has-error has-danger m-b-40">
                                         <label for="input12">Car register number</label>
                                     <asp:textbox runat="server" type="text" class="form-control" id="txtcar_reg_no" > </asp:textbox>
                                     
                                    </div>

                                      <div class="form-group has-warning has-feedback m-b-40">
                                           <label for="input13">owner name</label>
                                       <asp:textbox runat="server" type="text" class="form-control" id="txtowner_name"></asp:textbox>
                                       
                                    </div>

                                     <div class="form-group has-success has-feedback m-b-40">
                                          <label for="input14">Car Menufacture year</label>
                                        <asp:textbox runat="server" type="number" class="form-control" id="txtmenufacture_year"></asp:textbox>
                                       
                                    </div>

                                  <div class="form-group">
                                        <label>Car photo upload</label>
                                   <%--     <div class="form-control" data-trigger="fileinput">
                                            <i class="glyphicon glyphicon-file fileinput-exists"></i> 
                                            <span class="fileinput-filename"></span>

                                        </div>--%>
                                      <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                             <%--<span class="input-group-addon btn btn-default btn-file"> 
                                                 <span class="fileinput-new">Select file</span> 
                                                 <span class="fileinput-exists">Change</span>
                                            </span>--%>
                                            <%--<input type="hidden">--%>
                                            <%--<input type="file" name="..."> </span> <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> </div>--%>
                                                 <asp:FileUpload ID="FileUpload1" runat="server" class="input-group-addon btn btn-default btn-file" />
                                       </div>
                                   

                                     
                                    <div  class="form-group">
                                        <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
                                    </div>
                               
                            </div>
                        </div>
                    </div>
                </div>


</div>
 <div  class="form-group">
                                    <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                        <asp:button runat="server" id="btnsub" text="SUBMIT" class="form-control" OnClick="btnsub_Click" />
                                    </div>
 </form>
</asp:Content>

