USE DOTproj
GO
CREATE PROCEDURE dbo.county2
	@FIPS_code VARCHAR(20)
	AS
	SELECT Map_number from dbo.adj_list 
	where FIPS_code= @FIPS_code

	GO
	