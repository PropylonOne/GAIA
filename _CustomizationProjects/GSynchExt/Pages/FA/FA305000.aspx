<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="FA305000.aspx.cs" Inherits="Page_FA305000" Title="Untitled Page" %>
<%@ Register TagPrefix="px" Namespace="PX.Web.UI" Assembly="PX.Web.UI" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.ISGAFARequestEntry"
        PrimaryView="FARequest"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="FARequest" Width="100%">
	
		<Template>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule1" StartRow="True" ></px:PXLayoutRule>
				<px:PXSelector runat="server" ID="CstPXSelector14" DataField="ReqNbr" ></px:PXSelector>
				<px:PXDropDown CommitChanges="True" runat="server" ID="CstPXDropDown4" DataField="Status" ></px:PXDropDown>
				<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit5" DataField="ReqDate" ></px:PXDateTimeEdit>
				<px:PXLayoutRule runat="server" ID="CstLayoutRule10" ColumnSpan="2" ></px:PXLayoutRule>
				<px:PXTextEdit runat="server" ID="CstPXTextEdit11" DataField="Description" ></px:PXTextEdit>
				<px:PXLayoutRule runat="server" ID="CstPXLayoutRule6" StartColumn="True" ></px:PXLayoutRule>
				<px:PXSelector runat="server" ID="CstPXSelector9" DataField="ReqBy" ></px:PXSelector>
				<px:PXSelector runat="server" ID="CstPXSelector8" DataField="Notifier" ></px:PXSelector>
				<px:PXSelector runat="server" ID="CstPXSelector33" DataField="IssueTo" ></px:PXSelector></Template></px:PXFormView>
	<px:PXTab Height="540px" Width="100%" runat="server" ID="tab">
		<Items>
			<px:PXTabItem Text="Details">
				<Template>
					<px:PXGrid DataSourceID="ds" Width="100%" Height="473px" SkinID="DetailsInTab" runat="server" ID="DetailsTab">
						<Levels>
							<px:PXGridLevel DataMember="FARequestDet">
								<Columns>
									<px:PXGridColumn CommitChanges="True" DataField="AssetID" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="280" ></px:PXGridColumn>
									<px:PXGridColumn DataField="RequestQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="FAQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ReturnedQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="IssuedQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="OpenQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn Type="CheckBox" DataField="Completed" Width="60" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
			<px:PXTabItem Text="Approvals">
				<Template>
					<px:PXGrid DataSourceID="ds" Width="100%" SkinID="Details" Height="500px" runat="server" ID="grid2">
						<Levels>
							<px:PXGridLevel DataMember="Approval" >
								<Columns>
									<px:PXGridColumn DataField="ApproverEmployee__AcctCD" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ApproverEmployee__AcctName" Width="220" ></px:PXGridColumn>
									<px:PXGridColumn DataField="WorkgroupID" Width="180" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ApprovedByEmployee__AcctCD" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ApproveDate" Width="90" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Status" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Reason" Width="280" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
						<AutoCallBack Target="ds" ></AutoCallBack></px:PXGrid></Template>
				<AutoCallBack Target="ds" /></px:PXTabItem>
			<px:PXTabItem Text="Events">
				<Template>
					<px:PXGrid SkinID="DetailsInTab" Width="100%" Height="512px" runat="server" ID="CstPXGrid43">
						<Levels>
							<px:PXGridLevel DataMember="ReqEventRecords" >
								<Columns>
									<px:PXGridColumn DataField="LineNbr" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ReqNbr" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="AssetID" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="RequestQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ActionType" Width="70" />
									<px:PXGridColumn DataField="FAQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="IssuedQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="UnAssignedQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ReturnedQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ReturnedDate" Width="90" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ReturnedBy" Width="220" ></px:PXGridColumn>
									<px:PXGridColumn DataField="OpenQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="IssuedDate" Width="90" ></px:PXGridColumn>
									<px:PXGridColumn DataField="IssuedBy" Width="220" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="280" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem></Items></px:PXTab></asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server"></asp:Content>
