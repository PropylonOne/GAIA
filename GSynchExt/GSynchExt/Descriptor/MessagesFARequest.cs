using PX.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GSynchExt.Descriptor
{

    public class FARequestTypes
    {

        public const string FundTransfer = "Fund Transfer";
        public const string MaterialRequest = "Material Request";
        public const string MaterialRequestServices = "Material Request Services";
        public const string ToolRequest = "T";
        public class ListAttribute : PXStringListAttribute
        {
            public static readonly (string, string)[] ValuesToLabels = new[]
            {
                (Open, Messages.Open),
                (Hold, Messages.Hold),
                (PendingApproval, EP.Messages.Balanced),
                (Voided, EP.Messages.Voided),
                (PendingProcessing, Messages.PendingProcessing),
                (AwaitingPayment, Messages.AwaitingPayment),
                (CreditHold, Messages.CreditHold),
                (Completed, Messages.Completed),
                (Cancelled, Messages.Cancelled),
                (BackOrder, Messages.BackOrder),
                (Shipping, Messages.Shipping),
                (Invoiced, Messages.Invoiced),
                (Expired, Messages.Expired),
            };

            public ListAttribute() : base(ValuesToLabels) { }
        }


        public const string Initial = "_";
        public const string Open = "N";
        public const string Hold = "H";
        public const string PendingApproval = "P";
        public const string Voided = "V";
        public const string PendingProcessing = "E";
        public const string AwaitingPayment = "A";
        public const string CreditHold = "R";
        public const string Completed = "C";
        public const string Cancelled = "L";
        public const string BackOrder = "B";
        public const string Shipping = "S";
        public const string Invoiced = "I";
        public const string Expired = "D";

        public class voided : PX.Data.BQL.BqlString.Constant<voided>
        {
            public voided() : base(Voided) { }
        }
        public class pendingApproval : PX.Data.BQL.BqlString.Constant<pendingApproval>
        {
            public pendingApproval() : base(PendingApproval) { }
        }
        public class open : PX.Data.BQL.BqlString.Constant<open>
        {
            public open() : base(Open) { }
        }
        public class hold : PX.Data.BQL.BqlString.Constant<hold>
        {
            public hold() : base(Hold) { }
        }
        public class pendingProcessing : PX.Data.BQL.BqlString.Constant<pendingProcessing>
        {
            public pendingProcessing() : base(PendingProcessing) { }
        }
        public class awaitingPayment : PX.Data.BQL.BqlString.Constant<awaitingPayment>
        {
            public awaitingPayment() : base(AwaitingPayment) { }
        }
        public class creditHold : PX.Data.BQL.BqlString.Constant<creditHold>
        {
            public creditHold() : base(CreditHold) { }
        }
        public class completed : PX.Data.BQL.BqlString.Constant<completed>
        {
            public completed() : base(Completed) { }
        }
        public class cancelled : PX.Data.BQL.BqlString.Constant<cancelled>
        {
            public cancelled() : base(Cancelled) { }
        }
        public class backOrder : PX.Data.BQL.BqlString.Constant<backOrder>
        {
            public backOrder() : base(BackOrder) { }
        }
        public class shipping : PX.Data.BQL.BqlString.Constant<shipping>
        {
            public shipping() : base(Shipping) { }
        }
        public class invoiced : PX.Data.BQL.BqlString.Constant<invoiced>
        {
            public invoiced() : base(Invoiced) { }
        }
        public class expired : PX.Data.BQL.BqlString.Constant<expired>
        {
            public expired() : base(Expired) { }
        }
    }
}
