<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormTab.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS101017.aspx.cs" Inherits="Page_GS101017" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormTab.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.FundTransferRequestSetupMaint"
        PrimaryView="Setup"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Setup" Width="100%" Height="200px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXCheckBox CommitChanges="True" runat="server" ID="CstPXCheckBox44" DataField="ApprovalMap" ></px:PXCheckBox>
			<px:PXSelector runat="server" ID="CstPXSelector157" DataField="FTRequestNumberingID" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector18" DataField="MTRequestNumberingID" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector15" DataField="SMRequestNumberingID" ></px:PXSelector></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXTab ID="tab" runat="server" Width="100%" Height="80px" DataSourceID="ds" AllowAutoHide="false">
		<Items>
			<px:PXTabItem Text="Fund Transfer Request  Approval">
				<Template>
					<px:PXGrid Height="500px" Width="100%" SkinID="Details" runat="server" ID="grid1">
						<Levels>
							<px:PXGridLevel DataMember="SetupApproval" >
								<Columns>
									<px:PXGridColumn Type="CheckBox" DataField="IsActive" Width="60" ></px:PXGridColumn>
									<px:PXGridColumn DataField="AssignmentMapID" Width="220" ></px:PXGridColumn>
									<px:PXGridColumn DataField="AssignmentNotificationID" Width="280" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template>
			</px:PXTabItem></Items>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
	</px:PXTab>
</asp:Content>