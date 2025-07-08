<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormTab.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS207002.aspx.cs" Inherits="Page_GS207002" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormTab.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource PageLoadBehavior="InsertRecord" ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.GSBOQMaint"
        PrimaryView="BOQ"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView DefaultControlID="" ActivityIndicator="True" FilesIndicator="True" NoteIndicator="True" ID="form" runat="server" DataSourceID="ds" DataMember="BOQ" Width="100%" Height="" AllowAutoHide="false">
    <Template>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule6" StartColumn="True" ></px:PXLayoutRule>
	<px:PXSelector DataSourceID="ds" CommitChanges="True" AutoRefresh="True" runat="server" ID="edBOQID" DataField="BOQID" ></px:PXSelector>
	<px:PXSelector DataSourceID="ds" CommitChanges="True" AutoRefresh="True" runat="server" ID="edRevisionID" DataField="RevisionID" ></px:PXSelector>
	<px:PXDateTimeEdit runat="server" ID="edStartDate" DataField="StartDate" ></px:PXDateTimeEdit>
	<px:PXDateTimeEdit runat="server" ID="edEndDate" DataField="EndDate" ></px:PXDateTimeEdit>
	<px:PXLayoutRule runat="server" ID="CstLayoutRule42" ColumnSpan="2" ></px:PXLayoutRule>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit35" DataField="Description" ></px:PXTextEdit>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule7" StartColumn="True" ></px:PXLayoutRule>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule44" Merge="True" ></px:PXLayoutRule>
  <px:PXDropDown Size="180px" runat="server" ID="edStatus" DataField="Status" ></px:PXDropDown>
  <px:PXCheckBox runat="server" ID="edApproved" DataField="Approved" ></px:PXCheckBox>
	<px:PXLayoutRule runat="server" ID="CstLayoutRule45" Merge="False" ></px:PXLayoutRule>
	<pxa:PXCurrencyRate runat="server" DataField="CuryID" DataSourceID="ds" RateTypeView="Current_currencyinfo" ID="edCury" DataMember="_Currency_" ></pxa:PXCurrencyRate>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule13" StartColumn="True" ></px:PXLayoutRule>
	<px:PXMaskEdit runat="server" ID="edPhaseCapacity" DataField="PhaseCapacity" ></px:PXMaskEdit>
	<px:PXMaskEdit runat="server" ID="edCapacityType1" DataField="CapacityType1" ></px:PXMaskEdit>
	<px:PXMaskEdit runat="server" ID="edCapacityType2" DataField="CapacityType2" ></px:PXMaskEdit>
	<px:PXMaskEdit runat="server" ID="edCapacityType3" DataField="CapacityType3" ></px:PXMaskEdit>
	<px:PXMaskEdit runat="server" ID="edCapacityType4" DataField="CapacityType4" ></px:PXMaskEdit>
	<px:PXMaskEdit runat="server" ID="edCapacityType5" DataField="CapacityType5" ></px:PXMaskEdit></Template>
  </px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
  <px:PXTab DataMember="CurrentBOQ" ID="tab" runat="server" Width="100%" Height="150px" DataSourceID="ds" AllowAutoHide="false">
    <Items>
      <px:PXTabItem Text="Materials">
        <Template>
  <px:PXGrid RepaintColumns="True" SyncPosition="True" BatchUpdate="True" DataSourceID="ds" Width="100%" Height="400PX" SkinID="Details" runat="server" ID="gridMaterials">
    <Levels>
      <px:PXGridLevel DataMember="Materials">
        <Columns>
	<px:PXGridColumn DataField="LineNbr" Width="70" />
          <px:PXGridColumn AllowCheckAll="True" Type="CheckBox" DataField="Selected" Width="60" ></px:PXGridColumn>
	<px:PXGridColumn CommitChanges="True" DataField="GroupID" Width="120" ></px:PXGridColumn>
          <px:PXGridColumn CommitChanges="True" DataField="InventoryID" Width="70" ></px:PXGridColumn>
	<px:PXGridColumn DataField="InventoryID_description" Width="280" ></px:PXGridColumn>
          <px:PXGridColumn DataField="UnitCost" Width="100" ></px:PXGridColumn>
          <px:PXGridColumn DisplayFormat=">aaaaaa" CommitChanges="True" DataField="UOM" Width="72" ></px:PXGridColumn>
	<px:PXGridColumn DataField="CostCode" Width="70" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EstQtyPhase" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EstQtyType1" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EstQtyType2" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EstQtyType3" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EstQtyType4" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EstQtyType5" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="GGHEstQtyPhase" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EPCEstQtyPhase" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="GGHEstQtyType1" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EPCEstQtyType1" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="GGHEstQtyType2" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EPCEstQtyType2" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="GGHEstQtyType3" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EPCEstQtyType3" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="GGHEstQtyType4" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EPCEstQtyType4" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="GGHEstQtyType5" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EPCEstQtyType5" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="GGHRemark" Width="140" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EPCRemark" Width="140" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
    <Mode AllowUpload="True" AllowUpdate="True" ></Mode>
    <Mode AllowUpload="True" ></Mode></px:PXGrid></Template>
      </px:PXTabItem>
	<px:PXTabItem Text="EPC Data">
		<Template>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule11" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="edEPCVendorID" DataField="EPCVendorID" ></px:PXSelector></Template></px:PXTabItem>
	<px:PXTabItem Text="Attributes">
		<Template>
			<px:PXGrid Height="250px" Width="100%" Caption="Attributes" runat="server" ID="CstPXGrid12" SkinID="Details">
				<Levels>
					<px:PXGridLevel DataMember="Answers" >
						<Columns>
							<px:PXGridColumn DataField="Value" Width="280" ></px:PXGridColumn>
							<px:PXGridColumn DataField="IsRequired" Width="60" ></px:PXGridColumn>
							<px:PXGridColumn DataField="AttributeID" Width="120" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
	<px:PXTabItem Text="Approval">
		<Template>
			<px:PXGrid Width="100%" Height="250px" SkinID="Details" runat="server" ID="CstPXGrid22">
				<Levels>
					<px:PXGridLevel DataMember="Approval" >
						<Columns>
							<px:PXGridColumn DataField="OwnerID" Width="70" ></px:PXGridColumn>
							<px:PXGridColumn DataField="ApprovedByEmployee__AcctName" Width="220" ></px:PXGridColumn>
							<px:PXGridColumn DataField="ApproverEmployee__AcctCD" Width="140" ></px:PXGridColumn>
							<px:PXGridColumn DataField="WorkgroupID" Width="180" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Reason" Width="280" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Status" Width="70" ></px:PXGridColumn>
							<px:PXGridColumn DataField="ApproveDate" Width="90" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem></Items>
    <AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
  </px:PXTab></asp:Content>
