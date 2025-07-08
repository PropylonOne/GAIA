using System;
using System.Collections;
using System.Linq;
using PX.Data;
using PX.Objects.CN.Common.Extensions;
using PX.Objects.CS;
using PX.Objects.EP;
using PX.Objects.FA;
using PX.Objects.PM;
using PX.Objects.PO;
using PX.Objects.RQ;
using PX.Objects.SO;

namespace GSynchExt
{
  public class ISGAFARequestEntry : PXGraph<ISGAFARequestEntry, ISGAFARequest>
  {
        #region Selects

        [PXViewName("FA Request")]
        public PXSelect<ISGAFARequest> FARequest;
        public PXSetup<ISGAFARequestSetup> AutoNumSetup;
        public PXSetup<ISGAFARequestSetupApproval> SetupApproval;
     
        [PXViewName("Approval Details")]
        [PXCopyPasteHiddenView]
        public EPApprovalAutomation<ISGAFARequest, ISGAFARequest.approved, ISGAFARequest.rejected, ISGAFARequest.hold, ISGAFARequestSetupApproval> Approval;

        public PXSelect<ISGAFARequest, Where<ISGAFARequest.reqNbr, Equal<Current<ISGAFARequest.reqNbr>>>> CurrentFARequest;

        //[PXHidden]
        public PXSelect<ISGAFARequestEvnt, Where<ISGAFARequestEvnt.reqNbr, Equal<Current<ISGAFARequest.reqNbr>>>> ReqEventRecords;

        [PXViewName("FA Request Details")]
        public PXSelect<ISGAFARequestLine, Where<ISGAFARequestLine.reqNbr, Equal<Current<ISGAFARequest.reqNbr>>>> FARequestDet;

        public PXSelect<FixedAsset> RequestedFAs;

        #endregion

        #region Graph constructor
        public ISGAFARequestEntry()
        {
            ISGAFARequestSetup setup = AutoNumSetup.Current;
        }
        #endregion


        #region EPApproval Cahce Attached
        [PXMergeAttributes(Method = MergeMethod.Merge)]
        [PXDefault(typeof(ISGAFARequest.reqDate), PersistingCheck = PXPersistingCheck.Nothing)]
        protected virtual void EPApproval_DocDate_CacheAttached(PXCache sender)
        {
        }

        [PXMergeAttributes(Method = MergeMethod.Merge)]
        [PXDefault(typeof(ISGAFARequest.reqBy), PersistingCheck = PXPersistingCheck.Nothing)]
        protected virtual void EPApproval_BAccountID_CacheAttached(PXCache sender)
        {
        }

        [PXMergeAttributes(Method = MergeMethod.Merge)]
        [PXDefault(typeof(ISGAFARequest.ownerID), PersistingCheck = PXPersistingCheck.Nothing)]
        protected virtual void EPApproval_DocumentOwnerID_CacheAttached(PXCache sender)
        {
        }

        [PXMergeAttributes(Method = MergeMethod.Merge)]
        [PXDefault(typeof(ISGAFARequest.description), PersistingCheck = PXPersistingCheck.Nothing)]
        protected virtual void EPApproval_Descr_CacheAttached(PXCache sender)
        {
        }
        #endregion


        #region Actions
        public PXAction<ISGAFARequest> RemoveHold;
        [PXButton(), PXUIField(DisplayName = "Remove Hold",
        MapEnableRights = PXCacheRights.Select, MapViewRights = PXCacheRights.Select)]

