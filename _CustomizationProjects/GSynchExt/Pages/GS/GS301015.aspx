<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS301015.aspx.cs" Inherits="Page_GS301015" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource SkinID="Details" ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.FundTransferRequestEntry"
        PrimaryView="EmpRequest"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="EmpRequest" Width="100%" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule17" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector6" DataField="ReqNbr" ></px:PXSelector>
			<px:PXDropDown Enabled="False" runat="server" ID="CstPXTextEdit7" DataField="ReqType" ></px:PXDropDown>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule11" Merge="True" ></px:PXLayoutRule>
			<px:PXDropDown runat="server" ID="CstPXDropDown8" DataField="Status" ></px:PXDropDown>
			<px:PXCheckBox runat="server" ID="CstPXCheckBox14" DataField="Approved" ></px:PXCheckBox>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule12" Merge="False" ></px:PXLayoutRule>
			<px:PXNumberEdit CommitChanges="True" runat="server" ID="CstPXNumberEdit1" DataField="Amount" ></px:PXNumberEdit>
			<px:PXNumberEdit Enabled="False" runat="server" ID="CstPXNumberEdit19" DataField="OpenBalance" ></px:PXNumberEdit>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule16" ColumnSpan="2" ></px:PXLayoutRule>
			<px:PXTextEdit Size="" Width="" runat="server" ID="CstPXTextEdit3" DataField="Description" ></px:PXTextEdit>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule18" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSelector Enabled="False" runat="server" ID="CstPXNumberEdit4" DataField="ReqBy" ></px:PXSelector >
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit5" DataField="ReqDate" ></px:PXDateTimeEdit>
			<px:PXSelector runat="server" ID="CstPXNumberEdit2" DataField="CashAccntID" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector15" DataField="Notify" ></px:PXSelector></Template>
		<AutoSize Container="Window" Enabled="True" MinHeight="200" ></AutoSize>
	</px:PXFormView>
	<px:PXTab Width="100%" Height="500px" runat="server" ID="CstPXTab9">
		<Items>
			<px:PXTabItem Text="Approval">
				<Template>
					<px:PXGrid Width="100%" Height="400px" runat="server" ID="CstPXGrid10">
						<Levels>
							<px:PXGridLevel DataMember="Approval" >
								<Columns>
									<px:PXGridColumn DataField="OwnerID" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ApproverEmployee__AcctCD" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="WorkgroupID" Width="180" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Status" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="RefNoteID" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Reason" Width="280" ></px:PXGridColumn>
									<px:PXGridColumn DataField="OwnerID_description" Width="280" ></px:PXGridColumn>
									<px:PXGridColumn DataField="ApproveDate" Width="90" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem></Items></px:PXTab></asp:Content>