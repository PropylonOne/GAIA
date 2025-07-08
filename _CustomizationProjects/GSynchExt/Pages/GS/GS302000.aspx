
<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="GS302000.aspx.cs" Inherits="Page_GS302000" Title="Untitled Page" %>

<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>
<asp:Content ID="cont1" ContentPlaceHolderID="phDS" runat="Server">
  <px:PXDataSource EnableAttributes="true" ID="ds" runat="server" UDFTypeField="DocType" Visible="True" Width="100%" TypeName="PX.Objects.AP.APPaymentEntry" PrimaryView="Document">
        <CallbackCommands>
            <px:PXDSCallbackCommand Name="Insert" PostData="Self" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand CommitChanges="True" Name="Save" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="First" PostData="Self" StartNewGroup="True" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="Last" PostData="Self" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand StartNewGroup="True" Name="Release" CommitChanges="True" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="VoidCheck" CommitChanges="True" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand StartNewGroup="True" Name="Action" CommitChanges="true" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="Inquiry" CommitChanges="true" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="Report" CommitChanges="true" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="False" Name="NewVendor" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="False" Name="EditVendor" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="False" Name="VendorDocuments" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="False" Name="ViewOriginalDocument"></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="False" Name="ViewBatch" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="false" Name="ViewVoucherBatch" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="False" Name="ViewPPDVATAdj" DependOnGrid="detgrid2"></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="false" Name="ViewWorkBook" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="False" CommitChanges="True" Name="LoadInvoices" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="False" CommitChanges="True" Name="LoadPOOrders" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="false" CommitChanges="true" Name="ReverseApplication" DependOnGrid="detgrid2" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="false" Name="ViewApplicationDocument" DependOnGrid="detgrid2" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="false" Name="ViewDocumentToApply" DependOnGrid="detgrid" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="false" Name="ViewCurrentBatch" DependOnGrid="detgrid2" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Visible="False" Name="CurrencyView" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="PrintCheck" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand CommitChanges="True" Name="ComplianceDocument$PurchaseOrder$Link" Visible="false" DependOnGrid="grid" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand CommitChanges="True" Name="ComplianceDocument$Subcontract$Link" Visible="false" DependOnGrid="grid" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="ComplianceDocument$InvoiceID$Link" Visible="false" DependOnGrid="grdComplianceDocuments" CommitChanges="True" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="ComplianceDocument$BillID$Link" Visible="false" DependOnGrid="grdComplianceDocuments" CommitChanges="True" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="ComplianceDocument$ApCheckID$Link" Visible="false" DependOnGrid="grdComplianceDocuments" CommitChanges="True" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="ComplianceDocument$ArPaymentID$Link" Visible="false" DependOnGrid="grdComplianceDocuments" CommitChanges="True" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="ComplianceDocument$ProjectTransactionID$Link" Visible="false" DependOnGrid="grdComplianceDocuments" CommitChanges="True" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="AddressLookupSelectAction" CommitChanges="true" Visible="false" ></px:PXDSCallbackCommand>
            <px:PXDSCallbackCommand Name="AddressLookup" SelectControlsIDs="form" RepaintControls="None" RepaintControlsIDs="ds,Remittance_Address" CommitChanges="true" Visible="false" ></px:PXDSCallbackCommand>
        </CallbackCommands>
    </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" runat="Server">
    <px:PXFormView ID="form" runat="server" Style="z-index: 100" Width="100%" DataMember="Document" Caption="Payment Summary" NoteIndicator="True" FilesIndicator="True" ActivityIndicator="True" ActivityField="NoteActivity"
        LinkIndicator="True" BPEventsIndicator="True" EmailingGraph="PX.Objects.CR.CREmailActivityMaint,PX.Objects" DefaultControlID="edDocType" TabIndex="26100" MarkRequired="Dynamic">
        <Template>
            <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="S" ControlSize="S" ></px:PXLayoutRule>
            <px:PXDropDown ID="edDocType" runat="server" DataField="DocType" ></px:PXDropDown>
            <px:PXSelector ID="edRefNbr" runat="server" DataField="RefNbr" AutoRefresh="True">
                <GridProperties FastFilterFields="APPayment__ExtRefNbr, VendorID, VendorID_Vendor_acctName, APInvoice__InvoiceNbr, DocDesc" ></GridProperties>
            </px:PXSelector>
            <px:PXDropDown ID="edStatus" runat="server" DataField="Status" Enabled="False" ></px:PXDropDown>
            <px:PXDateTimeEdit CommitChanges="True" ID="edAdjDate" runat="server" DataField="AdjDate" ></px:PXDateTimeEdit>
            <px:PXSelector CommitChanges="True" ID="edAdjFinPeriodID" runat="server" DataField="AdjFinPeriodID" AutoRefresh="True"></px:PXSelector>
            <px:PXTextEdit CommitChanges="True" ID="edExtRefNbr" runat="server" DataField="ExtRefNbr" ></px:PXTextEdit>
            <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="S" ControlSize="XM" ></px:PXLayoutRule>
            <px:PXSegmentMask CommitChanges="True" ID="edVendorID" runat="server" DataField="VendorID" AllowAddNew="True" AllowEdit="True" AutoRefresh="true"></px:PXSegmentMask>
            <px:PXSegmentMask CommitChanges="True" ID="edVendorLocationID" runat="server" AutoRefresh="True" DataField="VendorLocationID" ></px:PXSegmentMask>
            <px:PXTextEdit ID="edJointPayeeID" runat="server" DataField="SelectedJointPayee.Name" Enabled="false" ></px:PXTextEdit>
            <px:PXSelector CommitChanges="True" ID="edPaymentMethodID" runat="server" DataField="PaymentMethodID" AutoRefresh="True" ></px:PXSelector>
            <px:PXSegmentMask CommitChanges="True" ID="edCashAccountID" runat="server" DataField="CashAccountID" AutoRefresh="True" ></px:PXSegmentMask>
            <pxa:PXCurrencyRate DataField="CuryID" ID="edCury" runat="server" RateTypeView="CurrencyInfo" DataMember="_Currency_" ></pxa:PXCurrencyRate>
            <px:PXDateTimeEdit ID="edDepositAfter" runat="server" DataField="DepositAfter" ></px:PXDateTimeEdit>
            <px:PXLayoutRule runat="server" ColumnSpan="2" ></px:PXLayoutRule>
            <px:PXTextEdit ID="edDocDesc" runat="server" DataField="DocDesc" ></px:PXTextEdit>
            <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="M" ControlSize="XM" ></px:PXLayoutRule>
            
            <px:PXNumberEdit CommitChanges="True" ID="edCuryOrigDocAmt" runat="server" DataField="CuryOrigDocAmt" ></px:PXNumberEdit>
            <px:PXNumberEdit ID="edCuryPOApplAmt" runat="server" DataField="CuryPOApplAmt" Enabled="False" ></px:PXNumberEdit>
            <px:PXNumberEdit ID="edCuryUnappliedBal" runat="server" DataField="CuryUnappliedBal" Enabled="False" ></px:PXNumberEdit>
            <px:PXNumberEdit ID="edCuryInitDocBal" runat="server" DataField="CuryInitDocBal" CommitChanges="True" ></px:PXNumberEdit>
            <px:PXNumberEdit ID="edCuryApplAmt" runat="server" DataField="CuryApplAmt" Enabled="False" ></px:PXNumberEdit>
            <px:PXNumberEdit ID="edCuryChargeAmt" runat="server" DataField="CuryChargeAmt" Enabled="False" ></px:PXNumberEdit>
       </Template>
    </px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" runat="Server">
    <px:PXTab ID="tab" runat="server" Height="300px" Style="z-index: 100;" Width="100%" DataMember="CurrentDocument">
        <Items>
            <px:PXTabItem Text="Documents to Apply" RepaintOnDemand="false" >
                <Template>
                    <px:PXGrid ID="detgrid" runat="server" Height="300px" SkinID="DetailsInTab" Style="z-index: 100;" TabIndex="30500" Width="100%"
                               PageSize="100" AllowPaging="True">
                        <Levels>
                            <px:PXGridLevel DataMember="Adjustments">
                                <RowTemplate>
                                    <px:PXLayoutRule runat="server" ControlSize="XM" LabelsWidth="SM" StartColumn="True" ></px:PXLayoutRule>
                                    <px:PXDropDown ID="edAdjdDocType" runat="server" DataField="AdjdDocType" CommitChanges="True" ></px:PXDropDown>
                                    <px:PXSelector ID="edAdjdRefNbr" runat="server" AutoRefresh="True" CommitChanges="True" DataField="AdjdRefNbr">
                                        <Parameters>
                                            <px:PXControlParam ControlID="form" Name="APPayment.vendorID" PropertyName="DataControls[&quot;edVendorID&quot;].Value" ></px:PXControlParam>
                                            <px:PXControlParam ControlID="detgrid" Name="APAdjust.adjdDocType" PropertyName="DataValues[&quot;AdjdDocType&quot;]" ></px:PXControlParam>
                                        </Parameters>
                                    </px:PXSelector>
                                    <px:PXSelector ID="edAdjdLineNbr" runat="server" AutoRefresh="True" CommitChanges="True" DataField="AdjdLineNbr" >
                                        <Parameters>
                                            <px:PXControlParam ControlID="detgrid" Name="APAdjust.adjdDocType" PropertyName="DataValues[&quot;AdjdDocType&quot;]" Type="String" ></px:PXControlParam>
                                            <px:PXControlParam ControlID="detgrid" Name="APAdjust.adjdRefNbr" PropertyName="DataValues[&quot;AdjdRefNbr&quot;]" Type="String" DefaultValue=" " ></px:PXControlParam>
                                        </Parameters>
                                    </px:PXSelector>
                                    <px:PXNumberEdit ID="edCuryAdjgAmt" runat="server" CommitChanges="True" DataField="CuryAdjgAmt" ></px:PXNumberEdit>
                                    <px:PXNumberEdit ID="edCuryAdjgPPDAmt" runat="server" AllowNull="False" DataField="CuryAdjgPPDAmt" ></px:PXNumberEdit>
                                    <px:PXNumberEdit ID="edCuryAdjgWhTaxAmt" runat="server" CommitChanges="True" DataField="CuryAdjgWhTaxAmt" ></px:PXNumberEdit>
                                    <px:PXDateTimeEdit ID="edAdjdDocDate" runat="server" DataField="AdjdDocDate" Enabled="False" ></px:PXDateTimeEdit>
                                    <px:PXDateTimeEdit ID="edAPInvoice__DueDate" runat="server" DataField="APInvoice__DueDate" ></px:PXDateTimeEdit>
                                    <px:PXDateTimeEdit ID="edAPInvoice__DiscDate" runat="server" DataField="APInvoice__DiscDate" ></px:PXDateTimeEdit>
                                    <px:PXLayoutRule runat="server" ControlSize="XM" LabelsWidth="SM" StartColumn="True" ></px:PXLayoutRule>
                                    <px:PXNumberEdit ID="edAdjdCuryRate" runat="server" CommitChanges="True" DataField="AdjdCuryRate" ></px:PXNumberEdit>
                                    <px:PXNumberEdit ID="edCuryDocBal" runat="server" DataField="CuryDocBal" Enabled="False" ></px:PXNumberEdit>
                                    <px:PXNumberEdit ID="edCuryDiscBal" runat="server" DataField="CuryDiscBal" Enabled="False" ></px:PXNumberEdit>
                                    <px:PXNumberEdit ID="edCuryWhTaxBal" runat="server" DataField="CuryWhTaxBal" Enabled="False" ></px:PXNumberEdit>
                                </RowTemplate>
                                <Columns>
                                    <px:PXGridColumn DataField="AdjdBranchID" RenderEditorText="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="AdjdDocType" Type="DropDownList" AutoCallBack="True" ></px:PXGridColumn>
                                    <px:PXGridColumn AutoCallBack="True" DataField="AdjdRefNbr" LinkCommand="ViewDocumentToApply" ></px:PXGridColumn>
                                    <px:PXGridColumn AutoCallBack="True" DataField="AdjdLineNbr" ></px:PXGridColumn>

                                    <px:PXGridColumn DataField="APTran__InventoryID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APTran__ProjectID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__ProjectID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APTran__TaskID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APTran__CostCodeID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APTran__AccountID" ></px:PXGridColumn>

                                    <px:PXGridColumn AutoCallBack="True" DataField="CuryAdjgAmt" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn AutoCallBack="True" DataField="CuryAdjgPPDAmt" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn AutoCallBack="True" DataField="CuryAdjgWhTaxAmt" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="AdjdDocDate" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__DueDate" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__DiscDate" ></px:PXGridColumn>
                                    <px:PXGridColumn AutoCallBack="True" DataField="AdjdCuryRate" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryDocBal" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryDiscBal" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryWhTaxBal" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__DocDesc" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="AdjdCuryID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="AdjdFinPeriodID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__InvoiceNbr" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__SuppliedByVendorID" DisplayMode="Hint"></px:PXGridColumn>
                                    <px:PXGridColumn DataField="HasExpiredComplianceDocuments" Type="CheckBox" ></px:PXGridColumn>
                                    <px:PXGridColumn AutoCallBack="True" DataField="StubNbr" ></px:PXGridColumn>
                                </Columns>
                                <Layout FormViewHeight="" ></Layout>
                            </px:PXGridLevel>
                        </Levels>
                        <AutoSize Enabled="True" MinHeight="150" ></AutoSize>
                        <ActionBar>
                            <CustomItems>
                                <px:PXToolBarButton Text="Load Documents">
                                    <AutoCallBack Command="LoadInvoices" Target="ds">
                                        <Behavior CommitChanges="True" ></Behavior>
                                    </AutoCallBack>
                                </px:PXToolBarButton>
                                <px:PXToolBarButton Text="Select Joint Payee">
                                    <AutoCallBack Command="AddJointPayee" Target="ds">
                                        <Behavior CommitChanges="True" ></Behavior>
                                    </AutoCallBack>
                                </px:PXToolBarButton>
                            </CustomItems>
                        </ActionBar>
                    </px:PXGrid>
                </Template>
            </px:PXTabItem>
            <px:PXTabItem Text="Orders" RepaintOnDemand="false">
                <Template>
                    <px:PXGrid ID="detgrid4" runat="server" Height="300px" SkinID="DetailsInTab" Style="z-index: 100;" TabIndex="30500" Width="100%" SyncPosition="true">
                        <Levels>
                            <px:PXGridLevel DataMember="POAdjustments">
                                <RowTemplate>
                                    <px:PXLayoutRule runat="server" ControlSize="XM" LabelsWidth="SM" StartColumn="True" ></px:PXLayoutRule>
                                    <px:PXDropDown CommitChanges="True" ID="edPOAdjdOrderType" runat="server" AllowNull="False" DataField="OrderType" ></px:PXDropDown>
                                    <px:PXSelector CommitChanges="True" ID="edPOAdjdOrderNbr" runat="server" DataField="AdjdOrderNbr" AutoRefresh="true" AllowEdit="true">
                                        <Parameters>
                                            <px:PXControlParam ControlID="detgrid4" Name="POAdjust.adjdOrderType" PropertyName="DataValues[&quot;AdjdOrderType&quot;]" ></px:PXControlParam>
                                        </Parameters>
                                    </px:PXSelector>
                                    <px:PXSelector CommitChanges="True" ID="edPOAdjustAdjdRefNbr" runat="server" DataField="AdjdRefNbr" AutoRefresh="true" AllowEdit="true">
                                        <Parameters>
                                            <px:PXControlParam ControlID="detgrid4" Name="POAdjust.AdjdDocType" PropertyName="DataValues[&quot;AdjdDocType&quot;]" ></px:PXControlParam>
                                        </Parameters>
                                    </px:PXSelector>
                                    <px:PXTextEdit ID="edPOOrder__Status" runat="server" DataField="POOrder__Status" Enabled="False" ></px:PXTextEdit>
                                    <px:PXNumberEdit ID="edPOCuryAdjgAmt" runat="server" DataField="CuryAdjgAmt" ></px:PXNumberEdit>
                                    <px:PXNumberEdit ID="edPOCuryAdjgBilledAmt" runat="server" DataField="CuryAdjgBilledAmt" ></px:PXNumberEdit>
                                    <px:PXDateTimeEdit ID="edPOAdjdOrderDate" runat="server" DataField="POOrder__OrderDate" Enabled="False" ></px:PXDateTimeEdit>
                                </RowTemplate>
                                <Columns>
                                    <px:PXGridColumn DataField="AdjdOrderType" CommitChanges="true" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="AdjdOrderNbr" CommitChanges="true" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="AdjdRefNbr" CommitChanges="true" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="POOrder__Status" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryAdjgAmt" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryAdjgBilledAmt" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="POOrder__OrderDate" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="POOrder__CuryUnprepaidTotal" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="POOrder__CuryLineTotal" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="POOrder__CuryID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="Released" Type="CheckBox" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="IsRequest" Type="CheckBox" ></px:PXGridColumn>
                                </Columns>
                                <Layout FormViewHeight="" ></Layout>
                            </px:PXGridLevel>
                        </Levels>
                        <AutoSize Enabled="True" MinHeight="150" ></AutoSize>
                        <ActionBar>
                            <CustomItems>
                                <px:PXToolBarButton Text="Load Orders" Tooltip="Load Orders">
                                    <AutoCallBack Command="LoadPOOrders" Target="ds">
                                        <Behavior CommitChanges="True" ></Behavior>
                                    </AutoCallBack>
                                </px:PXToolBarButton>
                            </CustomItems>
                        </ActionBar>
                        <Mode InitNewRow="true" ></Mode>
                    </px:PXGrid>
                </Template>
            </px:PXTabItem>
            <px:PXTabItem Text="Application History" RepaintOnDemand="false" >
                <Template>
                    <px:PXGrid ID="detgrid2" runat="server" Height="300px" Style="z-index: 100" Width="100%" SkinID="DetailsInTab"
                               AdjustPageSize="Auto" AllowPaging="True"
                               NoteIndicator="true" FilesIndicator="true"
                               NoteField="APAdjust2__NoteText" FilesField="APAdjust2__NoteFiles">
                        <Levels>
                            <px:PXGridLevel DataMember="APPost">
                                <Mode AllowAddNew="False" AllowDelete="False" ></Mode>
                                <Columns>
                                    <px:PXGridColumn DataField="APRegister__BranchID" RenderEditorText="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="BatchNbr" LinkCommand="ViewCurrentBatch" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="SourceDocType" Type="DropDownList" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="SourceRefNbr" LinkCommand="ViewApplicationDocument" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="LineNbr" ></px:PXGridColumn>

                                    <px:PXGridColumn DataField="APTran__InventoryID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APTran__ProjectID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APRegister__ProjectID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APTran__TaskID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APTran__CostCodeID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APTran__AccountID" ></px:PXGridColumn>

                                    <px:PXGridColumn DataField="CuryAmt" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryPPDAmt" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryWhTaxAmt" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="FinPeriodID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ApplicationDate" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APRegister__DocDate" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__DueDate" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__DiscDate" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryBalanceAmt" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryDiscBalanceAmt" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APRegister__DocDesc" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APRegister__CuryID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APRegister__FinPeriodID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__InvoiceNbr" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APAdjust2__TaxInvoiceNbr" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APInvoice__SuppliedByVendorID" DisplayMode="Hint"></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APAdjust2__PendingPPD" TextAlign="Center" Type="CheckBox" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APAdjust2__PPDVATAdjDescription" LinkCommand="ViewPPDVATAdj" AllowFilter="false" AllowSort="false"></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APAdjust2__HasExpiredComplianceDocuments" Type="CheckBox" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="APAdjust2__StubNbr" ></px:PXGridColumn>
                                </Columns>
                            </px:PXGridLevel>
                        </Levels>
                        <AutoSize Enabled="True" MinHeight="150" ></AutoSize>
                        <ActionBar>
                            <Actions>
                                <Save Enabled="False" ></Save>
                                <AddNew Enabled="False" ></AddNew>
                                <Delete Enabled="False" ></Delete>
                                <Search Enabled="False" ></Search>
                                <EditRecord Enabled="False" ></EditRecord>
                                <NoteShow Enabled="False" ></NoteShow>
                            </Actions>
                            <CustomItems>
                                <px:PXToolBarButton Text="Reverse Application">
                                    <AutoCallBack Command="ReverseApplication" Target="ds">
                                        <Behavior CommitChanges="True" ></Behavior>
                                    </AutoCallBack>
                                </px:PXToolBarButton>
                            </CustomItems>
                        </ActionBar>
                    </px:PXGrid>
                </Template>
            </px:PXTabItem>
            <px:PXTabItem Text="Financial">
                <Template>
                    <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="SM" ControlSize="XM" GroupCaption="GL Link" StartGroup="True" ></px:PXLayoutRule>
                        <px:PXSelector ID="edBatchNbr" runat="server" DataField="BatchNbr" Enabled="False" AllowEdit="True" ></px:PXSelector>
                        <px:PXNumberEdit ID="edDisplayCuryInitDocBal" runat="server" DataField="DisplayCuryInitDocBal" Enabled="False"></px:PXNumberEdit>
                        <px:PXSegmentMask CommitChanges="True" ID="edBranchID" runat="server" DataField="BranchID" ></px:PXSegmentMask>
                        <px:PXSegmentMask ID="edAPAccountID" runat="server" DataField="APAccountID" CommitChanges="True" ></px:PXSegmentMask>
                        <px:PXSegmentMask ID="edAPSubID" runat="server" DataField="APSubID" AutoRefresh="True" ></px:PXSegmentMask>
                        <px:PXDateTimeEdit CommitChanges="True" ID="edDocDate" runat="server" DataField="DocDate" ></px:PXDateTimeEdit>
                        <px:PXSelector CommitChanges="True" Size="S" ID="edFinPeriodID" runat="server" DataField="FinPeriodID" ></px:PXSelector>
                        <px:PXCheckBox CommitChanges="True" SuppressLabel="True" ID="chkCleared" runat="server" DataField="Cleared" ></px:PXCheckBox>
                        <px:PXDateTimeEdit CommitChanges="True" ID="edClearDate" runat="server" DataField="ClearDate" ></px:PXDateTimeEdit>
                        <px:PXCheckBox CommitChanges="True" ID="chkDepositAsBatch" runat="server" DataField="DepositAsBatch" ></px:PXCheckBox>
                        <px:PXCheckBox ID="chkDeposited" runat="server" DataField="Deposited" ></px:PXCheckBox>
                        <px:PXDateTimeEdit ID="edDepositDate" runat="server" DataField="DepositDate" Enabled="False" ></px:PXDateTimeEdit>
                        <px:PXSelector ID="edDepositNbr" runat="server" DataField="DepositNbr" Enabled="False" AllowEdit="true"></px:PXSelector>
                        <px:PXTextEdit ID="edOrigRefNbr" runat="server" DataField="OrigRefNbr" Enabled="False" AllowEdit="True">
                            <LinkCommand Target="ds" Command="ViewOriginalDocument"></LinkCommand>
                        </px:PXTextEdit>
                    <px:PXLayoutRule runat="server" StartColumn="true" LabelsWidth="SM" ControlSize="XM" GroupCaption="T5018 Report" StartGroup="true" ></px:PXLayoutRule>
                        <px:PXCheckBox runat="server" ID="chkIncludeInT5018Report" DataField="IncludeInT5018Report" AlignLeft="true" ></px:PXCheckBox>

                </Template>
            </px:PXTabItem>
            <px:PXTabItem Text="Approvals" BindingContext="form" RepaintOnDemand="false">
                <Template>
                    <px:PXGrid ID="gridApproval" runat="server" DataSourceID="ds" Width="100%" SkinID="DetailsInTab" NoteIndicator="True" Style="left: 0; top: 0;">
                        <AutoSize Enabled="True" ></AutoSize>
                        <Mode AllowAddNew="False" AllowDelete="False" AllowUpdate="False" ></Mode>
                        <Levels>
                            <px:PXGridLevel DataMember="Approval">
                                <Columns>
                                    <px:PXGridColumn DataField="ApproverEmployee__AcctCD" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ApproverEmployee__AcctName" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="WorkgroupID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ApprovedByEmployee__AcctCD" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ApprovedByEmployee__AcctName" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="OrigOwnerID" Visible="false" SyncVisible="false" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ApproveDate" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="Status" AllowNull="False" AllowUpdate="False" RenderEditorText="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="Reason" AllowUpdate="False" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="AssignmentMapID"  Visible="false" SyncVisible="false"></px:PXGridColumn>
                                    <px:PXGridColumn DataField="RuleID" Visible="false" SyncVisible="false" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="StepID" Visible="false" SyncVisible="false" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CreatedDateTime" Visible="false" SyncVisible="false" ></px:PXGridColumn>
                                </Columns>
                            </px:PXGridLevel>
                        </Levels>
                    </px:PXGrid>
                </Template>
            </px:PXTabItem>
            <px:PXTabItem Text="Remittance">
                <Template>
                    <px:PXLayoutRule runat="server" ControlSize="XM" LabelsWidth="SM" StartColumn="True" ></px:PXLayoutRule>
                    <px:PXFormView ID="Remittance_Contact" runat="server" Caption="Remittance Contact" DataMember="Remittance_Contact" RenderStyle="Fieldset">
                        <Template>
                            <px:PXLayoutRule runat="server" ControlSize="XM" LabelsWidth="SM" StartColumn="True" ></px:PXLayoutRule>
                            <px:PXCheckBox ID="chkOverrideContact" runat="server" CommitChanges="True" DataField="OverrideContact" SuppressLabel="True" ></px:PXCheckBox>
                            <px:PXTextEdit ID="edFullName" runat="server" DataField="FullName" ></px:PXTextEdit>
                            <px:PXTextEdit ID="edAttention" runat="server" DataField="Attention" ></px:PXTextEdit>
                            <px:PXMaskEdit ID="edPhone1" runat="server" DataField="Phone1" ></px:PXMaskEdit>
                            <px:PXMailEdit ID="edEmail" runat="server" CommandSourceID="ds" DataField="Email" ></px:PXMailEdit>
                        </Template>
                    </px:PXFormView>
                    <px:PXFormView ID="Remittance_Address" runat="server" Caption="Remittance Address" DataMember="Remittance_Address" RenderStyle="Fieldset">
                        <Template>
                            <px:PXLayoutRule runat="server" ControlSize="XM" LabelsWidth="SM" StartColumn="True" ></px:PXLayoutRule>
                            <px:PXCheckBox ID="chkOverrideAddress" runat="server" CommitChanges="True" DataField="OverrideAddress" SuppressLabel="True" ></px:PXCheckBox>
                            <px:PXButton ID="btnAddressLookup" runat="server" CommandName="AddressLookup" CommandSourceID="ds" Size="xs" TabIndex="-1" ></px:PXButton>
                            <px:PXTextEdit ID="edAddressLine1" runat="server" DataField="AddressLine1" ></px:PXTextEdit>
                            <px:PXTextEdit ID="edAddressLine2" runat="server" DataField="AddressLine2" ></px:PXTextEdit>
                            <px:PXTextEdit ID="edCity" runat="server" DataField="City" ></px:PXTextEdit>
                            <px:PXSelector ID="edCountryID" runat="server" AutoRefresh="True" DataField="CountryID" CommitChanges="true" ></px:PXSelector>
                            <px:PXSelector ID="edState" runat="server" AutoRefresh="True" DataField="State" ></px:PXSelector>
                            <px:PXMaskEdit ID="edPostalCode" runat="server" CommitChanges="True" DataField="PostalCode" ></px:PXMaskEdit>
                            <px:PXCheckBox ID="edIsValidated" runat="server" DataField="IsValidated" Enabled="False" ></px:PXCheckBox>
                        </Template>
                    </px:PXFormView>
                    <px:PXLayoutRule ID="PXLayoutRule1" runat="server" GroupCaption="Print Options" StartGroup="True" StartColumn="True" ></px:PXLayoutRule>
                    <px:PXCheckBox CommitChanges="True" ID="chkPrintCheck" runat="server" DataField="PrintCheck" Size="M" ></px:PXCheckBox>
                    <px:PXSelector ID="edbatchPaymentRefNbr" runat="server" DataField="BatchPaymentRefNbr" Enabled="False" AllowEdit="True" ></px:PXSelector>
                </Template>
            </px:PXTabItem>
            <px:PXTabItem Text="Charges" RepaintOnDemand="false" >
                <Template>
                    <px:PXGrid ID="detgrid3" runat="server" Height="300px" SkinID="DetailsInTab" Style="z-index: 100;" TabIndex="30500" Width="100%">
                        <Levels>
                            <px:PXGridLevel DataMember="PaymentCharges" DataKeyNames="DocType,RefNbr,LineNbr">
                                <RowTemplate>
                                    <px:PXSelector ID="edEntryTypeID" runat="server" AutoRefresh="True" CommitChanges="True" DataField="EntryTypeID" ></px:PXSelector>
                                    <px:PXSegmentMask ID="edAccountID" runat="server" DataField="AccountID" Enabled="False" AllowEdit="False" ></px:PXSegmentMask>
                                    <px:PXSegmentMask ID="edSubID" runat="server" DataField="SubID" Enabled="False" AllowEdit="False" ></px:PXSegmentMask>
                                    <px:PXNumberEdit ID="edCuryTranAmt" runat="server" CommitChanges="true" DataField="CuryTranAmt" ></px:PXNumberEdit>
                                </RowTemplate>
                                <Columns>
                                    <px:PXGridColumn AutoCallBack="True" DataField="EntryTypeID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="TranDesc" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="AccountID" CommitChanges="true" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="SubID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CuryTranAmt" TextAlign="Right" AutoCallBack="True" ></px:PXGridColumn>
                                </Columns>
                            </px:PXGridLevel>
                        </Levels>
                        <AutoSize Enabled="True" MinHeight="150" ></AutoSize>
                    </px:PXGrid>
                </Template>
            </px:PXTabItem>
            <px:PXTabItem Text="Compliance">
                <Template>
                    <px:PXGrid runat="server" ID="grdComplianceDocuments" Width="100%" Height="300px" AutoGenerateColumns="Append" DataSourceID="ds" KeepPosition="True" SyncPosition="True" SkinID="DetailsInTab" AllowPaging="True" PageSize="12">
                        <Levels>
                            <px:PXGridLevel DataMember="ComplianceDocuments">
                                <Columns>
                                    <px:PXGridColumn DataField="ExpirationDate" CommitChanges="True" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="DocumentType" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CreationDate" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="Status" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="Required" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="Received" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ReceivedDate" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="IsProcessed" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="IsVoided" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="IsCreatedAutomatically" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="SentDate" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ProjectID" LinkCommand="ComplianceViewProject" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CostTaskID" LinkCommand="ComplianceViewCostTask" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="RevenueTaskID" LinkCommand="ComplianceViewRevenueTask" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CostCodeID" LinkCommand="ComplianceViewCostCode" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CustomerID" CommitChanges="True" LinkCommand="ComplianceViewCustomer" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CustomerName" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="VendorID" LinkCommand="ComplianceViewVendor" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="VendorName" LinkCommand="" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="BillID" LinkCommand="ComplianceDocument$BillID$Link" CommitChanges="True" DisplayMode="Text" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="BillAmount" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="AccountID" TextAlign="Left" CommitChanges="" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ArPaymentMethodID" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ApPaymentMethodID" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ArPaymentID" LinkCommand="ComplianceDocument$ArPaymentID$Link" DisplayMode="Text" CommitChanges="True" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CertificateNumber" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CreatedByID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="DateIssued" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="EffectiveDate" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="InsuranceCompany" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="InvoiceAmount" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="InvoiceID" LinkCommand="ComplianceDocument$InvoiceID$Link" CommitChanges="True" DisplayMode="Text" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="IsExpired" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="IsRequiredJointCheck" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="JointAmount" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="JointRelease" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="JointReleaseReceived" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="JointVendorInternalId" LinkCommand="ComplianceViewJointVendor" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="JointVendorExternalName" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="LastModifiedByID" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="LienWaiverAmount" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="Limit" TextAlign="Right" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="MethodSent" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ApCheckID" LinkCommand="ComplianceDocument$ApCheckID$Link" DisplayMode="Text" CommitChanges="True" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="CheckNumber" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="PaymentDate" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="Policy" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ProjectTransactionID" LinkCommand="ComplianceDocument$ProjectTransactionID$Link" CommitChanges="True" DisplayMode="Text" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="PurchaseOrderLineItem" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="Subcontract" DisplayMode="Text" CommitChanges="True" LinkCommand="ComplianceDocument$Subcontract$Link" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="SubcontractLineItem" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ChangeOrderNumber" DisplayMode="Text" LinkCommand="ComplianceDocument$ChangeOrderNumber$Link" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="PurchaseOrder" TextAlign="Left" DisplayMode="Text" CommitChanges="True" LinkCommand="ComplianceDocument$PurchaseOrder$Link" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ReceiveDate" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ReceivedBy" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="SecondaryVendorID" LinkCommand="ComplianceViewSecondaryVendor" CommitChanges="True" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="SecondaryVendorName" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="SourceType" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="SponsorOrganization" TextAlign="Left" ></px:PXGridColumn>
                                    <px:PXGridColumn DataField="ThroughDate" TextAlign="Left" CommitChanges="True"></px:PXGridColumn>
                                    <px:PXGridColumn DataField="DocumentTypeValue" CommitChanges="True" ></px:PXGridColumn>
                                </Columns>
                                <RowTemplate>
                                    <px:PXSegmentMask runat="server" DataField="CostCodeID" AutoRefresh="True" ID="edCostCode2" ></px:PXSegmentMask>
                                    <px:PXSelector runat="server" DataField="DocumentTypeValue" AutoRefresh="True" ID="edDocumentTypeValue" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="BillID" FilterByAllFields="True" AutoRefresh="True" ID="edBillID" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="InvoiceID" FilterByAllFields="True" AutoRefresh="True" ID="edInvoiceID" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="ApCheckID" FilterByAllFields="True" AutoRefresh="True" ID="edApCheckID" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="ArPaymentID" FilterByAllFields="True" AutoRefresh="True" ID="edArPaymentID" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="ProjectTransactionID" FilterByAllFields="True" AutoRefresh="True" ID="edProjectTransactionID" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="PurchaseOrder" FilterByAllFields="True" AutoRefresh="True" ID="edPurchaseOrder" CommitChanges="True" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="PurchaseOrderLineItem" AutoRefresh="True" ID="edPurchaseOrderLineItem" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="Subcontract" FilterByAllFields="True" AutoRefresh="True" CommitChanges="True" ID="edSubcontract" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="SubcontractLineItem" AutoRefresh="True" ID="edSubcontractLineItem" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="ChangeOrderNumber" AutoRefresh="True" ID="edChangeOrderNumber" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="CostTaskID" FilterByAllFields="True" AutoRefresh="True" ID="edCostTaskID" ></px:PXSelector>
                                    <px:PXSelector runat="server" DataField="RevenueTaskID" FilterByAllFields="True" AutoRefresh="True" ID="edRevenueTaskID" ></px:PXSelector>
                                    <px:PXSelector runat="server" ID="edProjectID" DataField="ProjectID" FilterByAllFields="True" AutoRefresh="True" ></px:PXSelector>
                                </RowTemplate>
                            </px:PXGridLevel>
                        </Levels>
                        <Mode InitNewRow="True" ></Mode>
                        <AutoSize Enabled="True" MinHeight="150" ></AutoSize>
                        <CallbackCommands>
                            <InitRow CommitChanges="True" ></InitRow>
                        </CallbackCommands>
                        <ActionBar>
                            <CustomItems>
                                <px:PXToolBarButton Text="Line Details">
                                    <AutoCallBack Command="ComplianceViewDetails" Target="ds">
                                        <Behavior CommitChanges="True" ></Behavior>
                                    </AutoCallBack>
                                </px:PXToolBarButton>
                                <px:PXToolBarButton Text="Set As Final">
                                    <AutoCallBack Command="SetAsFinal" Target="ds" ></AutoCallBack>
                                </px:PXToolBarButton>
                            </CustomItems>
                        </ActionBar>
                    </px:PXGrid>
                </Template>
                <AutoCallBack>
                    <Behavior CommitChanges="True" ></Behavior>
                </AutoCallBack>
            </px:PXTabItem>
        </Items>
        <CallbackCommands>
            <Search CommitChanges="True" PostData="Page" ></Search>
            <Refresh CommitChanges="True" PostData="Page" ></Refresh>
        </CallbackCommands>
        <AutoSize Container="Window" Enabled="True" MinHeight="180" ></AutoSize>
    </px:PXTab>
    <px:PXSmartPanel ID="panelReason" runat="server" Caption="Enter Reason" CaptionVisible="true" LoadOnDemand="true" Key="ReasonApproveRejectParams"
    AutoCallBack-Enabled="true" AutoCallBack-Command="Refresh" CallBackMode-CommitChanges="True" Width="600px"
    CallBackMode-PostData="Page" AcceptButtonID="btnReasonOk" CancelButtonID="btnReasonCancel" AllowResize="False"  AutoRepaint="true">
    <px:PXFormView ID="PXFormViewPanelReason" runat="server" DataSourceID="ds" CaptionVisible="False" DataMember="ReasonApproveRejectParams">
        <ContentStyle BackColor="Transparent" BorderStyle="None" Width="100%" Height="100%"  CssClass="" ></ContentStyle>
        <Template>
            <px:PXLayoutRule ID="PXLayoutRulePanelReason" runat="server" StartColumn="True" ></px:PXLayoutRule>
            <px:PXPanel ID="PXPanelReason" runat="server" RenderStyle="Simple" >
                <px:PXLayoutRule ID="PXLayoutRuleReason" runat="server" StartColumn="True" SuppressLabel="True" ></px:PXLayoutRule>
                <px:PXTextEdit ID="edReason" runat="server" DataField="Reason" TextMode="MultiLine" LabelWidth="0" Height="200px" Width="600px" CommitChanges="True" ></px:PXTextEdit>
            </px:PXPanel>
            <px:PXPanel ID="PXPanelReasonButtons" runat="server" SkinID="Buttons">
                <px:PXButton ID="btnReasonOk" runat="server" Text="OK" DialogResult="Yes" CommandSourceID="ds" ></px:PXButton>
                <px:PXButton ID="btnReasonCancel" runat="server" Text="Cancel" DialogResult="No" CommandSourceID="ds" ></px:PXButton>
            </px:PXPanel>
        </Template>
    </px:PXFormView>
