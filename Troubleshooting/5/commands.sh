# Step 2: Run the diff command
liquibase --changeLogFile=dbchangelog.xml diff
# Step 3: Verify the rollback SQL
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml rollbackCountSQL 1

# Step 4: Rollback the changes you made to your database
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml rollbackCount 1