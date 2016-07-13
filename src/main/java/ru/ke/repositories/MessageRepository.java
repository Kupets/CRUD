package ru.ke.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.ke.model.Message;

public interface MessageRepository extends JpaRepository<Message, Long> {
    /*
    * Oracle: SELECT * FROM v$version;
    * SQL Server: SELECT @@version
    * MySQL: SELECT VERSION()
    * */
    String GET_VERSION = "SELECT VERSION()";

    @Query(value = GET_VERSION, nativeQuery = true)
    String getDbVersion();
}
