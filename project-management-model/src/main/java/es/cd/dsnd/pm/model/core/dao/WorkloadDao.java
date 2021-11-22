package es.cd.dsnd.pm.model.core.dao;


import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;


@Lazy
@Repository(value = "WorkloadDao")
@ConfigurationFile(
	configurationFile = "dao/WorkloadDao.xml",
	configurationFilePlaceholder = "dao/placeholders.properties")
public class WorkloadDao extends OntimizeJdbcDaoSupport {
	public static final String WORKLOAD_ID    = "workload_id";
	public static final String USER_ = "user_";
	public static final String PROJECT_ID = "project_id";
	public static final String WORKLOAD_PERCENTAGE = "workload_percentage";
	
}