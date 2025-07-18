﻿using PX.Data;
using PX.Objects.CS;
using PX.Objects.EP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GSynchExt
{
    public class ISGAFARequestEPApprovalMapMaintExt : PXGraphExtension<EPApprovalMapMaint>
    {
        #region IsActive
        public static bool IsActive() { return PXAccess.FeatureInstalled<FeaturesSet.projectModule>(); }
        #endregion

        #region Overrides

        public delegate IEnumerable<string> GetEntityTypeScreensDel();
        [PXOverride]
        public virtual IEnumerable<string> GetEntityTypeScreens(GetEntityTypeScreensDel del)
        {
            foreach (string s in del())
            {
                yield return s;
            }

            yield return "FA305000";
        }
        #endregion
    }
}
