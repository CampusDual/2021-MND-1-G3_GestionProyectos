package es.cd.dsnd.pm.api.core.service;


import java.util.List;
import java.util.Map;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;


public interface IWorkloadService {

	public EntityResult workloadQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
	public EntityResult workloadInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
	public EntityResult workloadUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
	public EntityResult workloadDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;

}