package es.cd.dsnd.pm.api.core.service;


import java.util.List;
import java.util.Map;

import com.ontimize.jee.common.dto.EntityResult;
import com.ontimize.jee.common.exceptions.OntimizeJEERuntimeException;


public interface IProjectService {

	public EntityResult projectQuery(Map<String, Object> keyMap, List<String> attrList) throws OntimizeJEERuntimeException;
	public EntityResult projectInsert(Map<String, Object> attrMap) throws OntimizeJEERuntimeException;
	public EntityResult projectUpdate(Map<String, Object> attrMap, Map<String, Object> keyMap) throws OntimizeJEERuntimeException;
	public EntityResult projectDelete(Map<String, Object> keyMap) throws OntimizeJEERuntimeException;


 // ---- AREA ----
 public EntityResult areaQuery(Map<String, Object> keysValues, List<String> attributes) throws OntimizeJEERuntimeException;
 public EntityResult areaInsert(Map<String, Object> attributes) throws OntimizeJEERuntimeException;
 public EntityResult areaUpdate(Map<String, Object> attributes, Map<String, Object> keyValues) throws OntimizeJEERuntimeException;
 public EntityResult areaDelete(Map<String, Object> keyValues) throws OntimizeJEERuntimeException;

 // ---- AREA_PROJECT ----
 public EntityResult areaProjectQuery(Map<String, Object> keysValues, List<String> attributes) throws OntimizeJEERuntimeException;
 public EntityResult areaProjectInsert(Map<String, Object> attributes) throws OntimizeJEERuntimeException;
 public EntityResult areaProjectUpdate(Map<String, Object> attributes, Map<String, Object> keyValues) throws OntimizeJEERuntimeException;
 public EntityResult areaProjectDelete(Map<String, Object> keyValues) throws OntimizeJEERuntimeException;

 //---LEVELS---
public EntityResult levelQuery(Map<String, Object> keysValues, List<String> attributes) throws OntimizeJEERuntimeException;
public EntityResult levelInsert(Map<String, Object> attributes) throws OntimizeJEERuntimeException;
public EntityResult levelUpdate(Map<String, Object> attributes, Map<String, Object> keyValues) throws OntimizeJEERuntimeException;
public EntityResult levelDelete(Map<String, Object> keyValues) throws OntimizeJEERuntimeException;
}