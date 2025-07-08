<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS301027.aspx.cs" Inherits="Page_GS301027" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource SkinID="Details" ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.MaterialTransferRequestEntry"
        PrimaryView="MatlRequest"
        >
    <CallbackCommands>
  <px:PXDSCallbackCommand Visible="True" Name="createIssue" ></px:PXDSCallbackCommand>
	<px:PXDSCallbackCommand Name="LoadBudget" Visible="False" />
	<px:PXDSCallbackCommand Visible="False" Name="viewLineDetails" ></px:PXDSCallbackCommand>
	<px:PXDSCallbackCommand Visible="False" Name="viewLineDetails" ></px:PXDSCallbackCommand></CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView Height="15%" ID="form" runat="server" DataSourceID="ds" DataMember="MatlRequest" Width="100%" AllowAutoHide="false">
    <Template>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule30" StartColumn="True" ></px:PXLayoutRule>
      <px:PXSelector runat="server" ID="CstPXSelector6" DataField="ReqNbr" ></px:PXSelector>
      <px:PXDropDown Enabled="False" runat="server" ID="CstPXTextEdit7" DataField="ReqType" ></px:PXDropDown>
      <px:PXDropDown runat="server" ID="CstPXDropDown8" DataField="Status" ></px:PXDropDown>
  <px:PXLayoutRule runat="server" ID="CstLayoutRule34" ColumnSpan="2" ></px:PXLayoutRule>
      <px:PXTextEdit runat="server" ID="CstPXTextEdit3" DataField="Description" ></px:PXTextEdit>
  <px:PXSelector runat="server" ID="CstPXSelector5" DataField="Notify" ></px:PXSelector>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule32" StartColumn="True" ></px:PXLayoutRule>
  <px:PXSegmentMask runat="server" ID="CstPXSegmentMask4" DataField="FromSiteID" ></px:PXSegmentMask>
  <px:PXSegmentMask runat="server" ID="CstPXSegmentMask6" DataField="ToSiteID" ></px:PXSegmentMask>
  <px:PXSelector AllowEdit="True" runat="server" ID="CstPXSelector3" DataField="ProjectID" ></px:PXSelector>
  <px:PXLayoutRule LabelsWidth="250px" runat="server" ID="CstPXLayoutRule31" StartColumn="True" ></px:PXLayoutRule>
      <px:PXSelector Enabled="False" runat="server" ID="CstPXNumberEdit4" DataField="ReqBy" ></px:PXSelector >
      <px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit5" DataField="ReqDate" ></px:PXDateTimeEdit>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit16" DataField="RequiredDate" />
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule5" StartGroup="True" GroupCaption="Document Totals" ></px:PXLayoutRule>
	<px:PXNumberEdit runat="server" ID="CstPXNumberEdit2" DataField="RequestQty" ></px:PXNumberEdit>
	<px:PXNumberEdit runat="server" ID="CstPXNumberEdit3" DataField="TransferQty" ></px:PXNumberEdit>
	<px:PXNumberEdit runat="server" ID="CstPXNumberEdit1" DataField="IssueQty" ></px:PXNumberEdit></Template>
    <AutoSize Container="Window" Enabled="True" MinHeight="200" ></AutoSize>
  </px:PXFormView>
  <px:PXTab Width="100%" Height="900px" runat="server" ID="GridMaterials">
    <Items>
      <px:PXTabItem Text="Materials">
        <Template>
          <px:PXGrid SyncPosition="True" DataSourceID="ds" Width="100%" SkinID="Details" Height="" runat="server" ID="grid">
            <Levels>
              <px:PXGridLevel DataMember="MatlRequestDet" >
                <Columns>
  <px:PXGridColumn DataField="ProjectID" Width="70" ></px:PXGridColumn>
  <px:PXGridColumn DataField="TaskID" Width="70" ></px:PXGridColumn>
  <px:PXGridColumn DataField="CostCode" Width="70" ></px:PXGridColumn>
                  <px:PXGridColumn DataField="InventoryID" Width="70" ></px:PXGridColumn>
  <px:PXGridColumn DataField="InventoryID_description" Width="280" ></px:PXGridColumn>
                  <px:PXGridColumn DataField="UoM" Width="72" ></px:PXGridColumn>
                  <px:PXGridColumn DataField="RevisedQty" Width="100" ></px:PXGridColumn>
                  <px:PXGridColumn DataField="ActualQty" Width="100" ></px:PXGridColumn>
                  <px:PXGridColumn DataField="RequestedQty" Width="100" ></px:PXGridColumn>
  <px:PXGridColumn DataField="TransferQty" Width="100" ></px:PXGridColumn>
  <px:PXGridColumn DataField="IssueQty" Width="100" ></px:PXGridColumn></Columns>
  <RowTemplate>
    <px:PXPanel runat="server" ID="CstPanel1" ></px:PXPanel>
    <px:PXButton runat="server" ID="CstButton2" ></px:PXButton>
    <px:PXLabel runat="server" ID="CstLabel3" ></px:PXLabel></RowTemplate></px:PXGridLevel></Levels>
  <AutoSize Enabled="True" ></AutoSize>
  <ActionBar>
    <CustomItems>
      <px:PXToolBarButton CommandName="" Key="loadBudget" Text="Load BOM">
        <AutoCallBack Target="ds" Command="loadBudget" ></AutoCallBack></px:PXToolBarButton>
	<px:PXToolBarButton Text="Load Bom2" Key="loadBudget2" CommandName="loadBudget2" >
		<AutoCallBack Command="loadBudget2" />
		<AutoCallBack Enabled="True" /></px:PXToolBarButton>
        <px:PXToolBarButton DependOnGrid="grid" CommandSourceID="ds" Visible="True" CommandName="viewLineDetails" Text="Line Details" Tooltip="View  line details" Key="viewLineDetails">
  <AutoCallBack Command="viewLineDetails" Target="ds">
    <Behavior PostData="Page" CommitChanges="True" ></Behavior>
  </AutoCallBack>
  
	<PopupCommand Enabled="True" Command="viewLineDetails" ></PopupCommand></px:PXToolBarButton></CustomItems>
