TestCode <- function(){
  setwd("c:/temp")
  
  renderSqlFile("Hercules.sql", "RenderedHercules.sql", CDM_schema="cdm4_sim", results_schema="scratch")
  
  #Test on SQL Server:
  connectionDetails <-   createConnectionDetails(dbms="sql server", server="RNDUSRDHIT07.jnj.com")
  conn <- connect(connectionDetails)
  sql <- readSql("RenderedHercules.sql")
  executeSql(conn,connectionDetails$dbms, sql)
  
  #Test on Oracle:
  translateSqlFile("RenderedHercules.sql", "OracleHercules.sql",targetDialect="oracle")
  
  sql <- readSql("OracleHercules.sql")
  
  pw <- ""
  connectionDetails <- createConnectionDetails(dbms="oracle", server="xe", user="system",password=pw)
  conn <- connect(connectionDetails)
  executeSql(conn,connectionDetails$dbms, sql)


}