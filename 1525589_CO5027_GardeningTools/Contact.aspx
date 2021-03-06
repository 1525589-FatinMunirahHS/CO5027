﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Gardening_Tools.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="_1525589_CO5027_GardeningTools.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Contact </h2>
	<p> Bloomimg Meadow has retail shop too which opens everyday but not on 
	saturday:</p>
	
     <table class ="timetable">
			<tr>
				<th>Day</th>
				<th>Time</th>
			</tr>
			
			<tr>
				<td>Monday - Thrusday</td>
				<td>9:00am to 4:00pm</td>
			</tr>
			
			<tr>
				<td>Friday &amp; Saturday</td>
				<td>2:30pm to 9:30pm</td>
			</tr>
			
		   </table>
      
		
     
		<p> The Branches are all around asia, which is in Indonesia, Malaysia, 
		Singapore. Its main branch is at Brunei Darussalam</p>
		<ul>
			<li>Blooming Meadow</li>
            <li>Jerudong</li>
			<li>Brunei Darussalam</li>
			<li>BS 111</li>
		</ul>
		<p>To contact our company you can dial: </p>
		<ul>
			<li>Tel: 2911111</li>
			<li>Fax: 8711111</li>
			<li>Mobile: 8911111</li>
		</ul>
		<p class="italic">you can also email us:</p>
		<a href="mailto:Enquiry@BloomingMeadows.com"> <p>Enquiry@BloomingMeadow.com</p></a>
   
     <div id="map">
	 <script>
	      var map;
	      function initMap() {
                           var uluru = { lat: 4.965387, lng: 114.8489734 };
              var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 15,
                  center: uluru
              });
              var marker = new google.maps.Marker({
                  position: uluru,
                  map: map
              });

	      }
	    </script>
	    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCkGQHPZ7Qtc8r3gNWJYzPJ21gDYB2XKbo&callback=initMap"
	    async="async" defer="defer">     
	    </script>
         </div>
        <div id="email">
            <br />
        <asp:Label ID="LblName" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="TxtName" runat="server" Width="295px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required."></asp:RequiredFieldValidator>
            <br />
            <br />

        <asp:Label ID="LblEmail" runat="server" Text="Email:"></asp:Label>

        <asp:TextBox ID="TxtEmail" runat="server" Width="563px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFieldEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExprChkEMail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             <br />
             <br />

        <asp:Label ID="LblSubject" runat="server" Text="Subject"></asp:Label>    
        <asp:TextBox ID="TxtSubject" runat="server" Width="552px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtSubject" ErrorMessage="Subject is required."></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="LblMsg" runat="server" Text="Message"></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMsg" ErrorMessage="Message is required."></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="TxtMsg" runat="server" Height="248px" Width="745px"></asp:TextBox>
        <br />
        <asp:Button ID="btnSendEmail" runat="server"  OnClick="btnSendEmail_Click" Text="Send"  />
        <br />
            
        <asp:Literal ID="LitResult" runat="server"></asp:Literal>
        </div>
        
                 
     </asp:Content>


