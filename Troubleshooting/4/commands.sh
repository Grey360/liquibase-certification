# Step 1: Generate a Snapshot
liquibase  --defaultsFile=../1/liquibase.properties --outputFile=mySnapshot.json snapshot --snapshotFormat=json

# Step 3: Verify the rollback SQL
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml rollbackCountSQL 1

# Step 4: Rollback the changes you made to your database
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml rollbackCount 1