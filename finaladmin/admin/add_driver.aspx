<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="add_driver.aspx.cs" Inherits="admin_Default" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


<script type="text/javascript">
    function ValidateDOB(sender, args) {
        //Get the date from the TextBox.
        var dateString = document.getElementById(sender.controltovalidate).value;
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
 
        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString)) {
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            sender.innerHTML = "Eligibility 18 years ONLY."
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
                args.IsValid = false;
                return;
            }
 
        //    if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {
 
        //        //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018.
        //        if (dtCurrent.getMonth() < dtDOB.getMonth()) {
        //            args.IsValid = false;
        //            return;
        //        }
        //        if (dtCurrent.getMonth() == dtDOB.getMonth()) {
        //            //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018.
        //            if (dtCurrent.getDate() < dtDOB.getDate()) {
        //                args.IsValid = false;
        //                return;
        //            }
        //        }
        //    }
        //    args.IsValid = true;
        //} else {
            //sender.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
            //args.IsValid = false;
        }
    }
</script>

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row">
            <div class="col-12">

                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Enter driver details</h4>
                     
                        <div class="form-group has-warning m-b-40">
                            <label for="input8">First name</label>
                            <asp:RequiredFieldValidator ControlToValidate="txtfname" errormessage="Enter First name" forecolor="red" ID="RequiredFieldValidator6" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" type="text" class="form-control" ID="txtfname"></asp:TextBox>

                        </div>
                        <div class="form-group has-success m-b-40">
                            <label for="input9">Last name</label>
                            <asp:RequiredFieldValidator ControlToValidate="txtlname" errormessage="Enter Last name" forecolor="red" ID="RequiredFieldValidator1" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" type="text" class="form-control" ID="txtlname"></asp:TextBox>

                        </div>

                        <div class="form-group has-success m-b-40">
                            <label for="input7">Phone Number</label>
                           <asp:RequiredFieldValidator ControlToValidate="txtphone" errormessage="Enter phone number" forecolor="red" ID="RequiredFieldValidator2" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server"  class="form-control" ID="txtphone" TextMode="Phone"></asp:TextBox>

                        </div>

                        <div class="form-group has-success m-b-40">
                            <label for="input5">Email</label>
                              <asp:RequiredFieldValidator ControlToValidate="txtmail" errormessage="Enter phone number" forecolor="red" ID="RequiredFieldValidator3" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" type="email" class="form-control" ID="txtmail"></asp:TextBox>

                        </div>

                        <div class="form-group has-success m-b-40">
                            <label for="input6">Password</label>
                                 <asp:RequiredFieldValidator ControlToValidate="txtpass" errormessage="Enter password" forecolor="red" ID="RequiredFieldValidator4" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" type="text" class="form-control" ID="txtpass" TextMode="Password"></asp:TextBox>

                        </div>

                        <div class="form-group has-success m-b-40">
                            <asp:RadioButtonList ID="rbgen" runat="server" OnSelectedIndexChanged="rbgen_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">male</asp:ListItem>
                                <asp:ListItem>female</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <div class="form-group has-error has-danger m-b-40">
                            &nbsp;
                                          <label for="input10">Birth date</label>
                                 <asp:RequiredFieldValidator ControlToValidate="txtbdate" errormessage="Enter birthdate" forecolor="red" ID="RequiredFieldValidator5" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                         
                            <asp:TextBox ID="txtbdate" runat="server" class="form-control" type="text" Width="1187px" OnTextChanged="txtbdate_TextChanged"></asp:TextBox>
                            <br/>
                            <asp:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd/MM/yyyy" TargetControlID="txtbdate"  ></asp:CalendarExtender>
                     
