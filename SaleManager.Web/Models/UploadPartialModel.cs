using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SaleManager.Web.Models
{
    public class UploadPartialModel
    {
        public bool AccessMultiFile { set; get; }
        public List<UploadModel> Files { set; get; }
    }
    public class UploadModel
    {
        public HttpPostedFileBase File { set; get; }
        public string PathSever { set; get; }
    }
}