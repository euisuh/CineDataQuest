# CineDataQuest

CineDataQuest is my ticket to cinematic data analysis. Delve into ticket sales, movie preferences, and more as I showcase my SQL skills in this portfolio project. Lights, camera, data!

## Conceptual Design

### ROLAP Schema

![db-schema](assets/db_screenshot/schema.png)

### Assumption

- The central focus of the data model is the "Transaction" entity, which serves as the primary event for creating a fact table. (Snowflake schema)
- Online Transaction must have a non-null value for os and browser
- We assume the customer when they conduct an offline transaction, will be buying ticket that has a session in that theater. Customers will not go to Theater A to buy a ticket that is in Theater B.
- We assume the price of the ticket is an integer value
- We assume the discount of the promotion to be an integer value
- We assume gender in all the tables to be depicted in one character
  - Male - M, Female - F, Unknown - U
- We assume the datetime in all the tables to not have any null components
- We assume the database to be constructed with sqlite
