/*
    Admin USER.
*/
CREATE USER GAILOR IDENTIFIED BY root;
GRANT DBA TO GAILOR;
GRANT ALL PRIVILEGES TO GAILOR;
/*
    Target schema.
*/
CREATE USER CERTIF_LIQ_TRGT IDENTIFIED BY gailor_trgt;
GRANT CONNECT TO CERTIF_LIQ_TRGT;

/*
    Source schema.
*/
CREATE USER CERTIF_LIQ_SRC IDENTIFIED BY gailor_src;
GRANT ALL PRIVILEGES TO CERTIF_LIQ_TRGT;