</px:PXSmartPanel>
    <px:PXSmartPanel ID="PanelReassignApproval" runat="server" Style="z-index: 108; position: absolute; left: 27px; top: 99px;"
    Caption="Reassign Approval"
    CaptionVisible="True" LoadOnDemand="true" AutoReload="true" Key="ReassignApprovalFilter"
    AutoCallBack-Enabled="true" AutoCallBack-Command="Refresh" CloseButtonDialogResult="Abort">

    <px:PXFormView ID="formReassignApproval" runat="server" DataMember="ReassignApprovalFilter" DataSourceID="ds" Style="z-index: 100" Width="100%"
        Caption="Reassign Approval" CaptionVisible="False" SkinID="Transparent">
        <Template>
            <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="S" ControlSize="M" ></px:PXLayoutRule>
            <px:PXSelector DataField="NewApprover" CommitChanges="True" ID="edNewApprover" runat="server" AutoRefresh="True" ></px:PXSelector>
            <px:PXCheckBox DataField="IgnoreApproversDelegations" CommitChanges="True" ID="chkIgnoreApproversDelegations" runat="server" ></px:PXCheckBox>
        </Template>
    </px:PXFormView>

    <div style="padding: 10px 10px 5px 5px; text-align: right;">
        <px:PXButton ID="btnReassignApprovalOK" runat="server" Text="Reassign" DialogResult="OK"></px:PXButton>
        <px:PXButton ID="btnReassignApprovalCancel" runat="server" DialogResult="Cancel" Text="Cancel" Style="margin-left: 5px" ></px:PXButton>
    </div>

