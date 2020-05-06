using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeoClinic.Models
{    
        interface ICurd<T>
        {
            void Add(T s);
            void Update(T s);
            void Delete(T s);
            T Search(T s);
            List<T> GetIds();
            List<T> GetNames();
        }    
}