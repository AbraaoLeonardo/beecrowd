The video store is making its semi-annual report and needs your help. All you have to do is select the name of the clients and the date of rental, from the rentals made in September 2016.

## Schema
movies
| Column | Type |
|--------|------|
| id (PK) | numeric |
| name | varchar |
| street | varchar |
| city | varchar |
   
prices
| Column | Type |
|--------|------|
| id (PK) |numeric |
| rentals_date | date (ISO/YMD) |
| id_customers (FK) | numeric |
 
## Tables
#### movies
| id | name | id_prices |
|----|------|-----------|
| 1 | Batman | 3 |
| 2 | The Battle of the Dark River | 3 | 
| 3 | White Duck | 5 |
| 4 | Breaking Barriers | 4 |
| 5 | The Two Hours | 2 |
   
#### prices
| id  | categorie    | value |
|-----|--------------|-------|
| 1   | Releases     | 3.50  |
| 2   | Bronze Seal  | 2.00  |
| 3   | Silver Seal  | 2.50  |
| 4   | Gold Seal    | 3.00  |
| 5   | Promotion    | 1.50  |
 
#### Output Sample
| id  | name        |
|-----|-------------|
| 3   | White Duck  |