        protected virtual IEnumerable removeHold(PXAdapter adapter)
        {
            if (this.FARequest.Current != null)
            {

                FARequest.Current.Hold = false;

                FARequest.Current.ApprovalReqDate = Accessinfo.BusinessDate;
                FARequest.Current.ApprovalReqBy = GetCurrentEmployee(this)?.BAccountID;

                FARequest.Update(FARequest.Current);               
            }
            return adapter.Get();

        }
        public PXAction<ISGAFARequest> Close;
        [PXButton(), PXUIField(DisplayName = " Close",
        MapEnableRights = PXCacheRights.Select, MapViewRights = PXCacheRights.Select)]
        protected virtual IEnumerable close(PXAdapter adapter)
        {           
            return adapter.Get();
        }
        public PXAction<ISGAFARequest> Reopen;
        [PXButton(), PXUIField(DisplayName = " Reopen",
        MapEnableRights = PXCacheRights.Select, MapViewRights = PXCacheRights.Select)]
        protected virtual IEnumerable reopen(PXAdapter adapter)
        {
            return adapter.Get();
        }
        public PXAction<ISGAFARequest> Hold;
        [PXButton(), PXUIField(DisplayName = " Hold",
        MapEnableRights = PXCacheRights.Select, MapViewRights = PXCacheRights.Select)]
        protected virtual IEnumerable hold(PXAdapter adapter)
        {
            if (FARequest.Current != null)
            {
                FARequest.Current.Hold = true;
                FARequest.Update(FARequest.Current);

            }
            return adapter.Get();
        }
        public PXAction<ISGAFARequest> Issue;
        [PXButton(Connotation = PX.Data.WorkflowAPI.ActionConnotation.Secondary), PXUIField(DisplayName = "Issue",
        MapEnableRights = PXCacheRights.Select, MapViewRights = PXCacheRights.Select)]
        protected virtual IEnumerable issue(PXAdapter adapter)
        {
            if (FARequest.Current != null)
            {

                ISGAFAProcessFARequests graph = PXGraph.CreateInstance<ISGAFAProcessFARequests>();
                //ISGAFARequestFilter filter = graph.Filter.Select().Cast<ISGAFARequestFilter>().Where(x => x.ReqNbr == FARequest.Current.ReqNbr && x.ActionType == FARequestActionType.Issue).FirstOrDefault();

                ISGAFARequestFilter filter = new ISGAFARequestFilter();
                filter.ReqNbr = FARequest.Current.ReqNbr;
                filter.ActionType = FARequestActionType.Issue;

                graph.Filter.Current = filter;
                throw new PXRedirectRequiredException(graph, "Issue FA Request Lines");
                
            }

            return adapter.Get();
        }
        public PXAction<ISGAFARequest> Return2;
        [PXButton(Connotation = PX.Data.WorkflowAPI.ActionConnotation.Secondary), PXUIField(DisplayName = "Return",
        MapEnableRights = PXCacheRights.Select, MapViewRights = PXCacheRights.Select)]
        protected virtual IEnumerable return2(PXAdapter adapter)
        {
            if (FARequest.Current != null)
            {
                ISGAFAProcessFARequests graph = PXGraph.CreateInstance<ISGAFAProcessFARequests>();
                //ISGAFARequestFilter filter = graph.Filter.Select().Cast<ISGAFARequestFilter>().Where(x => x.ReqNbr == FARequest.Current.ReqNbr && x.ActionType == FARequestActionType.Issue).FirstOrDefault();

                ISGAFARequestFilter filter = new ISGAFARequestFilter();
                filter.ReqNbr = FARequest.Current.ReqNbr;
                filter.ActionType = FARequestActionType.Return;

                graph.Filter.Current = filter;
                throw new PXRedirectRequiredException(graph, "Return FA Request Lines");
            }
            return adapter.Get();
        }
        #endregion

        public static EPEmployee GetCurrentEmployee(PXGraph graph)
        {
            EPEmployee currentEmployee = PXSelect<EPEmployee,
                                                Where<EPEmployee.userID, Equal<Current<AccessInfo.userID>>>>.Select(graph);
            return currentEmployee;
        }

        protected virtual void _(Events.RowSelected<ISGAFARequest> e)
        {
            ISGAFARequest row = e.Row;
            if(row == null) return;

            bool enableProcessActions = row.Status == FARequestStatus.Open;

            Issue.SetEnabled(enableProcessActions);
            Return2.SetEnabled(enableProcessActions);

        }
        protected virtual void _(Events.RowSelected<ISGAFARequestLine> e)
        {
            ISGAFARequestLine row = e.Row;
            if (row == null) return;

            ISGAFARequest doc = this.FARequest.Current;
            if (doc == null) return;

            bool enableRequestLines = doc.Status == FARequestStatus.OnHold;
            PXUIFieldAttribute.SetEnabled(e.Cache, row, enableRequestLines);

        }
        protected virtual void _(Events.RowPersisting<ISGAFARequestLine> e)
        {
            ISGAFARequestLine row = e.Row;
            if (row == null) return;

            if (e.Operation == PXDBOperation.Insert || e.Operation == PXDBOperation.Update)
            {
                ValidateAndUpdateReqQtys(row);
            }
        }
        protected virtual void _(Events.RowPersisting<ISGAFARequest> e)
        {
            ISGAFARequest row = e.Row;
            if (row == null) return;

            if (e.Operation == PXDBOperation.Insert)
            {
                bool notClosed = FARequestDet.Cache.Inserted.Cast<ISGAFARequestLine>().Where(d => d.Completed != true).Any();
                if (FARequestDet.Cache.Inserted.Cast<ISGAFARequestLine>().Count() > 0 && !notClosed)
                {
                    row.Status = FARequestStatus.Closed;
                }
            }
            if (e.Operation == PXDBOperation.Update)
            {
                bool notClosed = FARequestDet.Select().Cast<ISGAFARequestLine>().Where(d => d.Completed != true).Any();
                if (FARequestDet.Select().Cast<ISGAFARequestLine>().Count() > 0 && !notClosed )
                {
                    row.Status = FARequestStatus.Closed;
                }
            }
        }
        protected virtual void _(Events.RowUpdating<ISGAFARequestLine> e)
        {
            ISGAFARequestLine row = e.Row;
            if (row == null) return;

            bool isComplete = row.RequestQty == row.IssuedQty && row.IssuedQty == row.ReturnedQty && row.RequestQty > 0;
            if (isComplete)
            {
                row.Completed = true;
            }
        }
        protected virtual void _(Events.RowDeleted<ISGAFARequestLine> e)
        {
            ISGAFARequestLine row = e.Row;
            if (row != null)
            {
                DeductFAReqQtys(row);
            }
        }
        protected virtual void _(Events.RowPersisted<ISGAFARequestLine> e)
        {
            ISGAFARequestLine row = e.Row;
            if (row != null)
            {
                IncreaseFAReqQtys(row);
            }
        }
        protected virtual void _(Events.FieldVerifying<ISGAFARequestLine, ISGAFARequestLine.requestQty> e)
        {
            ISGAFARequestLine row = e.Row;
            FixedAsset fAsset = FixedAsset.PK.Find(this, row.AssetID);
            if ((decimal)e.NewValue > fAsset?.Qty)
            {
                throw new PXException("Request Qty cannot be greater than FA Qty");
            }
        }

