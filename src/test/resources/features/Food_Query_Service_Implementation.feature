Feature: Food Query Service Implementation
 
 Scenario: 
 Given the provided Api
 When method Get a Food by Id
 And method Get Foods
 And method Get All ?
 And method Get Ranks from Audit Service for ordering the results
 When method Get all foods by Category
 Then the food will be sorted by alphabetical order
 When  method Get for Main Page
 And all the foods from Redis Cache will be retrieved
 And method Get All Categories
 Then all retrieved ids will be sended to the Audit Service by Rabbit MQ
 
