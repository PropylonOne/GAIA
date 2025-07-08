<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PO301015.aspx.cs" Inherits="Page_PO301015" Title="PO Schedule Delivery" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>
<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PX.Objects.PO.ISGAPOScheduleDeliveryEntry"
        PrimaryView="Filter">
        <CallbackCommands>
            <px:PXDSCallbackCommand Name="Save" CommitChanges="True" ></px:PXDSCallbackCommand>
  <px:PXDSCallbackCommand Visible="False" Name="Insert" ></px:PXDSCallbackCommand>
  <px:PXDSCallbackCommand Visible="False" Name="CopyPaste" ></px:PXDSCallbackCommand>
  <px:PXDSCallbackCommand Visible="False" Name="CancelClose" ></px:PXDSCallbackCommand></CallbackCommands>
    </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Filter" Width="100%" AllowAutoHide="false">
        <Template>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule16" StartRow="True" ></px:PXLayoutRule>
  <px:PXSelector Enabled="False" runat="server" ID="CstPXSelector22" DataField="OrderType" ></px:PXSelector>
  <px:PXSelector Enabled="False" CommitChanges="True" AllowEdit="False" runat="server" ID="CstPXSelector11" DataField="OrderNbr" ></px:PXSelector>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule6" StartColumn="True" ></px:PXLayoutRule>
  <px:PXNumberEdit TextAlign="Left" Enabled="False" runat="server" ID="CstPXNumberEdit26" DataField="ScheduleNbr" ></px:PXNumberEdit>
  <px:PXSelector Enabled="False" runat="server" ID="CstPXSelector27" DataField="POLineNbr" ></px:PXSelector>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule17" StartColumn="True" ></px:PXLayoutRule>
  <px:PXNumberEdit runat="server" ID="CstPXNumberEdit21" DataField="POLineQty" ></px:PXNumberEdit></Template>
    </px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
  <px:PXGrid runat="server" ID="grid" Height="150px" SkinID="Details" Width="100%" AllowAutoHide="false" DataSourceID="ds">
    <AutoSize Enabled="True" Container="Window" MinHeight="150" />
    <Levels>
      <px:PXGridLevel DataMember="POScheduleDeliveryDetails">
        <RowTemplate>
          <px:PXSelector runat="server" ID="CstPXSelector9" DataField="POLineNbr" AutoRefresh="True" ></px:PXSelector>
          <px:PXNumberEdit runat="server" ID="CstPXNumberEdit10" DataField="DeliveryNbr" ></px:PXNumberEdit></RowTemplate>
        <Columns>
          <px:PXGridColumn AllowMove="False" AllowDragDrop="False" DataField="DeliveryNbr" Width="70" CommitChanges="True" ></px:PXGridColumn>
          <px:PXGridColumn AllowMove="False" AllowDragDrop="False" DataField="InventoryID" Width="70" ></px:PXGridColumn>
          <px:PXGridColumn AllowMove="False" CommitChanges="True" DataField="DeliveryQty" Width="100" ></px:PXGridColumn>
          <px:PXGridColumn AllowMove="False" AllowDragDrop="False" DataField="ItemDescr" Width="280" ></px:PXGridColumn>
          <px:PXGridColumn AllowMove="False" AllowDragDrop="False" DataField="UOM" Width="72" ></px:PXGridColumn>
          <px:PXGridColumn AllowMove="False" CommitChanges="True" DataField="ScheduleQty" Width="100" ></px:PXGridColumn>
          <px:PXGridColumn AllowMove="False" CommitChanges="True" AllowDragDrop="False" DataField="SiteID" Width="140" ></px:PXGridColumn>
          <px:PXGridColumn AllowMove="False" CommitChanges="True" DataField="UnscheduledQty" Width="100" ></px:PXGridColumn>
          <px:PXGridColumn AllowMove="False" AllowDragDrop="False" DataField="WarehouseArrivalDate" Width="90" ></px:PXGridColumn>
          <px:PXGridColumn AllowMove="False" AllowDragDrop="False" DataField="Done" Type="CheckBox" Width="60" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></asp:Content>