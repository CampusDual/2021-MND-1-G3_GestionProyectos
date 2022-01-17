
package es.cd.dsnd.pm.model.core.dao;


import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;


@Lazy
@Repository(value = "AreaProjectDao")
@ConfigurationFile(
	configurationFile = "dao/AreaProjectDao.xml",
	configurationFilePlaceholder = "dao/placeholders.properties")
public class AreaProjectDao extends OntimizeJdbcDaoSupport {
	public static final String ID_PROJECT_AREA    = "id_project_area";
	public static final String PROJECT_ID = "project_id";
	public static final String AREA_PID = "area_pid";
}