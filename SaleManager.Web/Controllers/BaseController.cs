using AutoMapper;
using SaleManager.Web.Commons;
using SaleManager.Web.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SaleManager.Web.Controllers
{
    public class BaseController : Controller
    {
        public SaleManagerEntities _db;
        public IMapper _mapper;
        public Current _current; 
        public BaseController()
        {
            if (_db == null)
                _db = new SaleManagerEntities();
            if (_mapper == null)
                _mapper = new MapperConfig().Mapper;
            if (_current == null)
            {
                _current = new Current();
                _current.User = "hungnt03";
            }
                

        }
    }
}