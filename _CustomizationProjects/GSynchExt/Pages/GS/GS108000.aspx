<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS108000.aspx.cs" Inherits="Page_GS108000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.GSBOQSetupMaint"
        PrimaryView="BOQSetup"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView Height="100px" ID="form" runat="server" DataSourceID="ds" DataMember="BOQSetup" Width="100%" AllowAutoHide="false">
    <Template>
      <px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
	<px:PXCheckBox runat="server" ID="CstPXCheckBox2" DataField="ApprovalMap" ></px:PXCheckBox>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit1" DataField="RevisionID" ></px:PXTextEdit>
	<px:PXSelector runat="server" ID="CstPXSelector1" DataField="NumberingID" ></px:PXSelector>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule9" StartGroup="True" GroupCaption="Minimum Unit" ></px:PXLayoutRule>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit8" DataField="Minuom" ></px:PXTextEdit>
	<px:PXNumberEdit runat="server" ID="CstPXNumberEdit6" DataField="MinCapacity" ></px:PXNumberEdit>
	<px:PXLayoutRule runat="server" ID="CstPXLayoutRule10" StartGroup="True" GroupCaption="Maximum Unit" ></px:PXLayoutRule>
	<px:PXTextEdit runat="server" ID="CstPXTextEdit5" DataField="Maxuom" ></px:PXTextEdit>
	<px:PXNumberEdit runat="server" ID="CstPXNumberEdit4" DataField="MaxCapacity" ></px:PXNumberEdit>
	<px:PXNumberEdit runat="server" ID="CstPXNumberEdit7" DataField="MinUnitConvertion" ></px:PXNumberEdit></Template>
    <AutoSize Container="Window" Enabled="True" MinHeight="200" ></AutoSize>
  </px:PXFormView>
	<px:PXTab Width="100%" Height="500px" DataMember="SetupApproval" runat="server" ID="CstPXTab12">
		<Items>
			<px:PXTabItem Text="Approval">
				<Template>
					<px:PXGrid Width="100%" Height="300px" SkinID="Details" runat="server" ID="CstPXGrid13">
						<Levels>
							<px:PXGridLevel DataMember="SetupApproval" >
								<Columns>
									<px:PXGridColumn Type="CheckBox" DataField="IsActive" Width="60" ></px:PXGridColumn>
									<px:PXGridColumn DataField="AssignmentMapID" Width="220" ></px:PXGridColumn>
									<px:PXGridColumn DataField="AssignmentNotificationID" Width="280" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem></Items></px:PXTab></asp:Content>