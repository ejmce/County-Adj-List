USE DOTproj
GO
CREATE PROCEDURE dbo.county1
	@FIPS_code VARCHAR(20)
	AS
	SELECT adj_1, adj_2, adj_3, adj_4, 
	adj_5, adj_6, adj_7 from dbo.adj_list 
	where FIPS_code= @FIPS_code

	GO
	