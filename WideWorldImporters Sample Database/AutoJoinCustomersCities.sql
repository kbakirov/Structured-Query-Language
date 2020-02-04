/* Q2: Provide all the custid, names and location (city name)
	and, the name and city name of the customer to invoice
*/
SELECT 
	Cu1.CustomerID
	, Cu1.CustomerName
	--, Cu1.PostalCityID 
	, Ci1.CityName As CustomerLocation
	--, Cu1.BillToCustomerID
	--, Cu2.CustomerID
	, Cu2.CustomerName As BillToCustomer
	--, Cu2.PostalCityID
	, Ci2.CityName As BillToCustomerCity
FROM
	Sales.Customers as Cu1,
	Sales.Customers as Cu2,
	[Application].Cities as Ci1,
	[Application].Cities as Ci2
WHERE
	Cu1.BillToCustomerID = Cu2.CustomerId
	AND Cu1.PostalCityID = Ci1.CityID
	AND Cu2.PostalCityID = Ci2.CityID
ORDER BY Cu1.CustomerId