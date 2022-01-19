package es.cd.dsnd.pm.model.core.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;
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
	public EntityResult userQuery(Map<?, ?> keyMap, List<?> attrList)throws OntimizeJEERuntimeException  {
		return this.daoHelper.query(userDao, keyMap, attrList);
	}
	@Override
	@Transactional(rollbackFor = Exception.class)
	public EntityResult userInsert(Map<?, ?> attrMap) throws OntimizeJEERuntimeException {
		//Map<String, Object> nonUserData = removeNonRelatedData(attrMap, RoleDao.ID_ROLENAME);
		 //this.insertNonRelatedData(nonUserData);
		 //attrMap.putAll(nonUserData);
		return this.daoHelper.insert(userDao, attrMap);
	}
	/*
	private Map<String, Object> removeNonRelatedData(Map<String, Object> attrMap, String... attrToExclude) {
		  HashMap<String, Object> data = new HashMap<String, Object>();
		  for (String attr : attrToExclude) {
		   if (attrMap.containsKey(attr) && attrMap.get(attr) instanceof String) {
		    data.put(attr, attrMap.remove(attr));
		   }
		  }
		  return data;
		}
	 private void insertNonRelatedData(Map<String, Object> nonCandidateData) {
		  for (Entry<String, Object> entry : nonCandidateData.entrySet()) {
		   Map<String, Object> data = new HashMap<String, Object>();
		   List<String> attr = new ArrayList<String>();
		   EntityResult toret, query;
		   switch (entry.getKey()) {
		   case UserDao.ATTR_EDUCATION:
		    data.put(EducationDao.ATTR_DESCRIPTION, entry.getValue());
		    attr.add(EducationDao.ATTR_ID);
		    query = this.masterService.educationQuery(data, attr);
		    if (query.calculateRecordNumber() > 0) {
		     entry.setValue(query.getRecordValues(0).get(EducationDao.ATTR_ID));
		    } else {
		     toret = this.masterService.educationInsert(data);
		     entry.setValue(toret.get(EducationDao.ATTR_ID));
		    }
		    break;
		   default:
		    break;
		   }
		  }
		 }
		}*/
	public EntityResult userUpdate(Map<?, ?> attrMap, Map<?, ?> keyMap) throws OntimizeJEERuntimeException  {
		return this.daoHelper.update(userDao, attrMap, keyMap);
	}

	public EntityResult userDelete(Map<?, ?> keyMap) throws OntimizeJEERuntimeException  {
		return this.daoHelper.delete(userDao, keyMap);
	}

	@Override
	public EntityResult roleQuery(Map<?, ?> keyMap, List<?> attrList) {
		return this.daoHelper.query(roleDao, keyMap, attrList);
		
	}

	@Override
	public EntityResult roleInsert(Map<?, ?> attrMap) {
		return this.daoHelper.insert(roleDao, attrMap);
	}

	@Override
	public EntityResult roleUpdate(Map<?, ?> attrMap, Map<?, ?> keyMap) {
		return this.daoHelper.update(roleDao, attrMap, keyMap);
	}

	@Override
	public EntityResult roleDelete(Map<?, ?> keyMap) {
		return this.daoHelper.delete(roleDao, keyMap);
	}

}