</px:PXSmartPanel>
    <px:PXSmartPanel ID="PanelLoadPOOrders" runat="server" Caption="Load Orders" CaptionVisible="true" LoadOnDemand="true" Key="LoadOrders"
        AutoCallBack-Enabled="true" AutoCallBack-Target="PXFormLoadPOOrders" AutoCallBack-Command="Refresh" CallBackMode-CommitChanges="True"
        CallBackMode-PostData="Page">
        <px:PXFormView ID="PXFormLoadPOOrders" runat="server" DataSourceID="ds" CaptionVisible="False" DataMember="LoadOrders">
            <ContentStyle BackColor="Transparent" BorderStyle="None" Width="100%" Height="100%"  CssClass="" ></ContentStyle>
            <Template>
                <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="X" ControlSize="S" ></px:PXLayoutRule>
                <px:PXSelector ID="edBranchID" runat="server" DataField="BranchID" ></px:PXSelector>
                <px:PXDateTimeEdit ID="edFromDate" runat="server" DataField="FromDate" ></px:PXDateTimeEdit>
                <px:PXSelector ID="edStartOrderNbr" runat="server" DataField="StartOrderNbr" ></px:PXSelector>
                <px:PXNumberEdit ID="edMaxNumberOfDocuments" runat="server" DataField="MaxNumberOfDocuments" ></px:PXNumberEdit>

                <px:PXGroupBox RenderStyle="RoundBorder" ID="gpOrder" runat="server" Caption="Order by"
                    DataField="OrderBy" Width="300px">
                    <Template>
                        <px:PXLayoutRule runat="server" Merge="True" LabelsWidth="M" ControlSize="XM" ></px:PXLayoutRule>
                        <px:PXRadioButton runat="server" ID="rModeOrderDate" Value="1" Text="Order Date, Order Nbr." ></px:PXRadioButton>
                        <px:PXRadioButton runat="server" ID="rModeOrderNbr" Value="2" Text="Order Nbr." ></px:PXRadioButton>
                    </Template>
                </px:PXGroupBox>

                <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="X" ControlSize="S" ></px:PXLayoutRule>
                <px:PXDateTimeEdit ID="edToDate" runat="server" DataField="ToDate" ></px:PXDateTimeEdit>
                <px:PXSelector ID="edEndOrderNbr" runat="server" DataField="EndOrderNbr" ></px:PXSelector>
            </Template>
        </px:PXFormView>
        <px:PXPanel ID="PXPanelReasonButtons" runat="server" SkinID="Buttons">
            <px:PXButton ID="btnReasonOk" runat="server" Text="OK" DialogResult="Yes" CommandSourceID="ds" ></px:PXButton>
            <px:PXButton ID="btnReasonCancel" runat="server" Text="Cancel" DialogResult="No" CommandSourceID="ds" ></px:PXButton>
        </px:PXPanel>
    </px:PXSmartPanel>    
    <%