        protected virtual void _(Events.FieldSelecting<ISGAFARequestLine, ISGAFARequestLine.fAQty> e)
        {
            ISGAFARequestLine row = e.Row;
            if (row == null) return;
            FixedAsset fAsset = FixedAsset.PK.Find(this, row.AssetID);

            e.ReturnValue = fAsset?.Qty;   
        }

        protected virtual void _(Events.FieldSelecting<ISGAFARequestLine, ISGAFARequestLine.description> e)
        {
            ISGAFARequestLine row = e.Row;
            if (row == null) return;
            FixedAsset fAsset = FixedAsset.PK.Find(this, row.AssetID);

            e.ReturnValue = fAsset?.Description;
        }
        protected void ValidateAndUpdateReqQtys(ISGAFARequestLine row)
        {
                if (this.Accessinfo.ScreenID == "FA.50.10.10") return;

                FixedAsset fAsset         = FixedAsset.PK.Find(this, row.AssetID);
                FixedAssetGSExt fAssetExt = fAsset.GetExtension<FixedAssetGSExt>();
                decimal? totRequestQty    = Decimal.Zero;
                GetTotalReqQtyPerAsset(fAsset, row, out totRequestQty);

                if (fAsset.Qty - totRequestQty < row.RequestQty)
                {
                    throw new PXException(Messages.PersistError, (row.RequestQty - (fAsset.Qty - totRequestQty)), fAsset?.AssetCD.Trim());
                }
                else
                {
                    fAssetExt.UsrISGARequestedQty = (totRequestQty ?? 0) + row.RequestQty;
                    row.OpenQty                   = (row.RequestQty ?? 0) - (row.IssuedQty ?? 0);
                                       
                }

                RequestedFAs.Update(fAsset);
                FARequestDet.Update(row);
        }
        protected virtual void DeductFAReqQtys(ISGAFARequestLine row)
        {
            
            FixedAsset fAsset = FixedAsset.PK.Find(this, row.AssetID);
            if (fAsset == null) return;
            RequestedFAs.Current = fAsset;
            var fAssetExt = fAsset.GetExtension<FixedAssetGSExt>();

            fAssetExt.UsrISGARequestedQty -= row.RequestQty ?? 0;
            RequestedFAs.Update(RequestedFAs.Current);
        }
        protected virtual void IncreaseFAReqQtys(ISGAFARequestLine row)
        {
            FixedAsset fAsset = FixedAsset.PK.Find(this, row.AssetID);
            if (fAsset == null) return;
            RequestedFAs.Current = fAsset;
            var fAssetExt = fAsset.GetExtension<FixedAssetGSExt>();

            fAssetExt.UsrISGARequestedQty += row.RequestQty ?? 0;
            RequestedFAs.Update(RequestedFAs.Current);
        }
        public void GetTotalReqQtyPerAsset(FixedAsset asset, ISGAFARequestLine reqRow, out decimal? totRequestedQty)
        {

            totRequestedQty = 0;
            if (reqRow == null || asset == null) return;

            var reqLines = PXSelectGroupBy<ISGAFARequestLine, Where<ISGAFARequestLine.assetID, Equal<Required<ISGAFARequestLine.assetID>>,
                                   And<ISGAFARequestLine.reqNbr, NotEqual<Required<ISGAFARequestLine.reqNbr>>>>, 
                                   Aggregate<GroupBy<ISGAFARequestLine.assetID,
                                   Sum<ISGAFARequestLine.requestQty, 
                                   Sum<ISGAFARequestLine.issuedQty, Sum<ISGAFARequestLine.returnedQty>>>>>>.Select(this, reqRow.AssetID, reqRow.ReqNbr);
            
            ISGAFARequestLine issuedReqLinePerAsset = reqLines;
            totRequestedQty = issuedReqLinePerAsset.RequestQty - issuedReqLinePerAsset.ReturnedQty; 
        }
  }
}