<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="FA501010.aspx.cs" Inherits="Page_FA501010" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PX.Objects.FA.ISGAFAProcessFARequests"
        PrimaryView="Filter"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Filter" Width="100%" Height="100px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule runat="server" ID="PXLayoutRule1" StartRow="True" />
			<px:PXDropDown CommitChanges="True" runat="server" ID="CstPXDropDown1" DataField="ActionType" ></px:PXDropDown>
			<px:PXSelector CommitChanges="True" runat="server" ID="CstPXSelector2" DataField="ReqNbr" ></px:PXSelector></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid runat="server" ID="grid" Height="150px" SkinID="Details" Width="100%" AllowAutoHide="false" DataSourceID="ds">
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<Levels>
			<px:PXGridLevel DataMember="FARequests">
				<Columns>
					<px:PXGridColumn Type="CheckBox" DataField="Selected" Width="60" ></px:PXGridColumn>
					<px:PXGridColumn DataField="ReqNbr" Width="140" ></px:PXGridColumn>
					<px:PXGridColumn DataField="AssetID" Width="140" ></px:PXGridColumn>
					<px:PXGridColumn DataField="Description" Width="280" ></px:PXGridColumn>
					<px:PXGridColumn DataField="Qty" Width="100" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></asp:Content>
