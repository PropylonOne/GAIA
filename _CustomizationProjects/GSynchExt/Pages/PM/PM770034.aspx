<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormTab.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PM770034.aspx.cs" Inherits="Page_PM770034" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormTab.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource EnableAttributes="True" ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.SolarSiteSurveyMaint"
        PrimaryView="Survey"
        >
    <CallbackCommands>
	<px:PXDSCallbackCommand Visible="False" Name="viewAddressOnMap" ></px:PXDSCallbackCommand></CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Survey" Width="100%" Height="180px" AllowAutoHide="false">
    <Template>
	<px:PXSelector Size="S" runat="server" ID="CstPXSelector30" DataField="SurveyID" ></px:PXSelector>
	<px:PXSelector Size="S" runat="server" ID="CstPXSelector28" DataField="SolarSiteID" ></px:PXSelector>
	<px:PXDropDown runat="server" ID="CstPXDropDown37" DataField="SiteStatus" ></px:PXDropDown>
	<px:PXCheckBox runat="server" ID="CstPXCheckBox35" DataField="SurveyApproved" ></px:PXCheckBox>
	<px:PXLayoutRule ColumnWidth="" runat="server" ID="CstLayoutRule31" ColumnSpan="2" ></px:PXLayoutRule>
	<px:PXTextEdit Size="" LabelWidth="" runat="server" ID="CstPXTextEdit27" DataField="Description" ></px:PXTextEdit>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule26" StartColumn="True" ></px:PXLayoutRule>
	<px:PXDateTimeEdit LabelWidth="150PX" Size="S" runat="server" ID="CstPXDateTimeEdit15" DataField="StartDate" ></px:PXDateTimeEdit>
	<px:PXDateTimeEdit LabelWidth="150PX" Size="S" runat="server" ID="CstPXDateTimeEdit13" DataField="EndDate" ></px:PXDateTimeEdit>
	<px:PXSelector LabelWidth="150PX" runat="server" ID="CstPXSelector33" DataField="FieldExecutive" ></px:PXSelector>
	<px:PXSelector LabelWidth="150PX" runat="server" ID="CstPXSelector44" DataField="ApproveUser" ></px:PXSelector></Template>
  </px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
  <px:PXTab Width="100%" Height="400px" runat="server" ID="CstPXTab9">
    <Items>
      <px:PXTabItem Text="General" >
