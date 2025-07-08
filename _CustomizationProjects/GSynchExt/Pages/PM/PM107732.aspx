<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PM107732.aspx.cs" Inherits="Page_PM107732" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.SiteSetupMaint"
        PrimaryView="Setup"
        >
    <CallbackCommands>
	<px:PXDSCallbackCommand Visible="False" Name="Delete" ></px:PXDSCallbackCommand>
	<px:PXDSCallbackCommand Visible="False" Name="CopyPaste" ></px:PXDSCallbackCommand>
	<px:PXDSCallbackCommand Visible="False" Name="First" ></px:PXDSCallbackCommand>
	<px:PXDSCallbackCommand Visible="False" Name="Previous" ></px:PXDSCallbackCommand>
	<px:PXDSCallbackCommand Visible="False" Name="Next" ></px:PXDSCallbackCommand>
	<px:PXDSCallbackCommand Visible="False" Name="Last" ></px:PXDSCallbackCommand>
	<px:PXDSCallbackCommand Visible="True" Name="Save" ></px:PXDSCallbackCommand>
	<px:PXDSCallbackCommand Visible="False" Name="Insert" ></px:PXDSCallbackCommand></CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXTab runat="server" ID="tab" Height="505px" Width="100%" AllowAutoHide="false" DataSourceID="ds" DataMember="Setup">
    <AutoSize Enabled="True" Container="Window" MinHeight="200" />
    <Items>
      <px:PXTabItem Text="General">
        <Template>
          <px:PXLayoutRule runat="server" ID="CstPXLayoutRule34" StartColumn="True" LabelsWidth="250px" ControlSize="SM" ></px:PXLayoutRule>
          <px:PXLabel runat="server" ID="CstLabel41" ></px:PXLabel>
          <px:PXLayoutRule runat="server" ID="CstPXLayoutRule37" StartGroup="True" GroupCaption="Survey Defaults" ></px:PXLayoutRule>
          <px:PXSelector AllowAddNew="True" AllowEdit="True" runat="server" ID="CstPXSelector44" DataField="SurveyNumberingID" ></px:PXSelector>
          <px:PXSelector AllowEdit="True" runat="server" ID="CstPXSelector43" DataField="RevGenNumberigID" ></px:PXSelector>
          <px:PXLayoutRule runat="server" ID="CstPXLayoutRule38" StartGroup="True" GroupCaption="Non-Stock Defaults" ></px:PXLayoutRule>
          <px:PXSegmentMask AllowEdit="True" runat="server" ID="CstPXSegmentMask45" DataField="ItemClassID" ></px:PXSegmentMask>
          <px:PXLayoutRule runat="server" ID="CstPXLayoutRule42" StartGroup="True" GroupCaption="FA Defaults" ></px:PXLayoutRule>
          <px:PXSelector AllowEdit="True" runat="server" ID="CstPXSelector46" DataField="AssetClassID" ></px:PXSelector>
	<px:PXSelector runat="server" ID="CstPXSelector2" DataField="Department" ></px:PXSelector>
          <px:PXLayoutRule runat="server" ID="CstPXLayoutRule48" StartGroup="True" GroupCaption="Service Defaults" ></px:PXLayoutRule>
          <px:PXNumberEdit runat="server" ID="CstPXNumberEdit50" Size="SM" DataField="MfRate" ></px:PXNumberEdit>
          <px:PXSegmentMask AllowEdit="True" runat="server" ID="CstPXSegmentMask49" DataField="DfltSiteID" ></px:PXSegmentMask>
          <px:PXLayoutRule runat="server" ID="CstPXLayoutRule35" StartColumn="True" LabelsWidth="250px" ControlSize="SM" ></px:PXLayoutRule>
          <px:PXCheckBox CommitChanges="True" runat="server" DataField="SiteApprovalMap" ID="CstPXCheckBox51" ></px:PXCheckBox>
          <px:PXLayoutRule runat="server" ID="CstPXLayoutRule40" StartGroup="True" GroupCaption="Stamp Duty &amp; Management Fee" ></px:PXLayoutRule>
          <px:PXNumberEdit runat="server" ID="CstPXNumberEdit53" Size="SM" DataField="StampDutyLimit" ></px:PXNumberEdit>
          <px:PXNumberEdit runat="server" ID="CstPXNumberEdit52" Size="SM" DataField="StampDutyAmount" ></px:PXNumberEdit>
          <px:PXLayoutRule runat="server" ID="CstPXLayoutRule39" StartGroup="True" GroupCaption="Project Mapping Data" ></px:PXLayoutRule>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit3" DataField="MapConsStart" ></px:PXTextEdit>
          <px:PXTextEdit runat="server" DataField="MapConsEnd" ID="CstPXTextEdit55" ></px:PXTextEdit>
          <px:PXTextEdit runat="server" DataField="MapCommissioned" ID="CstPXTextEdit54" ></px:PXTextEdit>
          <px:PXTextEdit runat="server" DataField="MapConnectedToGrid" ID="CstPXTextEdit58" ></px:PXTextEdit>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit1" DataField="MapReleasedToServices" ></px:PXTextEdit>
          <px:PXSelector runat="server" ID="CstPXSelector57" DataField="TimeAccntGrp" ></px:PXSelector>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit4" DataField="IssueReasonCodePrefix" ></px:PXTextEdit>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit5" DataField="ReceiptReasonCodePrefix" /></Template></px:PXTabItem>
      <px:PXTabItem Text="Approval">
        <Template>
          <px:PXGrid BorderWidth="0px" DataSourceID="ds" runat="server" ID="CstPXGrid21" SkinID="Details" Width="100%">
            <Levels>
              <px:PXGridLevel DataMember="SetupApproval">
                <Columns>
	<px:PXGridColumn CommitChanges="True" Type="CheckBox" DataField="IsActive" Width="60" ></px:PXGridColumn>
                  <px:PXGridColumn DataField="AssignmentMapID" Width="220" ></px:PXGridColumn>
                  <px:PXGridColumn DataField="AssignmentNotificationID" Width="280" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
	<AutoSize Enabled="true" ></AutoSize></px:PXGrid></Template></px:PXTabItem></Items></px:PXTab></asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server"></asp:Content>