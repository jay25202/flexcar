<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Callback.aspx.cs" Inherits="Callback" %>

<!DOCTYPE html>


<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                 <asp:Label ID="Label1" runat="server" Text="lblTxnID"></asp:Label>
                <h1 runat="server" id="h1Message"></h1>
                <p runat="server" id="pTxnId"></p>
                <p>Click here to go to home</p>
                <p><a class="btn btn-primary btn-lg" href="car_booking_done.aspx" role="button">Home</a></p>
            </div>
        </div>
    </form>
</body>

