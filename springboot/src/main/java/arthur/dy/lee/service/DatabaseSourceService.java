package arthur.dy.lee.service;

import arthur.dy.lee.model.DatabaseSource;

import java.util.Map;

public interface DatabaseSourceService {
    Map<String, DatabaseSource> queryDatabaseSource();
    void addDataSource(String datasourceName) throws Exception;

}
