<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS108005.aspx.cs" Inherits="Page_GS108005" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.BOQItemGroupMaint"
        PrimaryView="MasterView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView Height="100%" ID="form" runat="server" DataSourceID="ds" DataMember="MasterView" Width="100%" AllowAutoHide="false">
		<Template>
			<px:PXSelector runat="server" ID="CstPXNumberEdit4" DataField="GroupID" ></px:PXSelector>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule12" ColumnSpan="2" ></px:PXLayoutRule>
			<px:PXTextEdit runat="server" ID="CstPXTextEdit3" DataField="GroupDescription" ></px:PXTextEdit>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule8" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSegmentMask runat="server" ID="CstPXSegmentMask15" DataField="CostCodeID" />
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule10" StartRow="True" ></px:PXLayoutRule></Template>
		<AutoSize Container="Window" Enabled="True" MinHeight="30" ></AutoSize>
	</px:PXFormView>
	<px:PXGrid Width="100%" SkinID="Details" Height="800PX" runat="server" ID="CstPXGrid6">
		<Levels>
			<px:PXGridLevel DataMember="DetailsView" >
				<Columns>
					<px:PXGridColumn DataField="InventoryID" Width="70" ></px:PXGridColumn>
					<px:PXGridColumn DataField="InventoryID_description" Width="280" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></asp:Content>

