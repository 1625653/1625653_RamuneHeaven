<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Ramune_Heaven.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

<div class="contactbox">

        <table>
         <tr>
         <td>
          
         <div id="contactsend">
          <h1 style="padding-bottom:5px;">Contact Us</h1>
         <form method="post" runat="server">
        
                    <asp:ValidationSummary ID="Sumarry" runat="server" />

                    <p>
                    <b>E-mail</b>
                    </p>
                    <p>
                    <asp:TextBox ID="txtEmail" names="Email" runat="server" Width="381px" Height="32px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator                
                        ID="ValidEmail" runat="server" ErrorMessage="RegularExpressionValidator" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="txtEmail" ForeColor="Red" Display="None">
                    </asp:RegularExpressionValidator>
                    </p>
                    <p>
                        &nbsp;</p>

                    <p>
                    <b>Subject</b></p>
                    <p>
                    &nbsp;<asp:TextBox ID="txtSubject" name="Subject" runat="server" Width="376px" Height="31px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqSubject" runat="server" ErrorMessage="Subject is required"  ControlToValidate="txtSubject" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        &nbsp;</p>

                    <p>
                    <b>Message</b></p>
                    <p>
                    &nbsp;<asp:TextBox ID="txtbody" Names="Messages" TextMode="MultiLine" runat="server" Width="372px" Height="114px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqTxt" runat="server" ErrorMessage="Please input your messages" ControlToValidate="txtSubject" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        &nbsp;</p>

                    <p><asp:Button ID="btnsend" runat="server" Text="Send Messages" OnClick="btnsendemail_Click" Width="197px" Height="39px" /></p>
                    
                    <p><asp:Literal ID="litResult" runat="server"></asp:Literal></p>         
        </form>
        </div>
        </td>
       </tr>


     <tr>
        <td>   
         <div id="contactmap">
           <h1 style="padding-bottom:10px;">Shop Location</h1>
          <div id="map" style="width:930px; height:350px;">
          <script src="Map.js"></script>
          <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAph_kge8TwX1OSFhG_v5HM7iUjVW6dYX0&callback=initMap"></script>
        </div>
        </div>
       </td>
      </tr>

     <tr>
          <td>
              <table><tr><td>
              <br />
              <h1>Static Map Location</h1>

            <h2>Shop Address Location</h2>
            <b>Unit 14, 2nd Floor, The Airport Mall, Simpang 13-25, Kampung Jaya Setia, Berakas, Bandar Seri Begawan BB2713</b>
             <asp:Image ID="image"  style="border: 2px solid; width:930px; height:300px;" ImageUrl="Images/airportmall.jpg" runat="server" />

            </td></tr></table>
          </td>
      </tr>
          
    </table>

</div>

</asp:Content>
