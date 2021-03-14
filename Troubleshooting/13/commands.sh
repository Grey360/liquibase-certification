# Activity 13: Identifying Unexpected changesets

# Step 3: Run the update command to make your database change
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=sql.sql update

# Step 5: Run the unexpectedChangeSets command
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=sql.sql unexpectedChangeSets --verbose