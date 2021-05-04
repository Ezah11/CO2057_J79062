<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CO5027_J79062.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Contact Us</h2>

<asp:panel runat="server" ID="pnlCompose">
        <asp:validationsummary runat="server" CssClass="errorMessages">
        </asp:validationsummary>
        <div>
            <asp:label id="lblEmail" runat="server" text="Email Address" associatedcontrolid="txtEmail">
            </asp:label>
            <asp:textbox id="txtEmail" runat="server" Width="280px"></asp:textbox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Please enter your email address" 
                ControlToValidate="txtEmail" CssClass="error">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ErrorMessage="Please check if you entered your email address correctly" 
                ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" CssClass="error">*</asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:label id="lblConfirmEmail" runat="server" text="Confirm Email" associatedcontrolid="txtConfirmEmail">
            </asp:label>
            <asp:textbox id="txtConfirmEmail" runat="server" Width="280px"></asp:textbox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Please check your confirmed email address" 
                ControlToValidate="txtConfirmEmail" ControlToCompare="txtEmail" CssClass="error">*</asp:CompareValidator>
        </div>
        <div>
            <asp:label id="lblSubject" runat="server" text="Subject" associatedcontrolid="txtSubject">
            </asp:label>
            <asp:textbox id="txtSubject" runat="server">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ErrorMessage="Please type a subject for the message" 
                ControlToValidate="txtSubject" CssClass="error">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:label id="lblBody" runat="server" text="Your Message" associatedcontrolid="txtBody">
            </asp:label>
            <asp:textbox id="txtBody" runat="server" textmode="MultiLine">
            </asp:textbox>
            *</div>

        <div>
            <asp:button id="btnContact" runat="server" text="Send" onclick="btnContact_Click"/>
            <br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </div>
    
    

    <div id="map">
        <h2>Our Location</h2>
        <div id="myMap" style='width: 40vw; height: 35vh;'></div>
        <script type='text/javascript'>
            function loadMapScenario() {
                var map = new Microsoft.Maps.Map(document.getElementById('myMap'), { credentials: 'v0uXFK1YUUhZunwFE7tfiGl9rT3a0EUOeVDi08VW5vNeGydAaELBk4agkgcr'});
                var pushpin = new Microsoft.Maps.Pushpin(new Microsoft.Maps.Location(4.885555, 114.931458), { color: 'purple' });
                map.entities.push(pushpin);
               
            }
        </script>
        <script type='text/javascript' src='https://www.bing.com/api/maps/mapcontrol?key=YourBingMapsKey&callback=loadMapScenario' async defer></script>
    </div>


</asp:panel>
</asp:Content>


