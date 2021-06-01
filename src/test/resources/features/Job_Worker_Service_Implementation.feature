Feature:Job Worker Service Implementation
  
  Scenario:
    Given job worker service stores scheduled job details
    When job details are <Name> <Key> <Execution period>
    
      |Api Consuming Job              |
      |Spoonacular Api Consuming Job  |    
      |MealDb Api Consuming Job       |     
      |Main Page Foods Refreshing Job |


  Scenario:
       Given the work service an execution period
       When 30 minutes execution period provided
     
    
    Scenario:
      Given the database executions of the history
      When the work service checks each job to be executed
      And unrelated data stores in the history table and latest executions table in the database.
      # When the current date is not matching with calculated date do nothing.  
    
    Scenario:
      Given the database latest execution table of the history
      When the work service checks each job to be executed
      And the job gets the latest execution time and execution period in minutes
      Then current date and calculated date stores in the database.
      When the current date is not matching with calculated date do nothing.
      When the current date is higher than the calculated date 
      And execute the job and store in the history table and update the record in the latest execution table
      
    Scenario:
      Given information of execution service
      When the information placed in the command entitites
      And the command entity will call ConsumeFoodApiEntity
      When the given "ConsumeFoodApiEntity"
      |spponacular|
      |mealdb     |
      
    Scenario:
      When the information placed in the command entitites
      And the command entity will call RefreshMAinPageFoodsEntitiy
      When the given "RefreshMAinPageFoodsEntitiy"
      Then the count value tells the client the amount of food that will load in the cache.
      
    Scenario:
      Given the Post request is send for job name
      And the  job names will provide <spoonacular> <mealdb> <mainpagefoods>
      When the Get request is send to job history
      Then the job name from latest execution time will be receieved
      
      
    
      
      
      
     
      
