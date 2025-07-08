<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS301228.aspx.cs" Inherits="Page_GS301228" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.ServiceMaterialRequestEntry"
        PrimaryView="MatlRequest"
        >
    <CallbackCommands>
	<px:PXDSCallbackCommand Visible="False" Name="LoadBudget" ></px:PXDSCallbackCommand></CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="MatlRequest" Width="100%" Height="" AllowAutoHide="false">
    <Template>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule1" StartColumn="True" ></px:PXLayoutRule>
	<px:PXSelector runat="server" ID="CstPXSelector6" DataField="ReqNbr" ></px:PXSelector>
	<px:PXDropDown runat="server" ID="CstPXDropDown7" DataField="ReqType" ></px:PXDropDown>
	<px:PXDropDown runat="server" ID="CstPXDropDown9" DataField="Status" ></px:PXDropDown>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit5" DataField="ReqDate" ></px:PXDateTimeEdit>
	<px:PXSelector runat="server" ID="CstPXSelector4" DataField="ReqBy" ></px:PXSelector>
	<px:PXLayoutRule runat="server" ID="CstLayoutRule14" ColumnSpan="2" ></px:PXLayoutRule>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit3" DataField="Description" ></px:PXTextEdit>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule2" StartColumn="True" ></px:PXLayoutRule>
	<px:PXSegmentMask CommitChanges="True" runat="server" ID="CstPXSegmentMask10" DataField="ToSiteID" ></px:PXSegmentMask>
	<px:PXSelector runat="server" ID="CstPXSelector11" DataField="Notify" ></px:PXSelector></Template>
  </px:PXFormView>
	<px:PXTab Height="800px" runat="server" ID="Materials">
		<Items>
			<px:PXTabItem Text="Materials">
				<Template>
					<px:PXGrid Height="100%" Width="100%" SkinID="Details" runat="server" ID="CstPXGrid31">
						<Levels>
							<px:PXGridLevel DataMember="MatlRequestDet" >
								<Columns>
									<px:PXGridColumn CommitChanges="True" DataField="InventoryID" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="InventoryID_description" Width="280" ></px:PXGridColumn>
									<px:PXGridColumn DataField="UoM" Width="72" ></px:PXGridColumn>
									<px:PXGridColumn DataField="RequestedQty" Width="100" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
						<Mode AllowAddNew="False" ></Mode>
						<Mode AllowDelete="True" ></Mode>
						<ActionBar>
							<CustomItems>
								<px:PXToolBarButton Enabled="True" Text="Add Items" Key="cmdASI" >
									<AutoCallBack Command="addInvBySite" ></AutoCallBack>
									<AutoCallBack Target="ds" ></AutoCallBack></px:PXToolBarButton></CustomItems></ActionBar></px:PXGrid></Template></px:PXTabItem></Items></px:PXTab>
<px:pxsmartpanel Width="420px" Height="180px" CommandSourceID="ds" CommandName="" id="PanelCopyRevision" runat="server" style="z-index: 108; position: absolute; left: 27px; top: 99px;" 
caption="Transfer Details" captionvisible="True" loadondemand="true" showafterload="true" key="CopyDialog" autocallback-enabled="true" 
autocallback-target="formNewRevision" autocallback-command="Refresh" callbackmode-commitchanges="True" callbackmode-postdata="Page" 
acceptbuttonid="PXButtonOK" cancelbuttonid="PXButtonCancel"> <px:PXFormView ID="formNewRevision"
runat="server" DataSourceID="ds" Style="z-index: 100" Width="" Caption="Create Transfer" CaptionVisible="True" 
SkinID="Transparent"   DataMember="CopyDialog">    <Template> <px:PXLayoutRule LabelsWidth="150px" runat="server" 
ID="CstPXLayoutRule28" StartColumn="True" ColumnWidth="280px" ></px:PXLayoutRule>
	<px:PXSegmentMask CommitChanges="True" runat="server" ID="CstPXSegmentMask35" DataField="FromSiteID" ></px:PXSegmentMask> 
<px:PXDropDown runat="server" ID="CstPXDropDown14" DataField="ToCostLayerType" ></px:PXDropDown> 
<px:PXSelector runat="server" ID="CstPXSelector15" DataField="ToLocationID" ></px:PXSelector></Template> </px:PXFormView> 
<div style="padding: 5px; text-align: right;">    <px:PXButton ID="PXButtonOK" runat="server" 
Text="OK" DialogResult="OK" Width="63px" Height="20px"> </px:PXButton>    
<px:PXButton ID="PXButtonCancel" runat="server" DialogResult="No" Text="Cancel" Width="63px" Height="20px" Style="margin-left: 5px" > 
</px:PXButton> </div></px:pxsmartpanel>
	<px:PXSmartPanel LoadOnDemand="True" Key="smrSitestatus" Caption="Inventory Lookup" CaptionVisible="True" Height="500px" runat="server" ID="panelAddItems" >
<px:PXGrid ID="gripSiteStatus" runat="server" DataSourceID="ds" Style="border-width: 1px 0px; top: 0px; left: 0px;" AutoAdjustColumns="true"
  Width="100%" SkinID="Details" AdjustPageSize="Auto" Height="135px" AllowSearch="True" BatchUpdate="true" FastFilterID="edInventory"
  FastFilterFields="InventoryCD,Descr">
  <CallbackCommands>
    <Refresh CommitChanges="true"></Refresh>
  </CallbackCommands>
   <ActionBar PagerVisible="False">
    <PagerSettings Mode="NextPrevFirstLast" ></PagerSettings>
  </ActionBar>
  <Levels>
    <px:PXGridLevel DataMember="smrSiteStatus">
      <Mode AllowAddNew="false" AllowDelete="false" ></Mode>
         <Columns>
        <px:PXGridColumn AllowNull="False" DataField="Selected" TextAlign="Center" Type="CheckBox" AutoCallBack="true"
          AllowCheckAll="true" ></px:PXGridColumn>
        <px:PXGridColumn AllowNull="False" DataField="QtySelected" TextAlign="Right" ></px:PXGridColumn>
	<px:PXGridColumn DataField="InventoryCD" Width="70" ></px:PXGridColumn>
         <px:PXGridColumn DataField="Descr" ></px:PXGridColumn></Columns>
    </px:PXGridLevel>
  </Levels>
  <AutoSize Enabled="true" ></AutoSize>
  </px:PXGrid>
		<px:PXPanel runat="server" ID="CstPanel52">
			<px:PXButton Text="Add &amp; Close" runat="server" ID="btnADD" DialogResult="OK" ></px:PXButton>
			<px:PXButton Text="Close" runat="server" ID="btnClose" DialogResult="Cancel" ></px:PXButton></px:PXPanel></px:PXSmartPanel>
</asp:Content>