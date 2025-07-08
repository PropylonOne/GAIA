<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PM503021.aspx.cs" Inherits="Page_PM503021" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PX.Objects.FS.ConvertItemsToEquipmentProcessGS"
        PrimaryView="Filter"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView TabIndex="3700" ID="form" runat="server" DataSourceID="ds" DataMember="Filter" Width="100%" Height="100px" AllowAutoHide="false">
    <Template>
      <px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
      <px:PXSelector CommitChanges="True" runat="server" ID="CstPXSelector2" DataField="ItemClassID" ></px:PXSelector>
      <px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit1" DataField="Date" ></px:PXDateTimeEdit></Template>
  </px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
  <px:PXGrid AdjustPageSize="Auto" AllowPaging="True" BatchUpdate="True" KeepPosition="True" SyncPosition="True" TabIndex="500" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Inquire" AllowAutoHide="false">
    <Levels>
      <px:PXGridLevel DataMember="InventoryItems">
          <Columns>
        <px:PXGridColumn Type="CheckBox" DataField="Selected" Width="60" ></px:PXGridColumn>
        <px:PXGridColumn DataField="InventoryCD" Width="70" ></px:PXGridColumn>
        <px:PXGridColumn DataField="InventoryCD_description" Width="280" ></px:PXGridColumn>
        <px:PXGridColumn DataField="LotSerialNumber" Width="140" ></px:PXGridColumn>
        <px:PXGridColumn DataField="ItemClassID" Width="140" ></px:PXGridColumn>
        <px:PXGridColumn DataField="SiteID" Width="140" ></px:PXGridColumn>
        <px:PXGridColumn DataField="ProjectID" Width="70" ></px:PXGridColumn></Columns>
      </px:PXGridLevel>
    </Levels>
    <AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
    <ActionBar >
    </ActionBar>
  </px:PXGrid>
</asp:Content>