package es.cd.dsnd.pm.model.core.dao;


import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;


@Lazy
@Repository(value = "AreaDao")
@ConfigurationFile(
	configurationFile = "dao/AreaDao.xml",
	configurationFilePlaceholder = "dao/placeholders.properties")
public class AreaDao extends OntimizeJdbcDaoSupport {
	public static final String AREA_ID    = "area_id";
	public static final String AREA_NAME = "area_name";
}