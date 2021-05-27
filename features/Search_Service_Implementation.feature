Feature: Search Service Implementation

  Scenario: Saving Food Tags
  
  When the Saving Food Tags are triggered from RabbitMQ
  And Food ID and Tag list information will be shown
  Then Search Service saves Tags with Food ID
  Then Search Service saves Tags with User
  
  
  Scenario: Search by Keyword(s)
  
  When Search Service searches by keywords 
  And Search Service gets search keyword(s) from API
  And Search Service makes a discovery in elastic search by...
  And The IDs in the search result sends to Food Query Service via gRPC to get some details from the food DB 
  |Food Name |
  |Images    |
  |Author    |
  
  And Information will be retrieved from Audit Service
  |Total View Count|
  
  And Search Keyword(s) will be send to Audit Service via RabbitMQ
  
  
  
  
  
