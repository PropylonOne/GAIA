<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS306500.aspx.cs" Inherits="Page_GS306500" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.UploadBankStatementMaint"
        PrimaryView="BankStatement"
        >
		<CallbackCommands>
			<px:PXDSCallbackCommand Visible="False" Name="Insert" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Visible="False" Name="Delete" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Visible="False" Name="CopyPaste" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Visible="False" Name="First" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Visible="False" Name="Previous" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Visible="False" Name="Next" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Visible="False" Name="Last" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Visible="False" Name="ValidateLines" ></px:PXDSCallbackCommand></CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
	<px:PXSplitContainer Panel1MinSize="500" Panel1Overflow="False" runat="server" ID="splitConditions" Orientation="Vertical" SplitterPosition="250">
		<AutoSize Enabled="true" Container="Window" ></AutoSize>
		<Template1>
			<px:PXGrid runat="server" ID="grid11" SyncPosition="True" Height="150px" SkinID="DetailsInTab" Width="100%">
				<AutoSize Enabled="True" MinHeight="150" ></AutoSize>
				<Levels>
					<px:PXGridLevel DataMember="BankStatement">
						<Columns >
							<px:PXGridColumn DataField="RefNbr" Width="120" ></px:PXGridColumn>
							<px:PXGridColumn Type="CheckBox" DataField="Processed" Width="60" ></px:PXGridColumn>
							<px:PXGridColumn Type="CheckBox" DataField="Matched" Width="60" ></px:PXGridColumn>
							<px:PXGridColumn DataField="CEBAccount" Width="140" ></px:PXGridColumn>
							<px:PXGridColumn DataField="CashAccountCD" Width="120" ></px:PXGridColumn>
							<px:PXGridColumn DataField="CEBAmount" Width="100" ></px:PXGridColumn>
                                                <px:PXGridColumn DataField="SolarSiteID" CommitChanges="true"></px:PXGridColumn>
							<px:PXGridColumn DataField="ClusterID" Width="70" ></px:PXGridColumn>
							<px:PXGridColumn DataField="PhaseID" Width="70" ></px:PXGridColumn>
							<px:PXGridColumn DataField="OpenAmount" Width="100" ></px:PXGridColumn>
							<px:PXGridColumn DataField="District" Width="140" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Province" Width="140" ></px:PXGridColumn>
							<px:PXGridColumn DataField="TransactionDate" Width="90" ></px:PXGridColumn></Columns>
						<RowTemplate>
							<px:PXTextEdit runat="server" ID="CstPXTextEdit3" DataField="CEBAccount" ></px:PXTextEdit></RowTemplate></px:PXGridLevel></Levels>
				<Mode AllowUpload="True" ></Mode>
				<ActionBar>
					<CustomItems>
						<px:PXToolBarButton Text="Validate" Tooltip="Validate Bank Statement Lines">
							<AutoCallBack Target="ds" Command="validateLines" ></AutoCallBack></px:PXToolBarButton>
						<px:PXToolBarButton Text="Clear Statement Records" Tooltip="Clear Bank Statement Lines">
							<AutoCallBack Target="ds" Command="ClearStatementRecords" ></AutoCallBack></px:PXToolBarButton></CustomItems></ActionBar></px:PXGrid></Template1>
		<Template2>
			<px:PXGrid runat="server" ID="grid12" Height="150px" SkinID="Inquire" Width="100%">
				<AutoSize Enabled="True" MinHeight="150" ></AutoSize>
				<Levels>
					<px:PXGridLevel DataMember="viewInvo2">
						<Columns >
							<px:PXGridColumn DataField="InventoryID" Width="150" ></px:PXGridColumn>
							<px:PXGridColumn DataField="RefNbr" Width="140" ></px:PXGridColumn>
							<px:PXGridColumn DataField="TranAmt" Width="100" ></px:PXGridColumn>
							<px:PXGridColumn DataField="TranBal" Width="100" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
				<ActionBar>
					<CustomItems>
						<px:PXToolBarButton Text="Fetch All" Tooltip="Load Data from Invoice Lines">
							<AutoCallBack Target="ds" Command="LoadInvData">
								<Behavior CommitChanges="True" ></Behavior></AutoCallBack></px:PXToolBarButton>
						<px:PXToolBarButton Text="Match Amounts" Tooltip="Create Payments">
							<AutoCallBack Target="ds" Command="MatchAmountsAction">
								<Behavior CommitChanges="True" ></Behavior></AutoCallBack></px:PXToolBarButton>

                                                <px:PXToolBarButton Text="Clear Invoice Records" Tooltip="Clear All Invoice Records">
              <AutoCallBack Target="ds" Command="ClearInvoiceRecords"></AutoCallBack></px:PXToolBarButton>





</CustomItems></ActionBar></px:PXGrid></Template2></px:PXSplitContainer>
	<px:PXSmartPanel runat="server" ID="CstSmartPanel5" /></asp:Content>