using System;
using System.ComponentModel.DataAnnotations;

namespace SaleManager.Web.Models
{
    public class CategoryModel
    {
        public int Id { get; set; }
        [MaxLength(50)]
        [Required]
        public string Name { get; set; }
        [MaxLength(150)]
        public string Description { get; set; }
    }
}