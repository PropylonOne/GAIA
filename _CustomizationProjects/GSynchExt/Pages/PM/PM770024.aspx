<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PM770024.aspx.cs" Inherits="Page_PM770024" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource EnableAttributes="True" ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.SolarSiteEntry"
        PrimaryView="Sites"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Sites" Width="100%" Height="210px" AllowAutoHide="false">
    <Template>
  <px:PXSelector runat="server" ID="CstPXMaskEdit47" DataField="SolarSiteCD" ></px:PXSelector>
	<px:PXSelector runat="server" ID="CstPXSelector12" DataField="SiteType" ></px:PXSelector>
  <px:PXDropDown runat="server" ID="CstPXDropDown46" DataField="SiteStatus" ></px:PXDropDown>
  <px:PXTextEdit runat="server" ID="CstPXTextEdit144" DataField="CEBAccount" ></px:PXTextEdit>
  <px:PXLayoutRule runat="server" ID="CstLayoutRule2" ColumnSpan="2" ></px:PXLayoutRule>
  <px:PXTextEdit runat="server" ID="CstPXTextEdit61" DataField="SiteName" ></px:PXTextEdit>
  <px:PXLayoutRule runat="server" ID="CstLayoutRule10" ColumnSpan="2" ></px:PXLayoutRule>
  <px:PXTextEdit runat="server" ID="CstPXTextEdit6" DataField="Address" ></px:PXTextEdit>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule86" StartColumn="True" ></px:PXLayoutRule>
  <px:PXSelector AllowEdit="False" AllowAddNew="False" CommitChanges="True" runat="server" ID="CstPXTextEdit51" DataField="Province" ></px:PXSelector>
  <px:PXSelector AllowEdit="False" AllowAddNew="False" runat="server" ID="CstPXSelector49" DataField="District" ></px:PXSelector>
  <px:PXSelector AutoRefresh="True" AllowEdit="False" AllowAddNew="False" runat="server" ID="CstPXMaskEdit87" DataField="ClusterID" ></px:PXSelector>
  <px:PXSelector AutoRefresh="True" AllowEdit="False" AllowAddNew="False" runat="server" ID="CstPXMaskEdit50" DataField="PhaseID" ></px:PXSelector>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule5" StartColumn="True" ></px:PXLayoutRule>
  <px:PXSegmentMask runat="server" ID="CstPXSegmentMask8" DataField="EPCVendorID" ></px:PXSegmentMask>
  <px:PXSelector runat="server" ID="CstPXSelector52" DataField="AreaEngineer" ></px:PXSelector></Template>
  
  <CallbackCommands>
    <ActivityCheck CommitChanges="True" ></ActivityCheck></CallbackCommands></px:PXFormView>
  <px:PXTab Height="500px" Width="100%" runat="server" ID="CstPXTab52" DataMember="Site">
    <Items>
  <px:PXTabItem Text="General">
    <Template>
      <px:PXLayoutRule runat="server" ID="CstPXLayoutRule221" StartGroup="True" GroupCaption="Project Data" ></px:PXLayoutRule>
      <px:PXSelector Size="200" LabelWidth="180px" runat="server" ID="CstPXSelector54" DataField="ProjectManager" ></px:PXSelector>
      <px:PXDateTimeEdit Size="200" LabelWidth="180px" Width="" runat="server" ID="CstPXDateTimeEdit14" DataField="ProjPlannedStartDate" ></px:PXDateTimeEdit>
      <px:PXSegmentMask LabelWidth="180px" Size="200" Width="" runat="server" ID="CstPXSegmentMask15" DataField="TemplateID" ></px:PXSegmentMask>
      <px:PXSelector AllowEdit="True" Size="200" LabelWidth="180px" runat="server" ID="CstPXSelector140" DataField="ProjectID" ></px:PXSelector>
      <px:PXLayoutRule LabelsWidth="180" ColumnSpan="1" ControlSize="M" ColumnWidth="" runat="server" ID="CstPXLayoutRule20" StartColumn="True" ></px:PXLayoutRule>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule23" StartGroup="True" GroupCaption="Other" ></px:PXLayoutRule>
	<px:PXSelector runat="server" ID="CstPXSelector13" DataField="SiteDesignBy" ></px:PXSelector>
	<px:PXLayoutRule GroupCaption="Date Summary" runat="server" ID="CstPXLayoutRule25" StartRow="True" ></px:PXLayoutRule>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule24" StartColumn="True" ></px:PXLayoutRule>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit29" DataField="StartDate" ></px:PXDateTimeEdit>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit28" DataField="EndDate" ></px:PXDateTimeEdit>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule26" StartColumn="True" ></px:PXLayoutRule>
	<px:PXLabel runat="server" ID="CstLabel38" ></px:PXLabel>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit42" DataField="ConstructionStartDate" ></px:PXDateTimeEdit>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit32" DataField="ConstructionEndDate" ></px:PXDateTimeEdit>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule27" StartColumn="True" ></px:PXLayoutRule>
	<px:PXLabel runat="server" ID="CstLabel40" ></px:PXLabel>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit36" DataField="ConnectedtoGridDate" ></px:PXDateTimeEdit>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit37" DataField="CommissionedDate" ></px:PXDateTimeEdit>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit34" DataField="InServiceDate" ></px:PXDateTimeEdit></Template></px:PXTabItem>
  <px:PXTabItem Text="Survey Summary" >
    <Template>
      <px:PXGrid Height="100%" Width="100%" DataSourceID="ds" CaptionVisible="True" SkinID="Inquire" runat="server" ID="Surveys">
        <Levels>
          <px:PXGridLevel DataMember="SiteSurvey" >
            <Columns>
              <px:PXGridColumn Type="NotSet" DataField="SurveyID" Width="140" ></px:PXGridColumn>
	<px:PXGridColumn DataField="SiteStatus" Width="140" ></px:PXGridColumn>
              <px:PXGridColumn DataField="Description" Width="280" ></px:PXGridColumn>
              <px:PXGridColumn DataField="StartDate" Width="90" ></px:PXGridColumn>
	<px:PXGridColumn DataField="SiteType" Width="120" ></px:PXGridColumn>
              <px:PXGridColumn DataField="EndDate" Width="90" ></px:PXGridColumn>
              <px:PXGridColumn Type="CheckBox" DataField="SurveyApproved" Width="60" ></px:PXGridColumn>
              <px:PXGridColumn DataField="PhoneNo" Width="140" ></px:PXGridColumn>
              <px:PXGridColumn DataField="MainContact" Width="140" ></px:PXGridColumn></Columns>
	<RowTemplate>
		<px:PXSelector runat="server" ID="CstPXSelector2" DataField="SurveyID" AllowEdit="True" TextMode="ReadOnly" ></px:PXSelector></RowTemplate></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
	<px:PXTabItem Text="Other Data">
		<Template>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule17" StartRow="True" ></px:PXLayoutRule>
			<px:PXNumberEdit LabelWidth="180px" Width="100px" runat="server" ID="CstPXNumberEdit43" DataField="ACCapacity" ></px:PXNumberEdit>
			<px:PXNumberEdit CommitChanges="True" LabelWidth="180px" Width="100px" runat="server" ID="CstPXNumberEdit5" DataField="SiteCapacity" ></px:PXNumberEdit>
			<px:PXNumberEdit Size="SM" LabelWidth="180px" Style='width:;' runat="server" ID="CstPXNumberEdit19" DataField="EstSiteValue" ></px:PXNumberEdit>
			<px:PXSegmentMask Size="SM" Style='width:;' LabelWidth="180px" runat="server" ID="CstPXSegmentMask4" DataField="DfltWareHouse" ></px:PXSegmentMask></Template></px:PXTabItem>
	<px:PXTabItem Text="Attributes" >
		<Template>
			<px:PXGrid NoteIndicator="True" MatrixMode="True" SkinID="DetailsInTab" Width="100%" Height="100%" runat="server" ID="CstPXGrid45">
				<Levels>
					<px:PXGridLevel DataMember="Answers" >
						<Columns>
							<px:PXGridColumn TextField="AttributeID_description" DataField="AttributeID" Width="120" ></px:PXGridColumn>
							<px:PXGridColumn DataField="IsRequired" Width="60" ></px:PXGridColumn>
							<px:PXGridColumn DataField="Value" Width="280" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem></Items></px:PXTab></asp:Content>
  <asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
