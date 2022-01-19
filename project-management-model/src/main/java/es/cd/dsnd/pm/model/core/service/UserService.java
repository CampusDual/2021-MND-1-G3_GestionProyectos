package es.cd.dsnd.pm.model.core.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.server.dao.DefaultOntimizeDaoHelper;

import es.cd.dsnd.pm.api.core.service.IUserService;
import es.cd.dsnd.pm.model.core.dao.RoleDao;
import es.cd.dsnd.pm.model.core.dao.UserDao;


@Lazy
@Service("UserService")
public class UserService implements IUserService {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private RoleDao roleDao;

	@Autowired
	private DefaultOntimizeDaoHelper daoHelper;

	public void loginQuery(Map<?, ?> key, List<?> attr) {
	}

	//Sample to permission
	//@Secured({ PermissionsProviderSecured.SECURED })
	public EntityResult userQuery(Map<?, ?> keyMap, List<?> attrList) {
		return this.daoHelper.query(this.userDao, keyMap, attrList);
	}

	public EntityResult userInsert(Map<?, ?> attrMap) {
		return this.daoHelper.insert(this.userDao, attrMap);
	}

	public EntityResult userUpdate(Map<?, ?> attrMap, Map<?, ?> keyMap) {
		return this.daoHelper.update(this.userDao, attrMap, keyMap);
	}

	public EntityResult userDelete(Map<?, ?> keyMap) {
		return this.daoHelper.delete(this.userDao, keyMap);
	}

	@Override
	public EntityResult roleQuery(Map<?, ?> keyMap, List<?> attrList) {
		return this.daoHelper.query(this.roleDao, keyMap, attrList);
		
	}

	@Override
	public EntityResult roleInsert(Map<?, ?> attrMap) {
		return this.daoHelper.insert(this.roleDao, attrMap);
	}

	@Override
	public EntityResult roleUpdate(Map<?, ?> attrMap, Map<?, ?> keyMap) {
		return this.daoHelper.update(this.roleDao, attrMap, keyMap);
	}

	@Override
	public EntityResult roleDelete(Map<?, ?> keyMap) {
		return this.daoHelper.delete(this.roleDao, keyMap);
	}

}
