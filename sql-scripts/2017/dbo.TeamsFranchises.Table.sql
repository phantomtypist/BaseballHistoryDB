USE [BaseballStats]
GO
/****** Object:  Table [dbo].[TeamsFranchises]    Script Date: 7/19/2018 5:46:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamsFranchises](
	[franchID] [nvarchar](3) NOT NULL,
	[franchName] [varchar](50) NULL,
	[active] [nvarchar](2) NULL,
	[NAassoc] [nvarchar](3) NULL,
 CONSTRAINT [PK_TeamsFranchises] PRIMARY KEY CLUSTERED 
(
	[franchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
