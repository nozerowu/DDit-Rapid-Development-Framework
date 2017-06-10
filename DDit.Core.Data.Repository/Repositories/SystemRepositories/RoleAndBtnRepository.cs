﻿using DDit.Core.Data.IRepositories;
using DDit.Core.Data.SystemEntity.Entity;
using System;
using Autofac;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DDit.Component.Tools;

namespace DDit.Core.Data.Repository.Repositories
{
    class RoleAndBtnRepository : IRoleAndBtnRepository
    {

        public void AddRB(List<RoleMappingButton> modelList)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                dal.GetRepository<RoleMappingButton>().Insert(modelList);
                dal.Save();
            }
        }


        public List<RoleMappingButton> GetbtnAuthByRole(int roleID)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
              return dal.GetRepository<RoleMappingButton>().Get(a => a.RoleID == roleID).ToList(); 
            }
        }
    }
}