PX.Objects.CS.PXAddressLookup.RegisterClientScript(this, ds.DataGraph);
%>

<px:PXSmartPanel ID="AddressLookupPanel" runat="server"
    Style="z-index: 108; position: absolute; left: 27px; top: 99px;"
    Caption="Address Lookup"
    Width="75%"
    DefaultControlID="searchBox"
    height="440px"
    DataSourceID="ds"
    CaptionVisible="True"
    Key="AddressLookupFilter"
    CancelButtonID="AddressEntityBtnCancel"
    AllowResize="true"
    ShowMaximizeButton="True"
    AutoRepaint="true"
    ClientEvents-AfterShow="addressLookupAPI.initializeMaps"
    ClientEvents-BeforeHide="addressLookupAPI.clearSearch">
<style>
.flex-container {
    display: flex; /* or inline-flex */
    flex-direction: column;
    height: 100%;
}
.flex-item {
}
.mapContainer, #addressautocompletemap{
    z-index: 1000;
}
.customNavBar {
    position:absolute;
    top: 10px;
    left: 10px;
    z-index: 10001;
}
.pac-container {
    z-index: 10001;
}
.pac-container:after {
    /* Disclaimer: not needed to show 'powered by Google' if also a Google Map is shown */

    background-image: none !important;
    height: 0px;
}
</style>
<script type='text/javascript'>
var addressLookupVars = (function () {
    var _searchQuery = "";
    return {
        setSearchQuery: function (v) {
                _searchQuery = v;
            },
        getSearchQuery: function () {
                return _searchQuery;
            }
    }
})();

