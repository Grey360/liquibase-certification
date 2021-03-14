# Activity 9: Recover from an MD5Sum Check Failure

# Step 3: Run the update command to make your database change
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml update

# Step 4: Update the database manually

    # H2
    alter table countries alter column name varchar(60);
    # Oracle
    ALTER TABLE COUNTRIES MODIFY NAME VARCHAR(60);

# Step 6: Run the update command to make your database change
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml update

# Step 7: Run the clearCheckSums command
liquibase  --defaultsFile=../1/liquibase.properties clearCheckSums

# Step 9: Run update to add the checksums back into the DATABASECHANGELOG table
liquibase  --defaultsFile=../1/liquibase.properties --changeLogFile=xml.xml update