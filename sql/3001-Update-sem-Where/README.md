Your friend Zé Maria is in an ambush because he made an update without a where and end up zeroing all values from the price column. For your luck, the price can be recalculated knowing the product type.

If the product type is equal to A, the price will be 20.0
If the product type is equal to B, the price will be 70.0
If the product type is equal to C, the price will be 530.5
Your job is to show the name and price of all products. You must show the products in groups by the following order: first, all products form type A, second type B, and lastly the type C. Furthermore, the products in each group (A, B, C) must be printed in descending order by ID.

## Schema
#### products
|Column|Type|
|------|----|
|id|numeric|
|name|varchar (50)|
|type|char|
|price|numeric|
 
## Tables
#### products
|id|name|type|price|
|--|----|----|-----|
|1|Monitor|B|0|
|2|Headset|A|0|
|3|PC Case|A|0| 
|4|Computer Desk|C|0|
|5|Gaming Chair|C|0|
|6|Mouse|A|0|