var addressLookupPanel = (function() {

    function _addHhandleCallback(context, error) {
        if (context == null || context.info == null)
            return;

        var _searchQuery = _GetSearchQuery();
        if ((typeof _searchQuery == 'undefined') ||
            (_searchQuery == null) ||
            (_searchQuery == "") ||
            _searchQuery == addressLookupVars.getSearchQuery()) {
            addressLookupVars.setSearchQuery(_searchQuery);
            addressLookupAPI.disableInfoWindows();
            return;
        }
        addressLookupVars.setSearchQuery(_searchQuery);
        addressLookupAPI.geocodeQuery(_searchQuery);
    }

    function _GetFormattedAddress() {
        if(    !(px_alls.SearchResponseAddressLine1.getValue() +
            px_alls.SearchResponseAddressLine2.getValue() +
            px_alls.SearchResponseCity.getValue() +
            px_alls.SearchResponseState.getValue() +
            px_alls.SearchResponsePostalCode.getValue())
        ) {
            return null;
        }

        return _GetFormattedAddressHelper(
            ", ",
            [
                px_alls.SearchResponseAddressLine1.getValue(),
                px_alls.SearchResponseAddressLine2.getValue(),
                px_alls.SearchResponseCity.getValue(),
                _GetFormattedAddressHelper(
                    " ",
                    [
                        px_alls.SearchResponseState.getValue(),
                        px_alls.SearchResponsePostalCode.getValue()
                    ]
                ),
                px_alls.SearchResponseCountry.getValue()
            ]
        );
    }

    function _GetFormattedAddressHelper(separator, args) {
        var result = "";
        args.forEach(
            function(arg) {
                if (arg != null && arg != "") {
                    if (result != "") {
                        result = result + separator;
                    }
                    result = result + arg;
                }
            });
        return result;
    }

    function _GetSearchQuery() {
        var _addrBeginning = _GetFormattedAddressHelper(
                " ",
                [
                    px_alls.SearchResponseAddressLine1.getValue(),
                    px_alls.SearchResponseAddressLine2.getValue(),
                    px_alls.SearchResponseCity.getValue(),
                    px_alls.SearchResponseState.getValue(),
                    px_alls.SearchResponsePostalCode.getValue()
                ]
            );

        if(_addrBeginning == null || _addrBeginning == "") {
            return "";
        }
        return _GetFormattedAddressHelper(
            " ",
            [
                _addrBeginning,
                px_alls.SearchResponseCountry.getValue()
            ]
        );
    }

    function _CleanSearchResponseValues() {
        px_alls.SearchResponseAddressLine1.updateValue("");
        px_alls.SearchResponseAddressLine2.updateValue("");
        px_alls.SearchResponseAddressLine3.updateValue("");
        px_alls.SearchResponseCity.updateValue("");
        px_alls.SearchResponseState.updateValue("");
        px_alls.SearchResponseLongitude.updateValue("");
    }

    return {
        addHhandleCallback: _addHhandleCallback,
        GetFormattedAddressHelper: _GetFormattedAddressHelper,
        GetFormattedAddress: _GetFormattedAddress,
        CleanSearchResponseValues: _CleanSearchResponseValues
    }
})();
</script>

