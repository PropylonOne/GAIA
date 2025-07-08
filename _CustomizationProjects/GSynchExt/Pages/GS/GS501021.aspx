<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS501021.aspx.cs" Inherits="Page_GS501021" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.SolarRevGenEntry"
        PrimaryView="Document"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Document" Width="100%" Height="" AllowAutoHide="false">
    <Template>
      <px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
	<px:PXSelector AllowEdit="False" runat="server" ID="CstPXSelector7" DataField="SolarRevGenID" ></px:PXSelector>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit16" DataField="TransDate" ></px:PXDateTimeEdit>
	<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit3" DataField="InvoiceDate" ></px:PXDateTimeEdit>
	<px:PXSelector CommitChanges="True" runat="server" ID="CstPXSelector4" DataField="Period" ></px:PXSelector>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule9" StartColumn="True" ></px:PXLayoutRule>
	<px:PXSegmentMask AllowEdit="True" AllowAddNew="True" runat="server" ID="CstPXSegmentMask1" DataField="CustomerID" ></px:PXSegmentMask>
	<px:PXSelector TextMode="Editable" AllowEdit="True" AllowAddNew="" runat="server" ID="CstPXSelector5" DataField="Province" ></px:PXSelector>
	<px:PXDropDown runat="server" ID="CstPXDropDown6" DataField="Status" ></px:PXDropDown>
	<px:PXLayoutRule LabelsWidth="150px" runat="server" ID="CstPXLayoutRule10" StartColumn="True" ></px:PXLayoutRule>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit21" DataField="Ssrefnbr" ></px:PXTextEdit>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit22" DataField="Rrrefnbr" />
	<px:PXTextEdit runat="server" ID="CstPXTextEdit23" DataField="SiteBillRefNbr" /></Template>
  </px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
  <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
    <Levels>
      <px:PXGridLevel DataMember="SiteDetails">
          <Columns>
	<px:PXGridColumn DataField="LineNbr" Width="70" />
	<px:PXGridColumn Type="CheckBox" DataField="Active" Width="60" ></px:PXGridColumn>
	<px:PXGridColumn Type="CheckBox" DataField="Processed" Width="60" ></px:PXGridColumn>
	<px:PXGridColumn Type="CheckBox" DataField="Error" Width="60" ></px:PXGridColumn>
	<px:PXGridColumn DataField="Remark" Width="280" ></px:PXGridColumn>
	<px:PXGridColumn DataField="BranchID" Width="140" ></px:PXGridColumn>
	<px:PXGridColumn DataField="SolarSiteID" Width="108" ></px:PXGridColumn>
	<px:PXGridColumn DataField="SiteStatus" Width="120" ></px:PXGridColumn>
	<px:PXGridColumn DataField="CEBAccount" Width="140" ></px:PXGridColumn>
	<px:PXGridColumn DataField="UoM" Width="72" ></px:PXGridColumn>
	<px:PXGridColumn DataField="InverterQty" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="EstQty" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="ActQty" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="SiteBillAmount" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="RoofRentPercnt" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="RoofRentAmount" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="Tariff" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="SolarSalesAmount" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="StampDutyAmount" Width="100" ></px:PXGridColumn></Columns>
      </px:PXGridLevel>
    </Levels>
    <AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
    <ActionBar >
    
	<CustomItems>
		<px:PXToolBarButton Text="Load Sites" Tooltip="Load Sites">
			<AutoCallBack Target="ds" Command="LoadSites">
				<Behavior CommitChanges="True" ></Behavior></AutoCallBack></px:PXToolBarButton></CustomItems></ActionBar>
  
	<Mode AllowUpload="True" /></px:PXGrid>
</asp:Content>