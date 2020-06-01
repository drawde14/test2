CREATE TABLE [dbo].[Apartment](
	[Apartment_ID] [int] NOT NULL,
	[Street] [varchar](50) NULL,
	[Number] [int] NULL,
	[Entrance] [varchar](10) NULL,
	[Floor] [int] NULL,
	[Apartment_Nr] [int] NULL,
	[Building_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Apartment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Apartment]  WITH CHECK ADD  CONSTRAINT [FK_Apartment_Building] FOREIGN KEY([Building_ID])
REFERENCES [dbo].[Building] ([Building_ID])
GO

ALTER TABLE [dbo].[Apartment] CHECK CONSTRAINT [FK_Apartment_Building]
GO
ALTER TABLE [dbo].[Apartment]  WITH CHECK ADD  CONSTRAINT [FK_Apartment_User] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([User_ID])
GO

ALTER TABLE [dbo].[Apartment] CHECK CONSTRAINT [FK_Apartment_User]