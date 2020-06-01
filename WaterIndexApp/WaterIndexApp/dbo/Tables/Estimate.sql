CREATE TABLE [dbo].[Estimate](
	[Estimate_ID] [int] NOT NULL,
	[Apartment_ID] [int] NOT NULL,
	[Estimate] [int] NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Estimate_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Estimate]  WITH CHECK ADD  CONSTRAINT [FK_Estimate_Apartment] FOREIGN KEY([Apartment_ID])
REFERENCES [dbo].[Apartment] ([Apartment_ID])
GO

ALTER TABLE [dbo].[Estimate] CHECK CONSTRAINT [FK_Estimate_Apartment]