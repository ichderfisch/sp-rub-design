<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceholderAdditionalPageHead" runat="server">
	<PublishingWebControls:EditModePanel runat="server">
        <%-- Styles for edit mode only--%>
        <SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
            runat="server"/>
    </PublishingWebControls:EditModePanel>

	<%-- Hide Current Navigation --%>
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/_catalogs/masterpage/rub/css/200-ohne-navigation.css %>" runat="server" after="SharepointCssFile"/>
</asp:Content>


<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	
	<div class="container">	
		<div class="row">
			<div class="grid-3">
				<%-- Spalte: Seiteninhalt --%>
				<PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" runat="server"></PublishingWebControls:RichHtmlField>
				<WebPartPages:WebPartZone id="g_3A6479B913144DFAB55A8D099DE7CBED" runat="server" title="Zone 1"></WebPartPages:WebPartZone>
			</div>
			<div class="grid-3">
				<%-- Spalte: Seiteninhalt 2 --%>
				<PublishingWebControls:RichHtmlField FieldName="Seiteninhalt_x0020_2" runat="server"></PublishingWebControls:RichHtmlField>
				<WebPartPages:WebPartZone id="g_8DAF81CDBCB843ACAAD384E4177CDED9" runat="server" title="Zone 2"></WebPartPages:WebPartZone>
			</div>
			<div class="grid-6">
				<h2 id="contenttitle"><SharePoint:FieldValue FieldName="Title" runat="server"/></h2>
				<%-- Edit ContentTitle. Visible in edit Mode only --%>
				<PublishingWebControls:EditModePanel runat="server" CssClass="title-edit">
					<SharePointWebControls:TextField runat="server" FieldName="Title"/>
				</PublishingWebControls:EditModePanel>
				<%-- Spalte: Seiteninhalt 3 --%>
				<PublishingWebControls:RichHtmlField FieldName="Seiteninhalt_x0020_3" runat="server"></PublishingWebControls:RichHtmlField>
				<WebPartPages:WebPartZone id="WebPartZone3" runat="server" title="Zone 3"></WebPartPages:WebPartZone>
			</div>
		</div>
	</div>
	
</asp:Content>