CREATE TABLE [dbo].[Index](
	[Index_ID] [int] NOT NULL,
	[Apartment_ID] [int] NOT NULL,
	[IndexDate] [date] NULL,
	[BathroomIndex] [int] NULL,
	[KitchenIndex] [int] NULL,
	[Estimate_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Index_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Index]  WITH CHECK ADD  CONSTRAINT [FK_Index_Apartment] FOREIGN KEY([Apartment_ID])
REFERENCES [dbo].[Apartment] ([Apartment_ID])
GO

ALTER TABLE [dbo].[Index] CHECK CONSTRAINT [FK_Index_Apartment]
GO
ALTER TABLE [dbo].[Index]  WITH CHECK ADD  CONSTRAINT [FK_Index_Estimate] FOREIGN KEY([Estimate_ID])
REFERENCES [dbo].[Estimate] ([Estimate_ID])
GO

ALTER TABLE [dbo].[Index] CHECK CONSTRAINT [FK_Index_Estimate]