</ActionBar>
  <Mode AllowDelete="True" AllowAddNew="False" ></Mode></px:PXGrid></Template></px:PXTabItem></Items></px:PXTab></asp:Content>

<asp:Content ID="Dialogs" ContentPlaceHolderID="phDialogs" runat="Server">
<px:pxsmartpanel Width="450px" Height="250px" CommandSourceID="ds" CommandName="" id="PanelCopyRevision" runat="server" style="z-index: 108; position: absolute; left: 27px; top: 99px;"
caption="Transfer Details" captionvisible="True" loadondemand="true" showafterload="true"
key="CopyDialog" autocallback-enabled="true" autocallback-target="formNewRevision" autocallback-command="Refresh"
callbackmode-commitchanges="True" callbackmode-postdata="Page" acceptbuttonid="PXButtonOK" cancelbuttonid="PXButtonCancel">
<px:PXFormView Height="" ID="formNewTransfer" runat="server" DataSourceID="ds" Style="z-index: 100" Width="" Caption="Create Transfer" CaptionVisible="True" SkinID="Transparent"   DataMember="CopyDialog">   
<Template>
  <px:PXLayoutRule ControlSize="100" LabelsWidth="180px" runat="server" ID="CstPXLayoutRule28" StartColumn="True" ColumnWidth="400" ></px:PXLayoutRule>
  <px:PXDropDown runat="server" ID="CstPXDropDown12" DataField="CostLayerType" ></px:PXDropDown>
  <px:PXSelector runat="server" ID="edLocationID" DataField="LocationID" ></px:PXSelector>
  <px:PXDropDown runat="server" ID="CstPXDropDown14" DataField="ToCostLayerType" ></px:PXDropDown>
  <px:PXSelector runat="server" ID="CstPXSelector15" DataField="ToLocationID" ></px:PXSelector>
	<px:PXCheckBox Width="" LabelWidth="200px" runat="server" ID="edCheckAvailableQty" DataField="CheckAvailableQty" ></px:PXCheckBox>
	<px:PXCheckBox runat="server" ID="CstPXCheckBox19" DataField="ActiveTask" ></px:PXCheckBox></Template>

	<ContentLayout LabelsWidth="430px" ></ContentLayout></px:PXFormView>
<div style="padding: 5px; text-align: right;">   
<px:PXButton ID="PXButtonOK" runat="server" Text="OK" DialogResult="OK" Width="63px" Height="20px">
</px:PXButton>   
<px:PXButton ID="PXButtonCancel" runat="server" DialogResult="No" Text="Cancel" Width="63px" Height="20px" Style="margin-left: 5px" >
</px:PXButton> </div></px:pxsmartpanel>
  <px:PXSmartPanel Width="330px" Height="120px" Style='left:27px;top:99px;Position:absolute;' AcceptButtonID="PXButtonOK2" LoadOnDemand="True" CaptionVisible="True" Key="CopyDialog2" Caption="Create Issue" runat="server" ID="CreateIssue" CommandName="CreateIssue">
    <px:PXFormView Caption="Create Issue" CaptionVisible="True" SkinID="Transparent" Width="" DataSourceID="ds" DataMember="CopyDialog2" runat="server" ID="CstFormView20" >
      <Template>
        <px:PXLayoutRule ControlSize="240px" runat="server" ID="CstPXLayoutRule29" StartColumn="True" ColumnWidth="240px" ></px:PXLayoutRule>
        <px:PXDropDown runat="server" ID="CstPXDropDown27" DataField="CostLayerTypeForIssue" ></px:PXDropDown>
	<px:PXSelector runat="server" ID="CstPXSelector4" DataField="ReasonCode" ></px:PXSelector></Template></px:PXFormView>

<div style="padding: 5px; text-align: right;">   
<px:PXButton ID="PXButtonOK2" runat="server" Text="OK" DialogResult="OK" Width="63px" Height="20px">
</px:PXButton>   
<px:PXButton ID="PXButtonCancel2" runat="server" DialogResult="No" Text="Cancel" Width="63px" Height="20px" Style="margin-left: 5px" >
</px:PXButton> </div>



</px:PXSmartPanel>
	<px:PXSmartPanel AutoCallBack-Target="CstPXGrid12" AutoCallBack-Enabled="True" AutoCallBack-Command="Refresh" LoadOnDemand="True" CommandName="viewLineDetails" CaptionVisible="True" runat="server" ID="CstSmartPanel11" Key="MatlRequestLineDet" Width="90%" Height="500px" Caption="Line Details">
		<px:PXGrid AutoAdjustColumns="True" SyncPosition="True" TabIndex="-3036" SkinID="Inquire" AllowFilter="True" DataSourceID="ds" Height="300px" Width="100%" runat="server" ID="CstPXGrid12">
			<Levels>
				<px:PXGridLevel DataMember="MatlRequestLineDet" >
					<Columns>
						<px:PXGridColumn DataField="InventoryID" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="TransferQtyUnReleased" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn DataField="TransferQtyReleased" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn DataField="IssueQtyUnReleased" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn DataField="IssueQtyReleased" Width="100" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
			<AutoSize Enabled="True" /></px:PXGrid>
		<px:PXPanel SkinID="Buttons" ContentLayout-ContentAlign="Left" runat="server" ID="btnPanel"></px:PXPanel></px:PXSmartPanel></asp:Content>