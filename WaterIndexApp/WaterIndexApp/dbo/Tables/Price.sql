CREATE TABLE [dbo].[Price](
	[Price_ID] [int] NOT NULL,
	[Price] [nchar](10) NULL,
	[Date] [nchar](10) NULL,
	[Index_ID] [int] NOT NULL,
	[Estimate_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Price_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Estimate] FOREIGN KEY([Estimate_ID])
REFERENCES [dbo].[Estimate] ([Estimate_ID])
GO

ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [FK_Price_Estimate]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Index] FOREIGN KEY([Index_ID])
REFERENCES [dbo].[Index] ([Index_ID])
GO

ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [FK_Price_Index]