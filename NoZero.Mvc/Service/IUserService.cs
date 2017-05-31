using NoZero.Mvc.Models;
using System.Collections.Generic;


namespace NoZero.Mvc.Service
{
    public interface IUserService
    {
        List<Menu> GetMenuByUserID(int UserID);
    }
}