# Activity 10: Mark a Bad Changeset as nextChangeSetRan

# Step 3: Run the update command to make your database change
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml update

# Step 4: Run the markNextChangeSetRan command
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml markNextChangeSetRan