<px:PXSmartPanel AutoCallBack-Command="Refresh" CallBackMode-PostData="Page" DesignView="Hidden" AutoCallBack-Target="formInveAttr" AutoCallBack-Enabled="True" LoadOnDemand="True" CreateOnDemand="False" Key="PhaseDialog" runat="server" ID="SmartPanelInvAttr" Caption="Change Phase ID" CaptionVisible="True" >
    <px:PXFormView DataSourceID="ds" runat="server" ID="formPhaseDialog" CaptionVisible="False" DataMember="PhaseDialog" >
      <Template>
        <px:PXSelector runat="server" ID="edPhaseID" DataField="PhaseID" ></px:PXSelector>
    </Template></px:PXFormView>
    <px:PXPanel SkinID="Buttons" runat="server" ID="panelAttrButtons" >
      <px:PXButton CommandName="UpdatePhaseID" CommandSourceID="ds" runat="server" ID="pxButtonOK" DialogResult="OK" Text="OK" ></px:PXButton></px:PXPanel></px:PXSmartPanel>
	<px:PXSmartPanel runat="server" DesignView="Hidden" ID="SmartPanel22" LoadOnDemand="True" CreateOnDemand="False" CaptionVisible="True" Caption="Change Solar Site ID" Key="SiteDialog" AutoCallBack-Enabled="True" AutoCallBack-Command="Refresh" CallBackMode-PostData="Page">
		<px:PXFormView runat="server" ID="formSiteDialog" CaptionVisible="False" DataSourceID="ds" DataMember="SiteDialog">
			<Template>
				<px:PXTextEdit runat="server" ID="edSiteID88" DataField="SiteID" /></Template></px:PXFormView>
		<px:PXPanel runat="server" ID="panelAttrButtons22" SkinID="Buttons">
			<px:PXButton runat="server" ID="pxButtonOK22" Text="OK" DialogResult="OK" CommandSourceID="ds" CommandName="UpdateSolarSiteID" /></px:PXPanel></px:PXSmartPanel></asp:Content>