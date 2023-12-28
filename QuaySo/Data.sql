USE [master]
GO
/****** Object:  Database [QuaySo]    Script Date: 12/28/2023 6:52:39 PM ******/
CREATE DATABASE [QuaySo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuaySo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuaySo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuaySo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuaySo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuaySo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuaySo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuaySo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuaySo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuaySo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuaySo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuaySo] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuaySo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuaySo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuaySo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuaySo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuaySo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuaySo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuaySo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuaySo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuaySo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuaySo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuaySo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuaySo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuaySo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuaySo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuaySo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuaySo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuaySo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuaySo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuaySo] SET  MULTI_USER 
GO
ALTER DATABASE [QuaySo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuaySo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuaySo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuaySo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuaySo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuaySo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuaySo] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuaySo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuaySo]
GO
/****** Object:  Table [dbo].[GiaiThuong]    Script Date: 12/28/2023 6:52:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaiThuong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenGiai] [nvarchar](1550) NULL,
	[SoLuong] [int] NULL,
	[Image] [nvarchar](1550) NULL,
	[STT] [int] NULL,
	[ProcessDefault] [int] NOT NULL,
	[TenPhanThuong] [nvarchar](1550) NULL,
	[GiaTri] [nvarchar](1550) NULL,
 CONSTRAINT [PK_GiaiThuongs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOITRUNGGIAI]    Script Date: 12/28/2023 6:52:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOITRUNGGIAI](
	[code] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[TenGiai] [nvarchar](1550) NULL,
	[id_giaithuong] [int] NOT NULL,
 CONSTRAINT [PK_NGUOITRUNGGIAIs] PRIMARY KEY CLUSTERED 
(
	[code] ASC,
	[id_giaithuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 12/28/2023 6:52:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[code] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[dept] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrungGiai]    Script Date: 12/28/2023 6:52:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrungGiai](
	[Code] [nvarchar](50) NOT NULL,
	[ID_GiaiThuong] [int] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
	[DateCreate] [datetime] NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_TrungGiais] PRIMARY KEY CLUSTERED 
(
	[Code] ASC,
	[ID_GiaiThuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GiaiThuong] ON 
GO
INSERT [dbo].[GiaiThuong] ([ID], [TenGiai], [SoLuong], [Image], [STT], [ProcessDefault], [TenPhanThuong], [GiaTri]) VALUES (3, N'GIẢI NHẤT', 1, N'https://cdn.honda.com.vn/automobiles/July2023/y7gDmu9NFnawre66iwKx.png', 1, 0, NULL, NULL)
GO
INSERT [dbo].[GiaiThuong] ([ID], [TenGiai], [SoLuong], [Image], [STT], [ProcessDefault], [TenPhanThuong], [GiaTri]) VALUES (4, N'GIẢI NHÌ', 2, N'https://bizweb.dktcdn.net/100/435/502/products/3-3a3173d7-1a00-45f5-88b2-8d048889c2c8.jpg', 2, 0, NULL, NULL)
GO
INSERT [dbo].[GiaiThuong] ([ID], [TenGiai], [SoLuong], [Image], [STT], [ProcessDefault], [TenPhanThuong], [GiaTri]) VALUES (5, N'GIẢI BA', 3, N'https://bizweb.dktcdn.net/100/107/004/products/vinid-giftcard.jpg', 3, 0, NULL, NULL)
GO
INSERT [dbo].[GiaiThuong] ([ID], [TenGiai], [SoLuong], [Image], [STT], [ProcessDefault], [TenPhanThuong], [GiaTri]) VALUES (6, N'GIẢI KHUYẾN KHÍCH', 4, N'https://www.sonha.com.vn/wp-content/uploads/2021/12/0-02-06-ec4ae0d98285f580908b22ab935a181d118485fe1496beee57a9d88967a29a6c_32e2af51b6dcaa71-1.jpg', 4, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[GiaiThuong] OFF
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV001', N'Phan Anh Tuấn ', NULL, N'Giám đốc')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV002', N'Nguyễn Văn Thêm', NULL, N'Chỉ Huy Trưởng cống trường')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV005', N'Ngô Văn Tuấn', NULL, N'Đội trưởng đội thi công')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV010', N'Trần Xuân Hải', NULL, N'Đội trưởng đội thi công-cán bộ an toàn')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV016', N'Nguyễn Đình Việt', NULL, N'Đội trưởng đội thi công')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV019', N'Đoàn Văn Quyền', NULL, N'Tổ trưởng tổ thi công')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV021', N'Đỗ Mạnh Cường ', NULL, N'Kỹ sư')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV023', N'Trần Quốc Khánh', NULL, N'Công nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV024', N'Trần Văn Quang', NULL, N'Công nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV033', N'Nguyễn Văn Toàn', NULL, N'Kỹ sư phòng thiết kế')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV034', N'Trần Quốc Nghĩa ', NULL, N'Công nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV040', N'Đặng Văn Thức', NULL, N'Giám đốc điều hành ')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV042', N'Nguyễn Bá Dũng', NULL, N'Công nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV043', N'Nguyễn Thị Dung', NULL, N'Kỹ sư phòng thiết kế')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV044', N'Ninh Văn Minh', NULL, N'Kỹ sư')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV045', N'Nguyễn Văn An ', NULL, N'Công nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV047', N'Nguyễn  Khương Duy', NULL, N'Công Nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV048', N'Đặng Văn Thắng', NULL, N'Công Nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV050', N'Hoàng Hữu Quân', NULL, N'Công Nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV052', N'Nguyễn Quốc Thịnh', NULL, N'Công Nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV053', N'Nguyễn Thị Lan', NULL, N'Nhân viên phòng HC-NS')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV056', N'Đặng Đình Cương', NULL, N'Kỹ sư')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV057', N'Đặng Văn Phong', NULL, N'Công nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV059', N'Trần Thanh Tùng', NULL, N'Công nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV061', N'Nguyễn Đức Thân', NULL, N'Công nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV064', N'Trần Lâm', NULL, N'Công nhân')
GO
INSERT [dbo].[Staff] ([code], [name], [dept], [ChucVu]) VALUES (N'NV067', N'Đậu Văn Nhật', NULL, N'Công nhân')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV001', 6, NULL, CAST(N'2023-12-28T18:40:55.127' AS DateTime), N'Phan Anh Tuấn ')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV002', 6, NULL, CAST(N'2023-12-28T18:43:08.140' AS DateTime), N'Nguyễn Văn Thêm')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV005', 6, NULL, CAST(N'2023-12-28T18:39:50.853' AS DateTime), N'Ngô Văn Tuấn')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV010', 5, NULL, CAST(N'2023-12-28T18:48:38.623' AS DateTime), N'Trần Xuân Hải')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV040', 4, NULL, CAST(N'2023-12-28T18:47:59.230' AS DateTime), N'Đặng Văn Thức')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV042', 0, NULL, CAST(N'2023-12-28T18:22:24.147' AS DateTime), N'Nguyễn Bá Dũng')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV043', 5, NULL, CAST(N'2023-12-28T18:48:50.023' AS DateTime), N'Nguyễn Thị Dung')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV047', 3, NULL, CAST(N'2023-12-28T18:49:49.897' AS DateTime), N'Nguyễn  Khương Duy')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV048', 6, NULL, CAST(N'2023-12-28T18:36:18.967' AS DateTime), N'Đặng Văn Thắng')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV050', 0, NULL, CAST(N'2023-12-28T18:49:26.663' AS DateTime), N'Hoàng Hữu Quân')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV053', 5, NULL, CAST(N'2023-12-28T18:48:26.047' AS DateTime), N'Nguyễn Thị Lan')
GO
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV067', 4, NULL, CAST(N'2023-12-28T18:46:18.790' AS DateTime), N'Đậu Văn Nhật')
GO
/****** Object:  StoredProcedure [dbo].[QuayThuong]    Script Date: 12/28/2023 6:52:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[QuayThuong]

AS
select top 1 code from staff WHERE code not in (select code from [TrungGiai]) ORDER BY NEWID()
GO
/****** Object:  StoredProcedure [dbo].[QuayThuong_kk]    Script Date: 12/28/2023 6:52:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[QuayThuong_kk]

AS
select top 1 code from staff WHERE code not in (select code from [TrungGiai]) ORDER BY NEWID()
GO
USE [master]
GO
ALTER DATABASE [QuaySo] SET  READ_WRITE 
GO
