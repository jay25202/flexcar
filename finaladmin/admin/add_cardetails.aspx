<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="add_cardetails.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form class="floating-labels m-t-40" runat="server">
   
       
       <div class="row">
                    <div class="col-12">
                        
                       <div class="card">
                            <div class="card-body">

                                <h4 class="card-title">Enter car Company details</h4>


                                &nbsp;

                                &nbsp;
                                    
                                    <div class="form-group has-success m-b-40">

                                         <asp:textbox runat="server" type="text" class="form-control" id="txt_carcomp"></asp:textbox>
                                        <label for="input7">Car Company</label>
                                    </div>
                                    <div class="text-center">
                                    <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                           <asp:RequiredFieldValidator ControlToValidate="txt_carcomp" errormessage="Enter field" forecolor="red" ID="RequiredFieldValidator19" runat="server" Display="Dynamic" ValidationGroup="car" Font-Size=""></asp:RequiredFieldValidator>

                                        <asp:button runat="server" text="SUBMIT" ID="btn_subcar_company" ValidationGroup="car" class="btn-rounded btn-success" OnClick="btn_subcar_company_Click" />
                                    </div>
                                    <div class="form-group has-success m-b-40">
                                        <asp:Label ID="lblcarcompany" runat="server" Text=""></asp:Label>
                                    </div>

                               
                            </div>
                        </div>
                    </div>
                </div>

       
       <div class="row">
                    <div class="col-12">
                        
                       <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Enter car name details</h4>
                                &nbsp;
                                &nbsp;
                                <%--<h6 class="card-subtitle">Just add <code>floating-labels</code> class to the form and <code>has-warning, has-success, has-danger &amp; has-error</code> for various inputs. For input with icon add <code>has-feedback</code> class.</h6>--%>
                                
                                  
                                    <div class="form-group has-warning m-b-40">
                                       
                                        <asp:DropDownList ID="ddl_car_company" runat="server" class="form-control" DataSourceID="SqlDataSource_carcom" DataTextField="car_company_name" DataValueField="car_company_id">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource_carcom" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_company]"></asp:SqlDataSource>
                                        <label for="input8">Car Company  </label>
                                        <br />

                                    </div>

                                    <div class="form-group has-success m-b-40">

                                         <asp:textbox runat="server" type="text" class="form-control" ValidationGroup="car2" id="txt_carname"></asp:textbox>
                                        <label for="input9">Car Name</label>
                                    </div>
                                    <div class="text-center">
                                    <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                              <asp:RequiredFieldValidator ControlToValidate="txt_carname" errormessage="Enter field" forecolor="red" ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ValidationGroup="car2" Font-Size=""></asp:RequiredFieldValidator>

                                        <asp:button runat="server" text="SUBMIT" ValidationGroup="car2" ID="btn_subcar_name" class="btn-rounded btn-success" OnClick="btn_subcar_name_Click" />
                                    </div>
                                    
                                    <div class="form-group has-success m-b-40">
                                        <asp:Label ID="lblcarname" runat="server" Text=""></asp:Label>
                                    </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
    
                
         <div class="row">
                    <div class="col-12">
                        
                       <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Enter car Colour Details</h4>
                                &nbsp;
                                &nbsp;
                                <%--<h6 class="card-subtitle">Just add <code>floating-labels</code> class to the form and <code>has-warning, has-success, has-danger &amp; has-error</code> for various inputs. For input with icon add <code>has-feedback</code> class.</h6>--%>
                               
                                  
                                    
                                    <div class="form-group has-success m-b-40">
                                        
                                         <asp:textbox runat="server" type="text" class="form-control" id="txt_carcolour"></asp:textbox>
                                        <label for="input8">Car Colour</label>
                                    </div>
                                    <div class="text-center">
                                          <asp:RequiredFieldValidator ControlToValidate="txt_carcolour" errormessage="Enter field" forecolor="red" ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ValidationGroup="car3" Font-Size=""></asp:RequiredFieldValidator>
                                        <asp:button runat="server" text="SUBMIT" ID="btn_subcar_colour" class="btn-rounded btn-success" ValidationGroup="car3" OnClick="btn_subcar_colour_Click" />
                                    </div>
                                    <div class="form-group has-success m-b-40">
                                        <asp:Label ID="lblcarcolour" runat="server" Text=""></asp:Label>
                                    </div>

                               
                            </div>
                        </div>
                    </div>
                </div>

        <div class="row">
                    <div class="col-12">                 
                       <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Enter car type Details</h4>
                                &nbsp;
                                &nbsp;
                                <%--<h6 class="card-subtitle">Just add <code>floating-labels</code> class to the form and <code>has-warning, has-success, has-danger &amp; has-error</code> for various inputs. For input with icon add <code>has-feedback</code> class.</h6>--%>
                               
                                  
                                    
                                    <div class="form-group has-success m-b-40">
                                        
                                         <asp:textbox runat="server" type="text" class="form-control" id="txt_cartype"></asp:textbox>
                                        <label for="input8">Car type</label>
                                    </div>
                                    <div class="text-center">
                                    <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                         <asp:RequiredFieldValidator ControlToValidate="txt_cartype" errormessage="Enter field" forecolor="red" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ValidationGroup="car4" Font-Size=""></asp:RequiredFieldValidator>
                                       
                                        <asp:button runat="server" ValidationGroup="car4" text="SUBMIT" ID="btn_subcar_type" class="btn-rounded btn-success" OnClick="btn_subcar_type_Click" />
                                    </div>
                                    <div class="form-group has-success m-b-40">
                                        <asp:Label ID="lblcartype" runat="server" Text=""></asp:Label>
                                    </div>

                               
                            </div>
                        </div>
                    </div>
                </div>
    
               <div class="row">
                    <div class="col-12">                 
                       <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Enter car fuel Details</h4>
                                &nbsp;
                                &nbsp;
                                <%--<h6 class="card-subtitle">Just add <code>floating-labels</code> class to the form and <code>has-warning, has-success, has-danger &amp; has-error</code> for various inputs. For input with icon add <code>has-feedback</code> class.</h6>--%>
                               
                                  
                                    
                                    <div class="form-group has-success m-b-40">
                                        
                                         <asp:textbox runat="server" type="text" class="form-control" id="txt_carfuel"></asp:textbox>
                                        <label for="input8">Car fuel</label>
                                    </div>
                                    <div class="text-center">
                                    <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                             <asp:RequiredFieldValidator ControlToValidate="txt_carfuel" errormessage="Enter field" forecolor="red" ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ValidationGroup="car5" Font-Size=""></asp:RequiredFieldValidator>
                                    
                                        <asp:button runat="server" text="SUBMIT" ID="btn_subcar_fuel" class="btn-rounded btn-success" ValidationGroup="car5" OnClick="btn_subcar_fuel_Click" />
                                    </div>
                                    <div class="form-group has-success m-b-40">
                                        <asp:Label ID="lblcarfuel" runat="server" Text=""></asp:Label>
                                    </div>

                               
                            </div>
                        </div>
                    </div>
                </div>

        </form>
</asp:Content>

