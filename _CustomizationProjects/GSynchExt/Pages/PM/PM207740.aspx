<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PM207740.aspx.cs" Inherits="Page_PM207740" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.SiteTypeMaint"
        PrimaryView="SiteTypeview"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
  <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Primary" AllowAutoHide="false">
    <Levels>
      <px:PXGridLevel DataMember="SiteTypeview">
          <Columns>
  <px:PXGridColumn DataField="SSiteType" Width="120" />
  <px:PXGridColumn DataField="Description" Width="220" /></Columns>
      </px:PXGridLevel>
    </Levels>
    <AutoSize Container="Window" Enabled="True" MinHeight="150" />
    <ActionBar >
    </ActionBar>
  </px:PXGrid>
</asp:Content>