<br />
                                    <div class="form-group has-warning has-feedback m-b-40">
                                        <label for="input11">age</label>
                                           <asp:textbox runat="server" type="text" class="form-control" id="txtage" ReadOnly="True"> </asp:textbox>
                                        
                                    </div>

                                    <div class="form-group has-warning has-feedback m-b-40">
                                         <label for="input12">License number</label>
                                             <asp:RequiredFieldValidator ControlToValidate="txtlicense_no" errormessage="Enter License number" forecolor="red" ID="RequiredFieldValidator8" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                           <asp:textbox runat="server" type="text" class="form-control" id="txtlicense_no" > </asp:textbox>
                                       
                                    </div>
                                    <div class="form-group has-success has-feedback m-b-40">
                                         &nbsp;
                                         <label for="input13">License expiry date </label>
                                             <asp:RequiredFieldValidator ControlToValidate="txtlicense_ex_no" errormessage="Enter License expiry date" forecolor="red" ID="RequiredFieldValidator7" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                          <asp:textbox runat="server" type="text" class="form-control" id="txtlicense_ex_no" > </asp:textbox>

                                        <asp:CalendarExtender runat="server" Format="dd/MM/yyyy" TargetControlID="txtlicense_ex_no" ID="txtlicense_ex_no_CalendarExtender"></asp:CalendarExtender>
                                    </div>
                                    <div class="form-group has-danger has-error has-feedback m-b-5">
                                         <label for="input14">Adharcard no</label>
                                             <asp:RequiredFieldValidator ControlToValidate="txtadharno" errormessage="Enter Aadhar number" forecolor="red" ID="RequiredFieldValidator9" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                            <asp:textbox runat="server" type="text" class="form-control" id="txtadharno" > </asp:textbox>
                                       
                                    </div>
                                     &nbsp;

                                

                                    <div class="form-group has-warning has-feedback m-b-40">
                                          <label for="input6">State</label>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
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
                                         <label for="input7">city</label>
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                         <ContentTemplate>
                                                <asp:DropDownList ID="ddlcity" runat="server" class="form-control" DataSourceID="SqlDataSource_city" DataTextField="city_name" DataValueField="city_id"></asp:DropDownList>
                                                 <asp:SqlDataSource ID="SqlDataSource_city" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_city] WHERE ([state_id] = @state_id)">
                                                    <SelectParameters>
                                                      <asp:ControlParameter ControlID="ddlstate" Name="state_id" PropertyName="SelectedValue" Type="Int32" />
                                                     </SelectParameters>
                                                 </asp:SqlDataSource>
                                          </ContentTemplate>
                                        </asp:UpdatePanel>
                                       
                                    </div>
                                    
                                       <div class="form-group has-warning m-b-40">
                                              <label for="input10">Address</label>
                                                <asp:RequiredFieldValidator ControlToValidate="txtadd" errormessage="Enter Address" forecolor="red" ID="RequiredFieldValidator10" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                        <asp:textbox runat="server" type="text" class="form-control" id="txtadd" TextMode="MultiLine"></asp:textbox>
                                    </div>

                                    <div class="form-group has-danger has-error has-feedback m-b-5">
                                        <label>driver photo upload</label>
                                             <asp:RequiredFieldValidator ControlToValidate="FileUpload1" errormessage="Enter driver photor" forecolor="red" ID="RequiredFieldValidator11" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                      <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                 <asp:FileUpload ID="FileUpload1" runat="server" class="input-group-addon btn btn-default btn-file" />
                                       </div>
                                    </div> 
                            </div> </div> </div> </div> </div> 
                                        <div class="row">
                                            <div class="col-12">

                                                <div class="card">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Add Car</h4>

                                                        <div class="form-group has-warning m-b-40">
                                                            <label for="input10">Car company</label>
                                                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:DropDownList ID="ddl_car_company" runat="server" class="form-control" DataSourceID="SqlDataSource_carcom" DataTextField="car_company_name" DataValueField="car_company_id" AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSource_carcom" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_company]"></asp:SqlDataSource>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>


                                                        </div>


                                                        <div class="form-group has-success m-b-40">
                                                            <label for="input11">Car name</label>
                                                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:DropDownList ID="ddlcarname" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource_carname" DataTextField="car_name" DataValueField="car_name_id"></asp:DropDownList>

                                                                    <asp:SqlDataSource ID="SqlDataSource_carname" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_name] WHERE ([car_company_id] = @car_company_id)">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="ddl_car_company" Name="car_company_id" PropertyName="SelectedValue" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>

                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                        </div>

                                                        <div class="form-group has-error has-danger m-b-40">
                                                            <label for="input12">Car Model </label>
                                                            <asp:DropDownList ID="ddlcarmodel" runat="server" class="form-control" DataSourceID="SqlDataSource_model" DataTextField="car_model" DataValueField="car_model_id">
                                                            </asp:DropDownList>

                                                            <asp:SqlDataSource ID="SqlDataSource_model" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_model]"></asp:SqlDataSource>
                                                        </div>

                                                        <div class="form-group has-warning has-feedback m-b-40">
                                                            <label for="input13">Transmission Type</label>
                                                            <asp:DropDownList ID="ddltrans" runat="server" class="form-control">
                                                                <asp:ListItem>Manual Transmission</asp:ListItem>
                                                                <asp:ListItem>Automatic Transmission</asp:ListItem>
                                                            </asp:DropDownList>

                                                        </div>

                                                        <div class="form-group has-success has-feedback m-b-40">
                                                            <label for="input10">Car Rent </label>
                                                                 <asp:RequiredFieldValidator ControlToValidate="txtrent" errormessage="Enter Car rent" forecolor="red" ID="RequiredFieldValidator12" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                        
                                                            <asp:TextBox runat="server" type="number" min="1000" class="form-control" ID="txtrent"></asp:TextBox>

                                                        </div>


                                                        <div class="form-group has-success has-feedback m-b-40">
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
                                             <asp:RequiredFieldValidator ControlToValidate="txtadharno" errormessage="Enter Fual Efficiency" forecolor="red" ID="RequiredFieldValidator13" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                        
                                        <asp:TextBox runat="server" type="number" class="form-control" ID="txtfual_efficiency"></asp:TextBox>

                                    </div>

                                                        <div class="form-group has-success has-feedback m-b-40">
                                                            <label for="input14">Car Colour</label>
                                                            <asp:DropDownList ID="ddlcolor" runat="server" class="form-control" DataSourceID="SqlDataSource_color" DataTextField="color" DataValueField="color_id"></asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource_color" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_car_color]"></asp:SqlDataSource>

                                                        </div>

                                                        <div class="form-group has-error has-danger m-b-40">
                                                            <label for="input12">Car register number</label>
                                                                 <asp:RequiredFieldValidator ControlToValidate="txtcar_reg_no" errormessage="Enter car register number" forecolor="red" ID="RequiredFieldValidator15" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                        
                                                            <asp:TextBox runat="server" type="text" class="form-control" ID="txtcar_reg_no"> </asp:TextBox>

                                                        </div>

                                                        <div class="form-group has-warning has-feedback m-b-40">
                                                            <label for="input13">owner name</label>
                                                                 <asp:RequiredFieldValidator ControlToValidate="txtowner_name" errormessage="Enter owner name" forecolor="red" ID="RequiredFieldValidator16" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                        
                                                            <asp:TextBox runat="server" type="text" class="form-control" ID="txtowner_name"></asp:TextBox>

                                                        </div>

                                                        <div class="form-group has-success has-feedback m-b-40">
                                                            <label for="input14">Car Menufacture year</label>
                                                                 <asp:RequiredFieldValidator ControlToValidate="txtmenufacture_year" errormessage="Enter Menufacture year " forecolor="red" ID="RequiredFieldValidator17" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                        
                                                            <asp:TextBox runat="server" type="number" class="form-control" ID="txtmenufacture_year"></asp:TextBox>

                                                        </div>

                                                        <div class="form-group">
                                                            <label>Car photo upload</label>
                                                              <asp:RequiredFieldValidator ControlToValidate="FileUpload2" errormessage="Enter car photo" forecolor="red" ID="RequiredFieldValidator18" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                        
                                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                <asp:FileUpload ID="FileUpload2" runat="server" class="input-group-addon btn btn-default btn-file" />
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label>Other 5 photos</label>
                                                            <asp:RequiredFieldValidator ControlToValidate="fileuploadimages" errormessage="Enter Other photos" forecolor="red" ID="RequiredFieldValidator19" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                        
                                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                          <asp:FileUpload AllowMultiple="true" ID="fileuploadimages" runat="server" class="input-group-addon btn btn-default btn-file"/>
                                             
                                                    </div>
                                            </div>

                                                            <div class="form-group" style="text-align: center">
                                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ValidationGroup="driver" ShowSummary="False" DisplayMode="BulletList" Font-Bold="True" Font-Size="Large" HeaderText="All fields are mendatory" BorderStyle="Ridge" BackColor="#0000CC" />
                                                                <asp:Button runat="server" ID="btnsub" Text="SUBMIT" ValidationGroup="driver" class="btn-rounded btn-success" OnClick="btnsub_Click" />
                                                            </div>

                                                            <div class="form-group">
                                                                <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <%--</div>--%>
 
     </form>

</asp:Content>