<div class="flex-container" >
    <div class="flex-item" style="height: inherit;">
            <div class="mapContainer" id="mapcontainer"  style="height: inherit;" >
                <div id='searchBoxContainer' class="customNavBar" style="position: absolute;top:10px; left:10px;right:200px; max-width: 600px">
                    <px:PXFormView AutoRepaint="true" DefaultControlID="searchBox"  ID="AddressLookupPanelformAddress" runat="server" DataSourceID="ds"
                        CaptionVisible="False" SkinID="Transparent"
                        DataMember="AddressLookupFilter">
                        <Template>
                            <px:PXTextEdit ID="searchBox" SuppressLabel="True" style="width: 100%;" runat="server" DataField="SearchAddress">
                                <ClientEvents Initialize="addressLookupAPI.bindAutocompleteSearchControl" ></ClientEvents>
                            </px:PXTextEdit>
                            <px:PXTextEdit ID="addressLookupViewName" runat="server" DataField="ViewName" ></px:PXTextEdit>

                            <px:PXTextEdit ID="SearchResponseAddressLine1" runat="server" DataField="AddressLine1" ></px:PXTextEdit>
                            <px:PXTextEdit ID="SearchResponseAddressLine2" runat="server" DataField="AddressLine2" ></px:PXTextEdit>
                            <px:PXTextEdit ID="SearchResponseAddressLine3" runat="server" DataField="AddressLine3" ></px:PXTextEdit>
                            <px:PXTextEdit ID="SearchResponseCity" runat="server" DataField="City" ></px:PXTextEdit>
                            <px:PXTextEdit ID="SearchResponseCountry" runat="server" DataField="CountryID" ></px:PXTextEdit>
                            <px:PXTextEdit ID="SearchResponseState" runat="server" DataField="State" ></px:PXTextEdit>
                            <px:PXTextEdit ID="SearchResponsePostalCode" runat="server" DataField="PostalCode" ></px:PXTextEdit>
                            <px:PXTextEdit ID="SearchResponseLatitude" runat="server" DataField="Latitude" ></px:PXTextEdit>
                            <px:PXTextEdit ID="SearchResponseLongitude" runat="server" DataField="Longitude" ></px:PXTextEdit>
                        </Template>
                    </px:PXFormView>
                </div>
                <div id="addressautocompletemap" style="height:100%;"></div>
            </div>
    </div>
    <div class="flex-item">
        <px:PXPanel ID="AddressEntityBtn" Style="height: 40px;" runat="server"  height="40px" SkinID="Buttons">
            <px:PXButton CommandName="AddressLookupSelectAction" CommandSourceID="ds" ID="AddressLookupSelectAction" runat="server" Text="Select" DialogResult="Cancel">
                <ClientEvents Click="addressLookupAPI.fillInAddress" ></ClientEvents>
            </px:PXButton>
            <px:PXButton ID="AddressEntityBtnCancel" runat="server" DialogResult="Cancel" Text="Cancel" Style="margin-left: 5px;margin-right: 5px;" ></px:PXButton>
        </px:PXPanel>
    </div>
