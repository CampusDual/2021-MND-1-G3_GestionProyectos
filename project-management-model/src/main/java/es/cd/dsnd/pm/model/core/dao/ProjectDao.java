package es.cd.dsnd.pm.model.core.dao;


import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;


@Lazy
@Repository(value = "ProjectDao")
@ConfigurationFile(
	configurationFile = "dao/ProjectDao.xml",
	configurationFilePlaceholder = "dao/placeholders.properties")
public class ProjectDao extends OntimizeJdbcDaoSupport {
	public static final String PROJECT_ID    = "project_id";
	public static final String PROJECT_NAME = "project_name";
}