
CREATE TABLE [dbo].[Adminstrator](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 8/28/2018 6:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [varchar](50) NULL,
	[ItemID] [varchar](50) NULL,
	[CompanyName] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/28/2018 6:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Catagory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 8/28/2018 6:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item]    Script Date: 8/28/2018 6:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[CompanyId] [int] NULL,
	[Name] [varchar](50) NULL,
	[ReorderLevel] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockOut]    Script Date: 8/28/2018 6:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockOut](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[CompanyId] [int] NULL,
	[Type] [varchar](50) NULL,
	[Date] [date] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_StockOut] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[GetAllSalesView]    Script Date: 8/28/2018 6:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GetAllSalesView]
AS 
SELECT 
C.Name AS Company ,I.Name AS Item,S.Quantity AS Quantity,S.Type AS Type ,S.Date AS Date
From Item AS I INNER JOIN StockOut AS S ON I.Id=S.ItemId
INNER JOIN Company AS C ON I.CompanyId=C.Id
GO
/****** Object:  View [dbo].[SearchView]    Script Date: 8/28/2018 6:05:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SearchView]
AS
SELECT 
I.Name AS Item,
C.Id AS CompanyId,
C.Name AS Company,
CA.Id AS CategoryId, 
I.Quantity AS AvailableQuantity,
I.ReorderLevel AS ReorderLabel 
FROM Item AS I INNER JOIN Company AS C ON I.CompanyId=C.Id INNER JOIN Category AS CA ON I.CategoryId=CA.Id
GO
INSERT [dbo].[Adminstrator] ([Username], [Password]) VALUES (N'BROGRAMMERS', N'brogrammers')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Cosmetics')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Electronics')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Kitchen Items')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Stationary')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Id], [Name]) VALUES (1, N'RFL')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (2, N'Unilever')
INSERT [dbo].[Company] ([Id], [Name]) VALUES (3, N'Walton')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([Id], [CategoryId], [CompanyId], [Name], [ReorderLevel], [Quantity]) VALUES (1, 3, 3, N'TV', 1, 0)
INSERT [dbo].[Item] ([Id], [CategoryId], [CompanyId], [Name], [ReorderLevel], [Quantity]) VALUES (2, 3, 3, N'MOBILE', 0, 0)
INSERT [dbo].[Item] ([Id], [CategoryId], [CompanyId], [Name], [ReorderLevel], [Quantity]) VALUES (3, 4, 1, N'FRY PAN', 0, 0)
INSERT [dbo].[Item] ([Id], [CategoryId], [CompanyId], [Name], [ReorderLevel], [Quantity]) VALUES (5, 3, 3, N'TAB', 4, 0)
SET IDENTITY_INSERT [dbo].[Item] OFF
SET IDENTITY_INSERT [dbo].[StockOut] ON 

INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (1, 5, 3, N'Sold', CAST(0x913E0B00 AS Date), 4)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (2, 5, 3, N'Lost', CAST(0x913E0B00 AS Date), 4)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (3, 5, 3, N'Sold', CAST(0x933E0B00 AS Date), 2)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (4, 3, 1, N'Sold', CAST(0x953E0B00 AS Date), 9)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (5, 5, 3, N'Sold', CAST(0x953E0B00 AS Date), 2)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (6, 2, 3, N'Sold', CAST(0x953E0B00 AS Date), 5)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (7, 5, 3, N'Sold', CAST(0x953E0B00 AS Date), 2)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (8, 5, 3, N'Lost', CAST(0x963E0B00 AS Date), 1)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (9, 3, 1, N'Sold', CAST(0xA53E0B00 AS Date), 1)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (10, 5, 3, N'Sold', CAST(0xA53E0B00 AS Date), 3)
INSERT [dbo].[StockOut] ([Id], [ItemId], [CompanyId], [Type], [Date], [Quantity]) VALUES (11, 5, 3, N'Lost', CAST(0xA53E0B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[StockOut] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Catagory]    Script Date: 8/28/2018 6:05:28 AM ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [IX_Catagory] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Company]    Script Date: 8/28/2018 6:05:28 AM ******/
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [IX_Company] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Category]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Company]
GO
ALTER TABLE [dbo].[StockOut]  WITH CHECK ADD  CONSTRAINT [FK_StockOut_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[StockOut] CHECK CONSTRAINT [FK_StockOut_Company]
GO
ALTER TABLE [dbo].[StockOut]  WITH CHECK ADD  CONSTRAINT [FK_StockOut_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[StockOut] CHECK CONSTRAINT [FK_StockOut_Item]
GO
USE [master]
GO
ALTER DATABASE [StockManageMentSystemDB] SET  READ_WRITE 
GO
