# Step 2: Run the futureRollbackSQL command

    # 1.  Run futureRollbackSQL using the provided XML changelog to see auto-generated rollback SQL.
    liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml --outputFile=futureRollbackAuto.sql futureRollbackSQL

    # 2.  Run futureRollbackSQL using the provided SQL changelog to see custom rollback SQL.
    liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=sql.sql --outputFile=futureRollbackAuto.sql futureRollbackSQL