# Credit-Card-Detection


## About

Scams are happening everywhere these days. There are various methods available for you to transact from small to large like online. The project aims to facilitate efficient management of credit card operations, customer accounts and transaction records in a financial institution.

## Purpose Of the Project
The system is designed to streamline processes related to credit card issuance, account management, transaction tracking and reporting.


## Data Dictionaries

#### Table 1 card_holder




| Column | DataType     | Description                |
| :-------- | :------- | :------------------------- |
| id_c_h | INT| Card holder ID number |
| Name |Varchar(40)|Name of Customer|    


#### Table 2 Credit_card


| Column | Type     | Description                       |
| :-------- | :------- | :-------------------------------- | 
|card| varchar(10) | Card Number|
|id_c_h|int|Card holder ID number|


#### Table 3 Merchant_category

| Column | DataType     | Description                       |
| :-------- | :------- | :-------------------------------- | 
|id_m_c|Int|Merchant category ID Number|
|name|varchar(20)|name of category|


#### Table 4 Merchant
| Column | DataType     | Description                       |
| :-------- | :------- | :-------------------------------- | 
|id_m|INT|Merchant ID Number|
|Name|Varchar(50)|Name of customers|
|id_m_c|int|id of merchant category|


#### Table 5 Transaction
| Column | DataType     | Description                       |
| :-------- | :------- | :-------------------------------- | 
|id|Int|customer ID Number|
|Date|DATE|Date Received of Product|
|Amount|INT|amount to taking by customer|
|card|VARCHAR(45)|which card customer used|
|id_m|INT|Serial Number of merchant|
