<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormTab.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PM771030.aspx.cs" Inherits="Page_PM771030" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormTab.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="GSynchExt.DistrictsEntry"
        PrimaryView="MasterView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="MasterView" Width="100%" Height="100px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector3" DataField="StateID" /></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXTab ID="tab" runat="server" Width="100%" Height="500px" DataSourceID="ds" AllowAutoHide="false">
		<Items>
			<px:PXTabItem Text="Districts">
				<Template>
					<px:PXGrid SkinID="Details" Width="100%" Height="500px" runat="server" ID="CstPXGrid1">
						<Levels>
							<px:PXGridLevel DataMember="DetailsView">
								<Columns>
									<px:PXGridColumn DataField="DistrictID" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="AreaEngineer" Width="140" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template>
			</px:PXTabItem>
			<px:PXTabItem Text="CEB Location">
				<Template>
					<px:PXGrid SkinID="Details" Width="100%" Height="500px" runat="server" ID="CstPXGrid2">
						<Levels>
							<px:PXGridLevel DataMember="LocCEBView" >
								<Columns>
									<px:PXGridColumn DataField="LocationID" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="LocationType" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="140" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template>
			</px:PXTabItem>
			<px:PXTabItem Text="LECO Location">
				<Template>
					<px:PXGrid SkinID="Details" Width="100%" Height="500px" runat="server" ID="CstPXGrid4">
						<Levels>
							<px:PXGridLevel DataMember="LocLECOView" >
								<Columns>
									<px:PXGridColumn DataField="LocationID" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="LocationType" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="140" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
			<px:PXTabItem Text="Phases">
				<Template>
					<px:PXGrid SkinID="Details" Width="100%" Height="500px" runat="server" ID="CstPXGrid6">
						<Levels>
							<px:PXGridLevel DataMember="PhaseVieww" >
								<Columns>
									<px:PXGridColumn DataField="PhaseID" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn CommitChanges="True" DataField="EstimatedCost" Width="100" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
			<px:PXTabItem Text="Clusters">
				<Template>
					<px:PXGrid SkinID="Details" Width="100%" Height="500px" runat="server" ID="CstPXGrid5">
						<Levels>
							<px:PXGridLevel DataMember="ClusterView" >
								<Columns>
									<px:PXGridColumn DataField="ClusterID" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="140" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem></Items>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
	</px:PXTab>
</asp:Content>