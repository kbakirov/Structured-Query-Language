/* Q1: Provide all the custid, names and city names */
SELECT Cu.CustomerID
		, Cu.CustomerName
		-- , Cu.PostalCityID
		-- , Ci.CityID
		, Ci.CityName As CustomerLocation
FROM
	Sales.Customers as Cu,
	[Application].Cities as Ci
WHERE
	Cu.PostalCityID = Ci.CityID