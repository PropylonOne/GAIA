<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PM107730.aspx.cs" Inherits="Page_PM107730" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.RRSetup"
        PrimaryView="rrSetup"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
  <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
    <Levels>
      <px:PXGridLevel DataMember="rrSetup">
          <Columns>
	<px:PXGridColumn DataField="Province" Width="180" ></px:PXGridColumn>
	<px:PXGridColumn DataField="ExpDate" Width="90" ></px:PXGridColumn>
	<px:PXGridColumn DataField="Rrrate" Width="100" ></px:PXGridColumn>
	<px:PXGridColumn DataField="Tstamp" Width="70" ></px:PXGridColumn></Columns>
      </px:PXGridLevel>
    </Levels>
    <AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
    <ActionBar >
    </ActionBar>
  </px:PXGrid>
</asp:Content>