<Template>
          <px:PXFormView Width="100%" Height="100%" runat="server" ID="CstFormView24" DataMember="CurrentDocument">
            <Template>
              <px:PXLayoutRule runat="server" ID="CstPXLayoutRule29" StartRow="True" ></px:PXLayoutRule>
              <px:PXLayoutRule GroupCaption="CEB/LECO" runat="server" ID="CstPXLayoutRule35" StartColumn="True" ></px:PXLayoutRule>
	<px:PXDropDown LabelWidth="180" Size="S" CommitChanges="True" runat="server" ID="CstPXDropDown19" DataField="DistributionUtility" ></px:PXDropDown>
              <px:PXSelector LabelWidth="180" Size="S" Enabled="" runat="server" ID="CstPXSelector37" DataField="Lecooffice" ></px:PXSelector>
              <px:PXSelector CommitChanges="True" LabelWidth="180" Size="S" Enabled="" runat="server" ID="CstPXSelector36" DataField="CEBOffice" ></px:PXSelector>
              <px:PXLayoutRule GroupCaption="GPS COORDINATES" runat="server" ID="CstPXLayoutRule38" StartColumn="True" ></px:PXLayoutRule>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit421" DataField="GPSCoordinates" ></px:PXTextEdit>
              <px:PXNumberEdit Size="S" runat="server" ID="CstPXNumberEdit39" DataField="Latitude" ></px:PXNumberEdit>
              <px:PXNumberEdit Size="S" runat="server" ID="CstPXNumberEdit40" DataField="Longitude" ></px:PXNumberEdit>
	<px:PXButton runat="server" ID="btnViewAddressOnMap" Text="View on Map" CommandSourceID="ds" CommandName="ViewAddressOnMap" ></px:PXButton>
              <px:PXLayoutRule GroupCaption="CONTACT DETAILS" runat="server" ID="CstPXLayoutRule41" StartColumn="True" ></px:PXLayoutRule>
              <px:PXTextEdit runat="server" ID="CstPXTextEdit43" DataField="PhoneNo" ></px:PXTextEdit>
              <px:PXTextEdit Enabled="True" runat="server" ID="CstPXTextEdit42" DataField="MainContact" ></px:PXTextEdit>
              <px:PXLayoutRule runat="server" ID="CstPXLayoutRule34" StartRow="True" ></px:PXLayoutRule>
              <px:PXLayoutRule GroupCaption="3 - PHASE CONNECTION INFO" runat="server" ID="CstPXLayoutRule44" StartColumn="True" ></px:PXLayoutRule>
              <px:PXNumberEdit LabelWidth="180" runat="server" ID="CstPXNumberEdit49" DataField="ThirtyAConnections" ></px:PXNumberEdit>
              <px:PXNumberEdit LabelWidth="180" runat="server" ID="CstPXNumberEdit48" DataField="SixtyAConnections" ></px:PXNumberEdit>
              <px:PXNumberEdit LabelWidth="180" runat="server" ID="CstPXNumberEdit47" DataField="Nearest3PhasePointDist" ></px:PXNumberEdit>
              <px:PXNumberEdit LabelWidth="180" runat="server" ID="CstPXNumberEdit46" DataField="FeederLength" ></px:PXNumberEdit>
              <px:PXTextEdit LabelWidth="180" Size="S" runat="server" ID="CstPXTextEdit45" DataField="ContractDemand" ></px:PXTextEdit>
              <px:PXLayoutRule GroupCaption="TRANSFORMATION INFO" runat="server" ID="CstPXLayoutRule50" StartColumn="True" ></px:PXLayoutRule>
              <px:PXNumberEdit runat="server" ID="CstPXNumberEdit51" DataField="TransformerCapacity" ></px:PXNumberEdit>
              <px:PXNumberEdit runat="server" ID="CstPXNumberEdit52" DataField="TransformerDistance" ></px:PXNumberEdit>
              <px:PXTextEdit Size="S" runat="server" ID="CstPXTextEdit53" DataField="TransformerLocation" ></px:PXTextEdit></Template></px:PXFormView></Template></px:PXTabItem>
	<px:PXTabItem Text="Buildings">
		<Template>
			<px:PXGrid BorderWidth="0px" Width="100%" Height="700px" SkinID="Details" runat="server" ID="CstPXGrid11">
				<Levels>
					<px:PXGridLevel DataMember="Buildings" >
						<Columns>
							<px:PXGridColumn DataField="Building" Width="140" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Width" Width="100" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Length" Width="100" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Height" Width="100" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Stories" Width="70" ></px:PXGridColumn>
							<px:PXGridColumn DataField="RoofMaterial" Width="140" ></px:PXGridColumn>
							<px:PXGridColumn DataField="BuildingConditions" Width="140" ></px:PXGridColumn>
							<px:PXGridColumn DataField="RoofCondition" Width="140" ></px:PXGridColumn>
							<px:PXGridColumn DataField="RepairPercentage" Width="220" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Orientation" Width="120" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Pitch" Width="70" ></px:PXGridColumn>
							<px:PXGridColumn Type="CheckBox" DataField="Shading" Width="60" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
	<px:PXTabItem Text="Approvals" >
		<Template>
			<px:PXGrid Width="100%" Height="700px" SkinID="Details" runat="server" ID="CstPXGrid38">
				<Levels>
					<px:PXGridLevel DataMember="Approval">
						<Columns>
							<px:PXGridColumn DataField="OwnerID" Width="70" ></px:PXGridColumn>
							<px:PXGridColumn DataField="ApprovedByEmployee__AcctName" Width="220" ></px:PXGridColumn>
							<px:PXGridColumn DataField="BAccountID_BAccount_acctName" Width="220" ></px:PXGridColumn>
							<px:PXGridColumn DataField="WorkgroupID" Width="180" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Reason" Width="280" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Status" Width="70" ></px:PXGridColumn>
							<px:PXGridColumn DataField="ApproveDate" Width="90" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
	<px:PXTabItem Visible="True" Text="Attributes">
		<Template>
			<px:PXGrid MatrixMode="True" NoteIndicator="True" DataSourceID="ds" Width="100%" Height="100%" Caption="Attributes" SkinID="DetailsInTab" runat="server" ID="CstPXGrid40">
				<Levels>
					<px:PXGridLevel DataMember="Answers" >
						<Columns>
							<px:PXGridColumn TextField="AttributeID_description" DataField="AttributeID" Width="120" ></px:PXGridColumn>
							<px:PXGridColumn Type="CheckBox" DataField="IsRequired" Width="60" ></px:PXGridColumn>
							<px:PXGridColumn RenderEditorText="True" DataField="Value" Width="280" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
				<Mode AutoInsert="True" AllowDelete="False" AllowColSizing="True" AllowAddNew="False" ></Mode>
				<Mode AllowDelete="True" ></Mode></px:PXGrid></Template></px:PXTabItem></Items></px:PXTab></asp:Content>