<asp:Content ID="Dialogs" ContentPlaceHolderID="phDialogs" runat="Server">
<px:pxsmartpanel CommandSourceID="ds" CommandName="" id="PanelCopyRevision" runat="server" style="z-index: 108; position: absolute; left: 27px; top: 99px;" caption="Copy Revision"
  captionvisible="True" loadondemand="true" showafterload="true" key="CopyDialog" autocallback-enabled="true" autocallback-target="formNewRevision" autocallback-command="Refresh"
  callbackmode-commitchanges="True" callbackmode-postdata="Page" acceptbuttonid="PXButtonOK" cancelbuttonid="PXButtonCancel">
  <px:PXFormView ID="formNewRevision" runat="server" DataSourceID="ds" Style="z-index: 100" Width="100%" Caption="New Revision" CaptionVisible="False" SkinID="Transparent"
    DataMember="CopyDialog">
    <Template>
      <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="SM" ControlSize="XM" ></px:PXLayoutRule>
	<px:PXMaskEdit runat="server" ID="CstPXMaskEdit33" DataField="NewRevisionID" />
      <px:PXCheckBox ID="chkCopyNotes" runat="server" DataField="CopyNotes" CommitChanges="True"></px:PXCheckBox>
      <px:PXCheckBox ID="chkCopyFiles" runat="server" DataField="CopyFiles" CommitChanges="True"></px:PXCheckBox></Template>
  </px:PXFormView>
  <div style="padding: 5px; text-align: right;">
    <px:PXButton ID="PXButtonOK" runat="server" Text="OK" DialogResult="OK" Width="63px" Height="20px"></px:PXButton>
    <px:PXButton ID="PXButtonCancel" runat="server" DialogResult="No" Text="Cancel" Width="63px" Height="20px" Style="margin-left: 5px" ></px:PXButton>
  </div>
  </px:pxsmartpanel>
  </asp:Content>