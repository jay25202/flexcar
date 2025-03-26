<%@ Page Title="" Language="C#"  MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Debug="true" Inherits="admin_aboutus" %>

<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat ="server" >
    <table class="nav-justified">
        <tr>
            <td colspan="2">
                <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn1" runat="server" Text="submit" OnClick="btn1_Click" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>

