# Activity 12: Checking your Deployment History

# Step 1: Use the changelog you created in the previous activity, and run the update command to make your database change
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=sql.sql update

# Step 2: Run the history command
liquibase  --defaultsFile=../1/liquibase.properties history