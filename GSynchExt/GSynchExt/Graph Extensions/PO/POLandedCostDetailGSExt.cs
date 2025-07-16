using PX.Data;
using PX.Objects.AP.Standalone;
using PX.Objects.AP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PX.Objects.PO;
using PX.Objects.CS;

namespace GSynchExt
{

    public class POLandedCostDetailGSExt : PXGraphExtension<POLandedCostDocEntry>
    {
        #region IsActive
        public static bool IsActive() { return PXAccess.FeatureInstalled<FeaturesSet.inventory>(); }
        #endregion

        [PXImport]
        public PXSelect<POLandedCostDetail, Where<POLandedCostDetail.docType, Equal<Current<POLandedCostDoc.docType>>, And<POLandedCostDetail.refNbr, Equal<Current<POLandedCostDoc.refNbr>>>>, OrderBy<Asc<POLandedCostDetail.lineNbr>>> Details;

    }
}
