/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (10) [name] as [Listing Name]
      ,[host_location] as [Host location]
      ,[host_response_time] as [Host Response Time]
      ,[host_response_rate] as [Host Response Rate]
      ,[host_is_superhost] as [Host is superhost]
      ,[host_total_listings_count] as [Host Total listings count]
      ,[host_identity_verified] as [Host Identity verified]
  FROM [dbo].[ListingsSmall]

SELECT [name] as [Listing Name]
FROM [dbo].[ListingsSmall]
Where [price] < 100

SELECT [property_type] as [ property type]
   , min(review_scores_rating) as [minimum review scores rating]
FROM [dbo].[ListingsSmall]
GROUP BY [property_type]


SELECT [neighbourhood] , COUNT([review_id]) as [Number of reviews]
FROM [dbo].[ListingsSmall]
INNER JOIN [dbo].[ReviewsSmall]
ON [dbo].[ListingsSmall].[listing_id] = [dbo].[ReviewsSmall].[listing_id]
GROUP BY [neighbourhood]

SELECT [name] as [Listing Name], COUNT([review_id]) as [Number of reviews]
FROM [dbo].[ListingsSmall]
INNER JOIN [dbo].[ReviewsSmall]
ON [dbo].[ListingsSmall].[listing_id] = [dbo].[ReviewsSmall].[listing_id]
GROUP BY [name]
ORDER BY [Number of reviews] DESC
 

 SELECT top (1) [name] as [Listing Name], COUNT([review_id]) as [Number of reviews]
FROM [dbo].[ListingsSmall]
INNER JOIN [dbo].[ReviewsSmall]
ON [dbo].[ListingsSmall].[listing_id] = [dbo].[ReviewsSmall].[listing_id]
GROUP BY [name]
ORDER BY [Number of reviews] DESC


