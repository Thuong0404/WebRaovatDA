USE [WebRaoVat]
GO
/****** Object:  Table [dbo].[BaiDang]    Script Date: 6/22/2022 2:20:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaiDang](
	[MaBaiDang] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](200) NULL,
	[MaLoaiSP] [int] NULL,
	[TieuDe] [ntext] NULL,
	[Gia] [bigint] NULL,
	[TinhTrang] [bit] NULL,
	[MoTa] [ntext] NULL,
	[HinhAnh] [text] NOT NULL,
	[TrangThai] [int] NULL,
	[NgayDang] [datetime] NULL,
	[HinhAnh1] [text] NULL,
	[HinhAnh2] [text] NULL,
	[HinhAnh3] [text] NULL,
	[HinhAnh4] [text] NULL,
	[Cout] [int] NULL,
 CONSTRAINT [PK_BaiDang] PRIMARY KEY CLUSTERED 
(
	[MaBaiDang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 6/22/2022 2:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[MaBaiDang] [int] NULL,
	[Username] [varchar](200) NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChildComment]    Script Date: 6/22/2022 2:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChildComment](
	[MaBLChild] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](50) NULL,
	[MaBL] [int] NULL,
	[Username] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CuoiHoiThoai]    Script Date: 6/22/2022 2:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CuoiHoiThoai](
	[MaHoiThoai] [int] IDENTITY(1,1) NOT NULL,
	[NguoiGui] [varchar](200) NULL,
	[NguoiNhan] [varchar](200) NULL,
	[NoiDung] [ntext] NULL,
	[ThoiGianGui] [datetime] NULL,
	[Hinh] [text] NULL,
 CONSTRAINT [PK_CuoiHoiThoai] PRIMARY KEY CLUSTERED 
(
	[MaHoiThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 6/22/2022 2:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
	[Hinh] [text] NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DSYeuThich]    Script Date: 6/22/2022 2:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DSYeuThich](
	[MaTinYT] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](200) NULL,
	[MaBaiDang] [int] NULL,
 CONSTRAINT [PK_DSYeuThich] PRIMARY KEY CLUSTERED 
(
	[MaTinYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/22/2022 2:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
	[MaDanhMuc] [int] NULL,
	[Hinh] [text] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 6/22/2022 2:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCao](
	[MaQuangCao] [int] IDENTITY(1,1) NOT NULL,
	[MaBaiDang] [int] NULL,
	[NgayHetHan] [datetime] NULL,
	[NgayMua] [datetime] NULL,
	[SoTien] [int] NULL,
 CONSTRAINT [PK_QuangCao] PRIMARY KEY CLUSTERED 
(
	[MaQuangCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/22/2022 2:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Username] [varchar](200) NOT NULL,
	[Password] [varchar](200) NULL,
	[NgayThamGia] [date] NULL,
	[DiaChi] [ntext] NULL,
	[SDT] [char](10) NULL,
	[Hinh] [text] NULL,
	[Quyen] [int] NULL,
	[TenNguoiDung] [nvarchar](50) NULL,
	[Email] [nvarchar](200) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BaiDang] ON 

INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (3, N'yen', 2, N'Cần bán điện thoại SamSung', 3000000, 0, N'Hello', N'/Images/anvat.jpg', 3, NULL, N'/Images/1-1_1523988105.jpg', N'/Images/anvat.jpg', N'/Images/1-1_1523988105.jpg', N'/Images/1-1_1523988105.jpg', 1)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (4, N'yen', 5, N'Đồ ăn vặt Hàn Quốc', 35000, 1, N'Đồ ăn thơm ngon. ', N'/Images/anvat.jpg', 0, CAST(N'2021-07-07 11:53:00.000' AS DateTime), NULL, NULL, NULL, NULL, 34)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (5, N'vi', 2, N'Cần bán điện thoại SamSung', 1200000, 0, N'Điện thoại mới sử dụng 1 tháng, fix mạnh cho anh em thiện chí', N'/Images/1-1_1523988105.jpg', 0, CAST(N'2021-07-07 11:53:00.000' AS DateTime), NULL, NULL, NULL, NULL, 32)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (7, N'yen', 2, N'Bán điện thoại di động', 3500000, 1, N'4', N'/Images/samsung.jpg', 3, NULL, N'/Images/anvat.jpg', N'/Images/ung-dung-cua-mvc-trong-lap-trinh.jpg', NULL, NULL, 32)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (8, N'yen', 2, N'Điện thoại Samsung đời mới', 2300000, 1, N'45', N'/Images/1-1_1523988105.jpg', 0, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (11, N'yen', 1, N'Bán điện thoại di động', 30000, 1, N'llll', N'/Images/anvat.jpg', 0, CAST(N'2021-07-03 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (13, N'yen', 1, N'Bán điện thoại di động', 30000, 1, N'lklkl', N'/Images/1-1_1523988105.jpg', 0, CAST(N'2021-07-05 13:34:20.960' AS DateTime), NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (14, N'thuong', 2, N'Samsung Galaxy A32 còn rất mới', 6690000, 1, NULL, N'/Images/samsung.jpg', 0, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (15, N'yen', 2, N'Samsung còn rất mới', 1000000, 1, NULL, N'/Images/samsung.jpg', 0, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (16, N'thuong', 2, N'Cần bánh', 3445, 0, N'rreer', N'/Images/Ellipse 4.png', 0, CAST(N'2022-05-07 11:07:40.263' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (17, N'111956382358521108803', 1, N'Cần bánh', 5600000, 0, N'Thanh lí gấp', N'/Images/180920-background-purple-2_hero47a2 1.png', 0, CAST(N'2022-05-25 22:01:39.160' AS DateTime), N'/Images/180920-background-dark-orange-1_hero5633 1.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (18, N'thuong', 2, N'cần bán oppo A59', 5600000, 0, N'Đt oppa còn rất mưới', N'/Images/Group 5670.png', 0, CAST(N'2022-06-01 21:28:00.890' AS DateTime), N'/Images/Group 5670.png', NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (19, N'thuong', 5, N'Cần bánh', 56000, 1, N'', N'/Images/276171802_360296596013965_5023597881211589848_n.jpg', 0, CAST(N'2022-06-03 21:24:39.577' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (20, N'thuong', 4, N'fvfd', 560000, 0, N'', N'/Images/180920-background-dark-orange-1_hero5633 1.png', 3, CAST(N'2022-06-03 21:25:11.817' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (21, N'thuong', 1, N'Cần bánh', 435676, 1, N'', N'/Images/180920-background-dark-orange-1_hero5633 1.png', 0, CAST(N'2022-06-03 21:25:31.517' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (22, N'vi', 1, N'qe', 5600000, 0, N'mo', N'/Images/276446889_420904416463189_2620267053500715578_n.jpg', 0, CAST(N'2022-06-12 21:34:17.240' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (23, N'vi', 5, N'qe', 560000, 0, N'yuokhj', N'/Images/276446889_420904416463189_2620267053500715578_n.jpg', 0, CAST(N'2022-06-12 21:34:51.347' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (24, N'vi', 1, N'cần bán oppo A59', 8900000, 1, N'', N'/Images/180920-background-dark-orange-1_hero5633 1.png', 0, CAST(N'2022-06-12 21:36:51.200' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (25, N'thuong', 4, N'yewrghj', 670000, 0, N'yiuljk', N'/Images/Group 5670.png', 0, CAST(N'2022-06-16 14:04:03.517' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (26, N'thuong', 2, N'Cần thanh lí tủ lạnh Toshiba', 4500000, 0, N';iu;', N'/Images/hinh-anh-giao-hang-va-lap-dat-tu-lanh-cho-khach-2.jpg', 1, CAST(N'2022-06-19 11:52:53.633' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (29, N'thuong', 6, N'Cần mua sách', 9998, 0, N'Cần mua sách tham khảo lớp 9', N'/Images/download (1).jfif', 2, CAST(N'2022-06-19 11:58:25.103' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (30, N'thuong', 10, N'Mình cần thanh lí máy giặt toshiba', 340000, 0, N'Mới mua 2 tháng', N'/Images/images.jfif', 2, CAST(N'2022-06-19 12:05:23.927' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (31, N'vi', 10, N'Cần thanh lí máy giặt Toshiba', 7000000, 0, N'Còn mới nhưng vì có chuyện không ở thành phố nữa nên thanh lí cho ae nào cần. Ib để biết thêm chi tiết', N'/Images/images.jfif', 2, CAST(N'2022-06-21 21:55:45.010' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [Username], [MaLoaiSP], [TieuDe], [Gia], [TinhTrang], [MoTa], [HinhAnh], [TrangThai], [NgayDang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4], [Cout]) VALUES (32, N'vi', 11, N'Cần bán bếp ga 2 bếp', 1500000, 0, N'Mới mua 2 tuần nhà dư. Thanh lí cho ai có nhu cầu. Mới còn giấy bảo hành . AI mua liên hệ Sđt:0367272754', N'/Images/sakura-sa-695sg-70151thumb-600x600.jpg', 2, CAST(N'2022-06-21 21:59:47.907' AS DateTime), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BaiDang] OFF
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (1, N'Ngiu đây nè', 17, N'111956382358521108803', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (2, N'hello', 16, N'111956382358521108803', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (4, N'hello nè ', 16, N'thuong', 2)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (7, N'ghdhsd', 13, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (8, N'fjrgggggj', 20, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (11, N'fgjfxkfkx', 20, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (25, N'', 16, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (27, N'fdfhtrdf', 16, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (30, N'thuong', 14, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (31, N'ytjrthdrjjmuy,lk', 16, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (32, N'thuong', 16, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (40, N' vaanx con nhe ban', 21, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (41, N'5555', 21, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (42, N'Hello', 18, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (43, N' rfftgr', 18, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (44, N'thuong nè bạn ơi', 18, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (45, N'thuong đay nè', 18, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (46, N'12345', 18, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (47, N'Thương vfgb', 25, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (48, N'thuong', 25, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (49, N'hfxjfrdtuyiui', 17, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (50, N'', 17, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (51, N'Sản phẩm này còn không ạ', 5, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (53, N' thuonguklkj', 8, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (54, N' còn không ạ', 5, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (55, N' Về nè bạn ơi', 4, N'thuong', 0)
INSERT [dbo].[BinhLuan] ([MaBL], [NoiDung], [MaBaiDang], [Username], [ParentId]) VALUES (56, N' thuong ơi ', 24, N'thuong', 0)
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
SET IDENTITY_INSERT [dbo].[ChildComment] ON 

INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (12, N'thdjdvv', NULL, N'vi')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (2, N'Hello', 2, N'vi')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (3, N'Xin chaof', 2, N'thuong')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (15, N'hdfguekrf', 1, N'vi')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (16, N'thuong commmit', 1, N'yen')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (36, N'xin chào ạ', 51, N'thuong')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (30, N'Sản phẩm này còn k ạ', 7, N'111354537481455752204')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (23, N'Xin hỏi thương cần j', NULL, N'vi')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (24, N'fvgrnhmk', NULL, N'vi')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (25, N'fdbhnjuk', NULL, N'vi')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (31, N'bạn ơi', 1, N'thuong')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (27, N'thuong day banj can j', 1, N'thuong')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (32, N'còn nhé ', NULL, N'thuong')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (33, N'mình cugx thế', NULL, N'thuong')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (34, N'thbf', 53, N'thuong')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (39, N'mình đây sao thế ạ', 56, N'thuong')
INSERT [dbo].[ChildComment] ([MaBLChild], [NoiDung], [MaBL], [Username]) VALUES (20, N'ewgrehy', 49, N'thuong')
SET IDENTITY_INSERT [dbo].[ChildComment] OFF
SET IDENTITY_INSERT [dbo].[CuoiHoiThoai] ON 

INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (1, N'vi', N'yen', N'Bạn ơi, điện thoại iphone bạn còn mới không', CAST(N'2021-07-09 01:52:15.183' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (3, N'yen', N'thuong', N'Còn mới lắm nha bạn', CAST(N'2021-07-09 17:52:15.183' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (26, N'thuong', N'vi', N'Kêu chơi thôi', CAST(N'2021-07-09 17:52:15.183' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (27, N'yen', N'vi', N'Alo', CAST(N'2021-07-09 21:13:05.493' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (28, N'vi', N'yen', N'Alo', CAST(N'2021-07-09 21:24:06.667' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (29, N'vi', N'yen', N'Yen oi', CAST(N'2021-07-09 21:24:17.300' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (30, N'yen', N'vi', N'alossssss', CAST(N'2021-07-09 21:32:57.697' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (31, N'yen', N'vi', N'alooo', CAST(N'2021-07-09 21:35:41.600' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (32, N'yen', N'vi', N'ssssss', CAST(N'2021-07-09 21:35:51.170' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (33, N'yen', N'thuong', N'sssssssssssssss', CAST(N'2021-07-09 21:35:56.543' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (34, N'yen', N'vi', N'ssssssssss', CAST(N'2021-07-09 21:37:07.893' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (35, N'yen', N'vi', N'alololol', CAST(N'2021-07-09 21:46:06.593' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (36, N'vi', N'yen', N'lo', CAST(N'2021-07-09 21:46:36.990' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (37, N'yen', N'thuong', N'alo', CAST(N'2021-07-09 21:46:49.737' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (38, N'thuong', N'vi', N'âs', CAST(N'2021-07-09 21:47:34.370' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (39, N'vi', N'yen', N'Hi Yen', CAST(N'2021-07-09 22:06:20.610' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (40, N'yen', N'thuong', N'Hi Thuong', CAST(N'2021-07-09 22:07:13.017' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (41, N'thuong', N'yen', N'hi yen', CAST(N'2021-07-09 22:07:38.203' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (43, N'yen', N'vi', N'hi', CAST(N'2021-07-09 22:39:01.510' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (46, N'yen', N'thuong', N'hi Thương', CAST(N'2021-07-09 22:42:35.770' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (47, N'vi', N'yen', N'Alo', CAST(N'2021-07-10 08:52:51.420' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (51, N'yen', N'vi', NULL, CAST(N'2021-07-10 09:38:24.417' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (55, N'yen', N'vi', N'Alo Vi', CAST(N'2021-07-10 22:45:36.757' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (59, N'yen', N'vi', N'âs', CAST(N'2021-07-13 22:28:34.177' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (60, N'yen', N'vi', N'Hi', CAST(N'2021-07-13 22:41:40.993' AS DateTime), N'/Images/samsung.jpg')
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (62, N'yen', N'vi', N'Hi', CAST(N'2021-07-13 23:03:24.780' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (63, N'yen', N'vi', NULL, CAST(N'2021-07-13 23:03:58.003' AS DateTime), N'/Images/LogoUTC.jpg')
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (64, N'vi', N'yen', NULL, CAST(N'2021-07-13 23:04:21.777' AS DateTime), N'/Images/202361828_350454709755244_5789621102996721854_n.jpg')
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (65, N'yen', N'vi', NULL, CAST(N'2021-07-13 23:23:42.403' AS DateTime), N'/Images/samsung.jpg')
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (66, N'thuong', N'thuong', NULL, CAST(N'2022-05-07 13:36:42.797' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (67, N'111354537481455752204', N'yen', NULL, CAST(N'2022-05-11 20:07:19.637' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (68, N'111354537481455752204', N'yen', NULL, CAST(N'2022-05-11 20:07:27.737' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (71, N'111354537481455752204', N'yen', N'Thuongw', CAST(N'2022-05-12 05:29:11.800' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (72, N'yen', N'111354537481455752204', N'Yeesn', CAST(N'2022-05-12 05:30:15.450' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (73, N'yen', N'yen', NULL, CAST(N'2022-05-12 05:30:59.603' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (74, N'thuong', N'thuong', NULL, CAST(N'2022-06-02 21:17:22.743' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (75, N'thuong', N'thuong', NULL, CAST(N'2022-06-02 21:17:42.670' AS DateTime), N'/Images/180920-background-dark-orange-1_hero5633 1.png')
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (76, N'thuong', N'thuong', N'sản phẩm này còn k', CAST(N'2022-06-02 21:17:51.620' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (77, N'thuong', N'thuong', NULL, CAST(N'2022-06-09 21:40:42.567' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (78, N'thuong', N'vi', NULL, CAST(N'2022-06-09 21:41:17.153' AS DateTime), N'/Images/Group 5670.png')
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (79, N'thuong', N'thuong', NULL, CAST(N'2022-06-11 10:11:20.163' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (80, N'thuong', N'thuong', N'fhdfjn', CAST(N'2022-06-11 10:11:26.577' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (81, N'thuong', N'vi', N'banj oiw', CAST(N'2022-06-17 09:57:25.913' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (83, N'thuong', N'vi', NULL, CAST(N'2022-06-19 12:15:00.160' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (84, N'thuong', N'yen', NULL, CAST(N'2022-06-19 12:15:50.520' AS DateTime), N'/Images/hinh-anh-giao-hang-va-lap-dat-tu-lanh-cho-khach-2.jpg')
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (85, N'thuong', N'yen', N'sản phẩm này còn không ạ', CAST(N'2022-06-19 12:16:00.533' AS DateTime), NULL)
INSERT [dbo].[CuoiHoiThoai] ([MaHoiThoai], [NguoiGui], [NguoiNhan], [NoiDung], [ThoiGianGui], [Hinh]) VALUES (86, N'thuong', N'yen', N'rfdjk', CAST(N'2022-06-20 21:10:24.660' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[CuoiHoiThoai] OFF
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (1, N'Điện thoại', N'https://static.chotot.com/storage/c2cCategories/5010.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (2, N'Máy tính', N'https://static.chotot.com/storage/c2cCategories/5030.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (3, N'Xe', N'https://static.chotot.com/storage/new-logos/VEH/2020.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (4, N'Ăn uống', N'https://static.chotot.com/storage/c2cCategories/14020.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (5, N'Đồ gia dụng', N'https://static.chotot.com/storage/c2cCategories/14030.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (6, N'Sách', N'https://static.chotot.com/storage/c2cCategories/4070.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (7, N'Thời trang', N'https://static.chotot.com/storage/c2cCategories/3030.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (8, N'Thú cưng', N'https://static.chotot.com/storage/c2cCategories/12050.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (9, N'Giải trí', N'https://static.chotot.com/storage/c2cCategories/4040.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (10, N'Mẹ và bé', N'https://static.chotot.com/storage/c2cCategories/12050.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (11, N'Văn phòng ', N'https://static.chotot.com/storage/c2cCategories/8010.svg')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [Hinh]) VALUES (12, N'Bất động sản ', N'/Images/pngtree-real-estate-icon-design-vector-png-image_1711820.jpg')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[DSYeuThich] ON 

INSERT [dbo].[DSYeuThich] ([MaTinYT], [Username], [MaBaiDang]) VALUES (23, N'yen', 5)
INSERT [dbo].[DSYeuThich] ([MaTinYT], [Username], [MaBaiDang]) VALUES (25, N'yen', 11)
INSERT [dbo].[DSYeuThich] ([MaTinYT], [Username], [MaBaiDang]) VALUES (26, N'yen', 7)
INSERT [dbo].[DSYeuThich] ([MaTinYT], [Username], [MaBaiDang]) VALUES (27, N'thuong', 8)
INSERT [dbo].[DSYeuThich] ([MaTinYT], [Username], [MaBaiDang]) VALUES (28, N'thuong', 15)
INSERT [dbo].[DSYeuThich] ([MaTinYT], [Username], [MaBaiDang]) VALUES (29, N'111354537481455752204', 15)
INSERT [dbo].[DSYeuThich] ([MaTinYT], [Username], [MaBaiDang]) VALUES (30, N'111354537481455752204', 11)
INSERT [dbo].[DSYeuThich] ([MaTinYT], [Username], [MaBaiDang]) VALUES (31, N'thuong', 11)
SET IDENTITY_INSERT [dbo].[DSYeuThich] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (1, N'Iphone', 1, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (2, N'Điện thoại Android', 1, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (3, N'Máy tính để bàn', 2, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (4, N'Máy tính xách tay', 2, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (5, N'Đồ ăn vặt', 4, N'/Images/anvat.jpg')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (6, N'Sách tham khảo', 6, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (7, N'Sách giáo khoa', 6, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (8, N'Khác', 6, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (9, N'Tủ lanh', 5, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (10, N'Máy giặt', 5, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (11, N'Đồ ở bếp', 5, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (12, N'Máy lạnh ', 5, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (13, N'Văn phòng cho IT', 11, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (14, N'Xưởng', 11, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (15, N'Đồ ăn văt', 4, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (16, N'Đồ ăn nhanh', 4, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (17, N'Khác', 4, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (18, N'KHác', 11, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (19, N'Đồ cho mẹ', 10, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (20, N'Đồ cho bé', 10, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (21, N'Vision', 3, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (22, N'AB', 3, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (23, N'Wave', 3, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [MaDanhMuc], [Hinh]) VALUES (24, N'Dream', 3, NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[QuangCao] ON 

INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (2, 7, CAST(N'2021-07-08 22:09:01.450' AS DateTime), CAST(N'2021-07-05 20:41:10.853' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (3, 5, CAST(N'2021-07-20 22:09:01.450' AS DateTime), CAST(N'2021-07-05 20:41:10.853' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (4, 4, CAST(N'2021-07-20 22:09:01.450' AS DateTime), CAST(N'2021-07-05 22:09:01.450' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (5, 7, CAST(N'2021-07-20 22:09:01.450' AS DateTime), CAST(N'2021-07-05 20:41:10.853' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (6, 14, CAST(N'2022-06-04 10:33:33.330' AS DateTime), CAST(N'2022-06-03 10:33:33.330' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (7, 14, CAST(N'2022-06-04 10:50:14.740' AS DateTime), CAST(N'2022-06-03 10:50:14.740' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (8, 16, CAST(N'2022-06-06 21:29:32.340' AS DateTime), CAST(N'2022-06-03 21:29:32.340' AS DateTime), 3000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (9, 18, CAST(N'2022-06-06 21:33:04.867' AS DateTime), CAST(N'2022-06-03 21:33:04.867' AS DateTime), 3000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (10, 18, CAST(N'2022-06-06 21:33:18.830' AS DateTime), CAST(N'2022-06-03 21:33:18.830' AS DateTime), 3000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (11, 19, CAST(N'2022-06-08 21:37:42.970' AS DateTime), CAST(N'2022-06-03 21:37:42.970' AS DateTime), 5000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (12, 14, CAST(N'2022-06-16 09:23:26.137' AS DateTime), CAST(N'2022-06-11 09:23:26.137' AS DateTime), 5000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (13, 14, CAST(N'2022-06-16 09:24:10.410' AS DateTime), CAST(N'2022-06-11 09:24:10.410' AS DateTime), 5000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (14, 5, CAST(N'2022-06-15 21:43:42.787' AS DateTime), CAST(N'2022-06-12 21:43:42.787' AS DateTime), 3000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (15, 22, CAST(N'2022-06-17 21:46:40.067' AS DateTime), CAST(N'2022-06-12 21:46:40.067' AS DateTime), 5000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (16, 16, CAST(N'2022-06-20 16:09:58.477' AS DateTime), CAST(N'2022-06-15 16:09:58.477' AS DateTime), 5000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (17, 18, CAST(N'2022-06-20 16:17:00.337' AS DateTime), CAST(N'2022-06-15 16:17:00.337' AS DateTime), 5000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (18, 20, CAST(N'2022-06-16 16:23:49.353' AS DateTime), CAST(N'2022-06-15 16:23:49.353' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (19, 19, CAST(N'2022-06-16 16:26:47.937' AS DateTime), CAST(N'2022-06-15 16:26:47.937' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (20, 21, CAST(N'2022-06-16 16:28:01.297' AS DateTime), CAST(N'2022-06-15 16:28:01.297' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (21, 19, CAST(N'2022-06-20 10:54:13.393' AS DateTime), CAST(N'2022-06-17 10:54:13.393' AS DateTime), 3000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (24, 14, CAST(N'2022-06-18 11:50:24.310' AS DateTime), CAST(N'2022-06-17 11:50:24.310' AS DateTime), 1000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (27, 20, CAST(N'2022-06-17 12:20:07.000' AS DateTime), CAST(N'2022-06-17 12:20:07.007' AS DateTime), 1000000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (28, 20, CAST(N'2022-06-17 12:21:56.000' AS DateTime), CAST(N'2022-06-17 12:21:56.357' AS DateTime), 1000000)
INSERT [dbo].[QuangCao] ([MaQuangCao], [MaBaiDang], [NgayHetHan], [NgayMua], [SoTien]) VALUES (29, 14, CAST(N'2022-06-20 12:27:06.037' AS DateTime), CAST(N'2022-06-19 12:27:06.037' AS DateTime), 1000)
SET IDENTITY_INSERT [dbo].[QuangCao] OFF
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'111354537481455752204', NULL, CAST(N'2022-06-19' AS Date), NULL, NULL, N'https://lh3.googleusercontent.com/a-/AOh14Gi4z02cIqJr0XYeBam6cHMeqfz2BWJyI8bw0mczYg=s96-c', NULL, N'Thương Diệu', N'dieu.thuong.0404@gmail.com')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'111956382358521108803', NULL, CAST(N'2022-05-25' AS Date), NULL, NULL, N'https://lh3.googleusercontent.com/a/AATXAJyQD9yc-mmXdsKFZ-ErnFrH3_lLfu7AtL2LG5zq=s96-c', NULL, N'dieu vothi', N'')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'116384371090895', NULL, CAST(N'2022-06-09' AS Date), NULL, NULL, NULL, NULL, N'Diệu  Thuong', N'websitefashi@gmail.com')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'1274512559633689', NULL, CAST(N'2021-07-13' AS Date), NULL, NULL, NULL, NULL, N'Phạm Huỳnh  Hải Yến', N'phamhuynhhaiyen1107@gmail.com')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'555738799503449', NULL, CAST(N'2022-06-03' AS Date), NULL, NULL, NULL, NULL, N'Diệu  Thương', N'websitefashi@gmail.com')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'Admin', N'202CB962AC59075B964B07152D234B70', CAST(N'2021-06-25' AS Date), NULL, NULL, NULL, 1, N'Admin', N'dieuvothi635@gmail.com')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'hoa', N'202CB962AC59075B964B07152D234B70', CAST(N'2021-07-11' AS Date), NULL, N'0123      ', NULL, NULL, N'Văn Hoa', NULL)
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'thuong', N'202CB962AC59075B964B07152D234B70', CAST(N'2021-06-25' AS Date), NULL, N'0231456987', NULL, NULL, N'Võ Thị Diệu Thương', N'dieu.thuong.0404@gmail.com')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'Thuong123', N'202CB962AC59075B964B07152D234B70', CAST(N'2022-05-12' AS Date), NULL, N'0367272754', NULL, NULL, N'Võ Thị Diệu Thương', NULL)
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'vi', N'202CB962AC59075B964B07152D234B70', CAST(N'2021-06-25' AS Date), NULL, N'0123456789', NULL, NULL, N'Lê Thị Tường Vi', N'levi20001226@gmail.com')
INSERT [dbo].[TaiKhoan] ([Username], [Password], [NgayThamGia], [DiaChi], [SDT], [Hinh], [Quyen], [TenNguoiDung], [Email]) VALUES (N'yen', N'202CB962AC59075B964B07152D234B70', CAST(N'2021-06-25' AS Date), N'Đồng Nai', N'0776989265', N'/Images/myphoto.jpg', NULL, N'Phạm Huỳnh Hải Yến', N'phamhuynhhaiyen1107@gmail.com')
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [FK_BaiDang_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [FK_BaiDang_LoaiSanPham]
GO
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [FK_BaiDang_TaiKhoan1] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [FK_BaiDang_TaiKhoan1]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_BaiDang] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BaiDang] ([MaBaiDang])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_BaiDang]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_TaiKhoan]
GO
ALTER TABLE [dbo].[ChildComment]  WITH CHECK ADD  CONSTRAINT [FK_ChildComment_BinhLuan] FOREIGN KEY([MaBL])
REFERENCES [dbo].[BinhLuan] ([MaBL])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ChildComment] CHECK CONSTRAINT [FK_ChildComment_BinhLuan]
GO
ALTER TABLE [dbo].[ChildComment]  WITH CHECK ADD  CONSTRAINT [FK_ChildComment_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
GO
ALTER TABLE [dbo].[ChildComment] CHECK CONSTRAINT [FK_ChildComment_TaiKhoan]
GO
ALTER TABLE [dbo].[LoaiSanPham]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSanPham_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoaiSanPham] CHECK CONSTRAINT [FK_LoaiSanPham_DanhMuc]
GO
ALTER TABLE [dbo].[QuangCao]  WITH CHECK ADD  CONSTRAINT [FK_QuangCao_BaiDang] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BaiDang] ([MaBaiDang])
GO
ALTER TABLE [dbo].[QuangCao] CHECK CONSTRAINT [FK_QuangCao_BaiDang]
GO
