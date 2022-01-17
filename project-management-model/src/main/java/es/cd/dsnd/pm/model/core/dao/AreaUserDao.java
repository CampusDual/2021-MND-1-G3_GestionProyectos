package es.cd.dsnd.pm.model.core.dao;


import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;


@Lazy
@Repository(value = "AreaUserDao")
@ConfigurationFile(
	configurationFile = "dao/AreaUserDao.xml",
	configurationFilePlaceholder = "dao/placeholders.properties")
public class AreaUserDao extends OntimizeJdbcDaoSupport {
	public static final String ID_AREA_USER    = "id_area_user";
	public static final String USER_ = "user_";
	public static final String AREA_UID = "area_uid";
}