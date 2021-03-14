# Activity 15: Adding a Tag to your DATABASECHANGELOG Table and Erasing changesets

# Step 3: Run the update command to make your database change
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml update

# Step 4: Run the tag command
liquibase  --defaultsFile=../1/liquibase.properties tag version1

# Step 7: Run the update command to make your database change
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml update

# Step 8: Run the rollback<tag> command
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml rollback version1