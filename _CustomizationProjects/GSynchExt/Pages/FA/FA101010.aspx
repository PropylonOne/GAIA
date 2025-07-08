<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="FA101010.aspx.cs" Inherits="Page_FA101010" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.ISGAFARequestSetupMaint"
        PrimaryView="Setup"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView Height="100px" ID="form" runat="server" DataSourceID="ds" DataMember="Setup" Width="100%" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule runat="server" ID="PXLayoutRule1" StartRow="True" ></px:PXLayoutRule>
			<px:PXCheckBox runat="server" ID="CstPXCheckBox1" DataField="FARequestapprovalMap" ></px:PXCheckBox>
			<px:PXSelector runat="server" ID="CstPXSelector2" DataField="FARequestNumberingID" ></px:PXSelector></Template>
		<AutoSize Container="Window" Enabled="True" MinHeight="200" ></AutoSize>
	</px:PXFormView>
	<px:PXGrid CaptionVisible="True" Width="100%" Caption="Approval" Height="600px" SkinID="Details" DataSourceID="ds" runat="server" ID="grid">
		<Levels>
			<px:PXGridLevel DataMember="FARSetupApproval" >
				<Columns>
					<px:PXGridColumn Type="CheckBox" DataField="IsActive" Width="60" ></px:PXGridColumn>
					<px:PXGridColumn DataField="AssignmentMapID" Width="220" ></px:PXGridColumn>
					<px:PXGridColumn DataField="AssignmentNotificationID" Width="280" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></asp:Content>