using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NoZero.Mvc.Models;

namespace NoZero.Mvc.Service
{
    public interface ILoginService
    {
        Tuple<bool, string> Login(User model, string IP);

        void Logon();
    }
}