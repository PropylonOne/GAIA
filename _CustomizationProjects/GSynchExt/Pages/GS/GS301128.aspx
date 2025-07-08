<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS301128.aspx.cs" Inherits="Page_GS301128" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.ServiceMaterialRequestEntry"
        PrimaryView="MatlRequest"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="MatlRequest" Width="100%" Height="100px" AllowAutoHide="false">
    <Template>
      <px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
	<px:PXSelector runat="server" ID="CstPXSelector1" DataField="ReqBy" />
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit2" DataField="ReqDate" />
	<px:PXSelector runat="server" ID="CstPXSelector3" DataField="ReqNbr" />
	<px:PXDropDown runat="server" ID="CstPXDropDown4" DataField="ReqType" />
	<px:PXTab runat="server" ID="CstPXTab5">
		<Items>
			<px:PXTabItem Text="TabItem1" /></Items></px:PXTab>
	<px:PXTab runat="server" ID="CstPXTab6">
		<Items>
			<px:PXTabItem Text="TabItem1" /></Items></px:PXTab></Template>
  </px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
  <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
    <Levels>
      <px:PXGridLevel DataMember="MatlRequestDet">
          <Columns>
	<px:PXGridColumn DataField="UoM" Width="72" />
	<px:PXGridColumn DataField="RequestedQty" Width="100" />
	<px:PXGridColumn DataField="ReqNbr" Width="140" />
	<px:PXGridColumn DataField="IssueQty" Width="100" />
	<px:PXGridColumn DataField="InventoryID" Width="70" />
	<px:PXGridColumn DataField="ActualQty" Width="100" /></Columns>
      </px:PXGridLevel>
    </Levels>
    <AutoSize Container="Window" Enabled="True" MinHeight="150" />
    <ActionBar >
    </ActionBar>
  </px:PXGrid>
</asp:Content>