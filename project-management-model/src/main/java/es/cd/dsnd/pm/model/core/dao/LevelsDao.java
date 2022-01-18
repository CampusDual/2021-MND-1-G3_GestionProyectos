package es.cd.dsnd.pm.model.core.dao;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.ontimize.jee.server.dao.common.ConfigurationFile;
import com.ontimize.jee.server.dao.jdbc.OntimizeJdbcDaoSupport;

@Lazy
@Repository(value = "LevelsDao")
@ConfigurationFile(
	configurationFile = "dao/LevelsDao.xml",
	configurationFilePlaceholder = "dao/placeholders.properties")

public class LevelsDao extends OntimizeJdbcDaoSupport {
	public static final String VALOR_NIVEL    = "valor_nivel";
	public static final String NIVEL = "nivel";
}