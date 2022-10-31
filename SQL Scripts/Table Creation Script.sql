USE [DOTproj]
GO

/****** Object:  Table [dbo].[adj_list]    Script Date: 10/25/2022 10:04:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[adj_list](
	[County] [nvarchar](255) NOT NULL,
	[FIPS_code] [nvarchar](255) NOT NULL,
	[Map_number] [int] NULL,
	[adj_1] [int] NULL,
	[adj_2] [int] NULL,
	[adj_3] [int] NULL,
	[adj_4] [int] NULL,
	[adj_5] [int] NULL,
	[adj_6] [int] NULL,
	[adj_7] [int] NULL
) ON [PRIMARY]
GO


