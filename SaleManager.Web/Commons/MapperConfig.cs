﻿using AutoMapper;
using SaleManager.Web.Entities;
using SaleManager.Web.Models;
using System.Configuration;

namespace SaleManager.Web.Commons
{
    public class MapperConfig
    {
        public IMapper Mapper { get; }
        public MapperConfig()
        {
            var configuration = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<Category, CategoryModel>();
                cfg.CreateMap<Supplier, SupplierModel>();
                cfg.CreateMap<Product, ProductModel>();
            });
            // only during development, validate your mappings; remove it before release
            //configuration.AssertConfigurationIsValid();
            // use DI (http://docs.automapper.org/en/latest/Dependency-injection.html) or create the mapper yourself
            Mapper = configuration.CreateMapper();
        }
    }
}