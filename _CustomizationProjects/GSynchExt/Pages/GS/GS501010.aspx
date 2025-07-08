<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS501010.aspx.cs" Inherits="Page_GS501010" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource PageLoadBehavior="InsertRecord" ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.SolarSiteInverterDataMaint"
        PrimaryView="MasterView"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
  <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Primary" AllowAutoHide="false">
    <Levels>
      <px:PXGridLevel DataMember="MasterView">
          <Columns>
	<px:PXGridColumn DataField="TransDate" Width="90" ></px:PXGridColumn>
	<px:PXGridColumn DataField="SolarSiteID" Width="70" ></px:PXGridColumn>
	<px:PXGridColumn DataField="PlantID" Width="70" ></px:PXGridColumn>
	<px:PXGridColumn DataField="InverterQty" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn AllowUpdate="False" DataField="GenDate" Width="90" ></px:PXGridColumn>
	<px:PXGridColumn DataField="Uom" Width="72" ></px:PXGridColumn></Columns>
      </px:PXGridLevel>
    </Levels>
    <AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
    <ActionBar >
    </ActionBar>
  
	<Mode AllowUpload="True" /></px:PXGrid>
</asp:Content>