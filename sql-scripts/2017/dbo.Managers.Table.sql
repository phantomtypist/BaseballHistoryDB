USE [BaseballStats]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 7/19/2018 5:46:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[playerID] [nvarchar](9) NOT NULL,
	[teamID] [nvarchar](3) NOT NULL,
	[lgID] [nvarchar](2) NOT NULL,
	[yearID] [smallint] NOT NULL,
	[inseason] [smallint] NOT NULL,
	[G] [smallint] NULL,
	[W] [smallint] NULL,
	[L] [smallint] NULL,
	[rank] [smallint] NULL,
	[plyrMgr] [nvarchar](1) NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC,
	[yearID] ASC,
	[lgID] ASC,
	[teamID] ASC,
	[inseason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_People] FOREIGN KEY([playerID])
REFERENCES [dbo].[People] ([playerID])
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_People]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_Teams] FOREIGN KEY([teamID], [lgID], [yearID])
REFERENCES [dbo].[Teams] ([teamID], [lgID], [yearID])
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_Teams]
GO
