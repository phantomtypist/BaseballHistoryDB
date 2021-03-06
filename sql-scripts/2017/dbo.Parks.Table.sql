USE [BaseballStats]
GO
/****** Object:  Table [dbo].[Parks]    Script Date: 7/19/2018 5:46:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parks](
	[parkID] [nvarchar](6) NOT NULL,
	[name] [varchar](50) NULL,
	[alias] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NULL,
 CONSTRAINT [PK_Parks] PRIMARY KEY CLUSTERED 
(
	[parkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