</div>
</px:PXSmartPanel>
    <px:PXSmartPanel ID="AddJointPayeePanel" runat="server" Height="600px" Width="850px" Caption="Select Joint Payee" CaptionVisible="True" Key="BillWithJointPayee" AutoCallBack-Command="Refresh"
        AutoCallBack-Enabled="True" AutoCallBack-Target="AvailableJointPayeesGrid" LoadOnDemand="true" AutoRepaint="true">
        <px:PXFormView ID="AvailableJointPayeesFilter" runat="server" DataMember="BillWithJointPayeeFilter" RenderStyle="Normal">
            <Template>
                <px:PXLayoutRule ID="PXLayoutRule1" runat="server" ControlSize="M" LabelsWidth="SM" StartColumn="True" ></px:PXLayoutRule>
                <px:PXSelector ID="edRefNbr" runat="server" DataField="RefNbr" AutoRefresh="true" CommitChanges="true" ></px:PXSelector>
            </Template>
        </px:PXFormView>
        <px:PXGrid ID="AvailableJointPayeesGrid" runat="server" Height="240px" Width="100%" DataSourceID="ds" SkinID="Details" SyncPosition="true">
            <AutoSize Enabled="true" ></AutoSize>
            <Levels>
                <px:PXGridLevel DataMember="BillWithJointPayee">
                    <Columns>
                        <px:PXGridColumn DataField="Selected" Label="Selected" Type="CheckBox" AllowCheckAll="true" ></px:PXGridColumn>
                        <px:PXGridColumn DataField="RefNbr" ></px:PXGridColumn>
                        <px:PXGridColumn DataField="LineNbr" ></px:PXGridColumn>
                        <px:PXGridColumn DataField="Name" ></px:PXGridColumn>
                        <px:PXGridColumn DataField="CuryJointAmountOwed" ></px:PXGridColumn>
                        <px:PXGridColumn DataField="CuryJointAmountPaid" ></px:PXGridColumn>
                        <px:PXGridColumn DataField="CuryBalance" ></px:PXGridColumn>                       
                    </Columns>
                </px:PXGridLevel>
            </Levels>
            <ActionBar>
                <Actions>
                    <AddNew MenuVisible="False" ToolBarVisible="False" ></AddNew>
                    <Delete MenuVisible="False" ToolBarVisible="Top" ></Delete>
                    <NoteShow MenuVisible="False" ToolBarVisible="False" ></NoteShow>
                </Actions>
            </ActionBar>
            <Mode AllowAddNew="False" AllowDelete="False" AllowUpdate="False" ></Mode>
        </px:PXGrid>
         <px:PXPanel ID="JointPayeeControlPanel" runat="server" SkinID="Buttons">
            <px:PXButton ID="btnAddJointPayee" runat="server" Text="Add" CommandName="AddJointPayee"  CommandSourceID="ds" ></px:PXButton>
            <px:PXButton ID="btnAddCloseJointPayee" runat="server" Text="Add & Close" DialogResult="OK"  ></px:PXButton>
            <px:PXButton ID="btnCloseJointPayee" runat="server" DialogResult="Cancel" Text="Close" ></px:PXButton>      
        </px:PXPanel>
    </px:PXSmartPanel>
    <px:PXSmartPanel ID="ComplianceDetailPanel" runat="server" Height="600px" Width="500px" Caption="Line Details" CaptionVisible="True" Key="ComplianceDetails" AutoCallBack-Command="Refresh"
        AutoCallBack-Enabled="True" AutoCallBack-Target="ComplianceDetailGrid" LoadOnDemand="true" AutoRepaint="true">
        <px:PXGrid ID="ComplianceDetailGrid" runat="server" Height="240px" Width="100%" DataSourceID="ds" SkinID="Details" SyncPosition="true">
            <AutoSize Enabled="true" ></AutoSize>
            <Levels>
                <px:PXGridLevel DataMember="ComplianceDetails">
                    <Columns>
                        <px:PXGridColumn DataField="DocType" ></px:PXGridColumn>
                        <px:PXGridColumn DataField="RefNbr" ></px:PXGridColumn>
                        <px:PXGridColumn DataField="LineNbr" ></px:PXGridColumn>
                        <px:PXGridColumn DataField="APInvoice__CuryID" ></px:PXGridColumn>  
                        <px:PXGridColumn DataField="AmountPaid" ></px:PXGridColumn>                     
                    </Columns>
                </px:PXGridLevel>
            </Levels>
            <ActionBar>
                <Actions>
                    <AddNew MenuVisible="False" ToolBarVisible="False" ></AddNew>
                    <Delete MenuVisible="False" ToolBarVisible="Top" ></Delete>
                    <NoteShow MenuVisible="False" ToolBarVisible="False" ></NoteShow>
                </Actions>
            </ActionBar>
            <Mode AllowAddNew="False" AllowDelete="False" AllowUpdate="False" ></Mode>
        </px:PXGrid>
         <px:PXPanel ID="PXPanel1" runat="server" SkinID="Buttons">
            <px:PXButton ID="btnCloseComplianceDetail" runat="server" DialogResult="Cancel" Text="Close" ></px:PXButton>      
        </px:PXPanel>
    </px:PXSmartPanel>
</asp:Content>