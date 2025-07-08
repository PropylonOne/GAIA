<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PO301010.aspx.cs" Inherits="Page_PO301010" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>
 
<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PX.Objects.PO.ISGAPOScheduleEntry"
        PrimaryView="Schedule"
>
<CallbackCommands>
<px:PXDSCallbackCommand Name="Save" CommitChanges="True" ></px:PXDSCallbackCommand>
  <px:PXDSCallbackCommand Visible="False" Name="Insert" ></px:PXDSCallbackCommand>
  <px:PXDSCallbackCommand Visible="False" Name="CopyPaste" ></px:PXDSCallbackCommand></CallbackCommands>
</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Schedule" Width="100%" Height="100px" AllowAutoHide="false">
<Template>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule5" StartColumn="True" ></px:PXLayoutRule>
  <px:PXDropDown Enabled="False" runat="server" ID="edOrderType" DataField="OrderType" ></px:PXDropDown>
  <px:PXSelector Enabled="False" AllowEdit="False" runat="server" ID="CstPXSelector9" DataField="OrderNbr" ></px:PXSelector>
  <px:PXLayoutRule runat="server" ID="CstPXLayoutRule12" StartColumn="True" ></px:PXLayoutRule></Template>
</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
  <px:PXGrid SyncPosition="True" runat="server" ID="grid" Height="150px" SkinID="Details" Width="100%" AllowAutoHide="false" DataSourceID="ds">
    <AutoSize Enabled="True" Container="Window" MinHeight="150" ></AutoSize>
    <Levels>
      <px:PXGridLevel DataMember="ScheduleDetails">
        <Columns>
          <px:PXGridColumn DataField="POLineNbr" Width="70" CommitChanges="True" ></px:PXGridColumn>
          <px:PXGridColumn DataField="InventoryID" Width="70" CommitChanges="True" ></px:PXGridColumn>
          <px:PXGridColumn DataField="ItemDescr" Width="280" ></px:PXGridColumn>
          <px:PXGridColumn DataField="UOM" Width="72" ></px:PXGridColumn>
          <px:PXGridColumn DataField="ScheduleNbr" ></px:PXGridColumn>
          <px:PXGridColumn DataField="POLineQty" Width="100" ></px:PXGridColumn>
          <px:PXGridColumn CommitChanges="True" DataField="UnscheduledQty" Width="100" ></px:PXGridColumn>
          <px:PXGridColumn DataField="ShipmentQty" ></px:PXGridColumn>
          <px:PXGridColumn CommitChanges="True" DataField="ScheduleQty" Width="100" ></px:PXGridColumn>
          <px:PXGridColumn DataField="FactoryDeliveryDate" ></px:PXGridColumn>
          <px:PXGridColumn DataField="FactoryDeliveryDone" Type="CheckBox" ></px:PXGridColumn>
          <px:PXGridColumn DataField="PortArrivalDate" ></px:PXGridColumn>
          <px:PXGridColumn DataField="PortArrivalDone" Type="CheckBox" ></px:PXGridColumn>
          <px:PXGridColumn DataField="ClearanceDate" ></px:PXGridColumn>
          <px:PXGridColumn DataField="ClearanceDone" Type="CheckBox" ></px:PXGridColumn></Columns>
        <RowTemplate>
          <px:PXSelector runat="server" ID="CstPXSelector1" DataField="POLineNbr" AutoRefresh="True" ></px:PXSelector></RowTemplate></px:PXGridLevel></Levels>
    <ActionBar>
      <CustomItems>
        <px:PXToolBarButton Text="Add Delivery" CommandName="AddDelivery" Enabled="True" Visible="True" CommandSourceID="ds">
          <AutoCallBack Target="ds" ></AutoCallBack></px:PXToolBarButton></CustomItems></ActionBar></px:PXGrid></asp:Content>