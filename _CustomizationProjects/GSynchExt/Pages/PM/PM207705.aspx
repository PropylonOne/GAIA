<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PM207705.aspx.cs" Inherits="Page_PM207705" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.SSSurveyAttributeGroupMaint"
        PrimaryView="Filter"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView Caption="Attribute Group" ID="form" runat="server" DataSourceID="ds" DataMember="Filter" Width="100%" Height="50px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXDropDown LabelWidth="50px" Size="M" CommitChanges="True" runat="server" ID="CstPXDropDown1" DataField="ClassID" ></px:PXDropDown></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid Caption="Attributes" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="Mapping">
			    <Columns>
				<px:PXGridColumn Type="CheckBox" DataField="IsActive" Width="60" ></px:PXGridColumn>
				<px:PXGridColumn DataField="AttributeID" Width="120" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Description" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SortOrder" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn Type="CheckBox" DataField="Required" Width="60" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ControlType" Width="70" ></px:PXGridColumn></Columns>
			
				<RowTemplate>
					<px:PXLayoutRule runat="server" ID="CstPXLayoutRule2" StartColumn="True" ></px:PXLayoutRule>
					<px:PXCheckBox runat="server" ID="CstPXCheckBox6" DataField="IsActive" ></px:PXCheckBox>
					<px:PXSelector runat="server" ID="CstPXSelector3" DataField="AttributeID" ></px:PXSelector>
					<px:PXNumberEdit runat="server" ID="CstPXNumberEdit8" DataField="SortOrder" ></px:PXNumberEdit>
					<px:PXTextEdit runat="server" ID="CstPXTextEdit5" DataField="Description" ></px:PXTextEdit>
					<px:PXCheckBox runat="server" ID="CstPXCheckBox7" DataField="Required" ></px:PXCheckBox>
					<px:PXDropDown runat="server" ID="CstPXDropDown4" DataField="ControlType" ></px:PXDropDown></RowTemplate></px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
</asp:Content>