<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PM770031.aspx.cs" Inherits="Page_PM770031" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.SiteApprovalSetupMaint"
        PrimaryView="Setup"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXTab runat="server" ID="tab" Height="505px" Width="100%" AllowAutoHide="false" DataSourceID="ds" DataMember="Setup">
		<AutoSize Enabled="True" Container="Window" MinHeight="200" />
		<Items>
			<px:PXTabItem Text="General">
				<Template>
					<px:PXLayoutRule runat="server" ID="CstPXLayoutRule34" StartColumn="True" LabelsWidth="250px" ControlSize="SM" />
					<px:PXLabel runat="server" ID="CstLabel41" />
					<px:PXLayoutRule runat="server" ID="CstPXLayoutRule37" StartGroup="True" GroupCaption="Survey Defaults" />
					<px:PXSelector runat="server" ID="CstPXSelector44" DataField="SurveyNumberingID" />
					<px:PXSelector runat="server" ID="CstPXSelector43" DataField="RevGenNumberigID" />
					<px:PXLayoutRule runat="server" ID="CstPXLayoutRule38" StartGroup="True" GroupCaption="Non-Stock Defaults" />
					<px:PXSegmentMask runat="server" ID="CstPXSegmentMask45" DataField="ItemClassID" />
					<px:PXLayoutRule runat="server" ID="CstPXLayoutRule42" StartGroup="True" GroupCaption="FA Defaults" />
					<px:PXSelector runat="server" ID="CstPXSelector46" DataField="AssetClassID" />
					<px:PXLayoutRule runat="server" ID="CstPXLayoutRule48" StartGroup="True" GroupCaption="Service Defaults" />
					<px:PXNumberEdit runat="server" ID="CstPXNumberEdit50" Size="SM" DataField="MfRate" />
					<px:PXSegmentMask runat="server" ID="CstPXSegmentMask49" DataField="DfltSiteID" />
					<px:PXLayoutRule runat="server" ID="CstPXLayoutRule35" StartColumn="True" LabelsWidth="250px" ControlSize="SM" />
					<px:PXCheckBox runat="server" DataField="SiteApprovalMap" ID="CstPXCheckBox51" />
					<px:PXLayoutRule runat="server" ID="CstPXLayoutRule40" StartGroup="True" GroupCaption="Stamp Duty &amp; Management Fee" />
					<px:PXNumberEdit runat="server" ID="CstPXNumberEdit53" Size="SM" DataField="StampDutyLimit" />
					<px:PXNumberEdit runat="server" ID="CstPXNumberEdit52" Size="SM" DataField="StampDutyAmount" />
					<px:PXLayoutRule runat="server" ID="CstPXLayoutRule39" StartGroup="True" GroupCaption="Project Mapping Data" />
					<px:PXTextEdit runat="server" DataField="MapConsEnd" ID="CstPXTextEdit55" />
					<px:PXTextEdit runat="server" DataField="MapCommissioned" ID="CstPXTextEdit54" />
					<px:PXTextEdit runat="server" DataField="MapConnectedToGrid" ID="CstPXTextEdit58" />
					<px:PXSelector runat="server" ID="CstPXSelector57" DataField="TimeAccntGrp" /></Template></px:PXTabItem>
			<px:PXTabItem Text="Approvlas">
				<Template>
					<px:PXGrid runat="server" ID="CstPXGrid21" SkinID="Details" Width="100%">
						<Levels>
							<px:PXGridLevel DataMember="SetupApproval">
								<Columns>
									<px:PXGridColumn DataField="SiteApproval" Type="CheckBox" Width="60" />
									<px:PXGridColumn DataField="AssignmentNotificationID" Width="280" />
									<px:PXGridColumn DataField="AssignmentMapID" Width="220" /></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem></Items></px:PXTab></asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server"></asp:Content>