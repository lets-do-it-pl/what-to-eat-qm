Feature: Audit Service Implementation
Scenario:
When the Audit Service get Food IDs
And return the IDs with the request count
Then Audit Service distributes Food IDs information via gRPC and an API

Scenario:
When the Audit servive gets the requested Food ID from Rabbit MQ
And Audit Service saves or increase the requested count of the particular Food.

Scenario:
When the Audit Service list the Food IDs in descending order by requested count via gRPC.
And the Audit Service get paging info
Then returns the ordered Food IDs by <> <> ?
| |
| |
