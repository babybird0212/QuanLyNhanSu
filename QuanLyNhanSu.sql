CREATE DATABASE [QuanLyNhanSu]
GO
USE [QuanLyNhanSu]
GO
/****** Object:  Table [dbo].[CapNhatLuongs]    Script Date: 6/30/2022 12:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapNhatLuongs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongHienTai] [int] NOT NULL,
	[LuongSauCapNhat] [int] NOT NULL,
	[BHXH] [float] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[PhuCap] [float] NULL,
	[ThueThuNhap] [float] NULL,
	[NgayCapNhat] [datetime] NULL,
	[HeSoLuong] [float] NULL,
 CONSTRAINT [PK_CapNhatLuongs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapNhatTrinhDoHocVans]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapNhatTrinhDoHocVans](
	[MaCapNhat] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[MaTrinhDoTruoc] [varchar](30) NOT NULL,
	[MaTrinhDoCapNhat] [varchar](30) NOT NULL,
 CONSTRAINT [PK_CapNhatTrinhDoHocVans] PRIMARY KEY CLUSTERED 
(
	[MaCapNhat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietLuongs]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLuongs](
	[MaChiTietBangLuong] [varchar](30) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongCoBan] [float] NOT NULL,
	[BHXH] [float] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[PhuCap] [float] NULL,
	[ThueThuNhap] [float] NULL,
	[TienThuong] [int] NULL,
	[TienPhat] [int] NULL,
	[NgayNhanLuong] [datetime] NOT NULL,
	[TongTienLuong] [varchar](30) NULL,
 CONSTRAINT [PK_ChiTietLuongs] PRIMARY KEY CLUSTERED 
(
	[MaChiTietBangLuong] ASC,
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVuNhanViens]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVuNhanViens](
	[MaChucVuNV] [varchar](30) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
	[HSPC] [float] NULL,
 CONSTRAINT [PK_ChucVuNhanViens] PRIMARY KEY CLUSTERED 
(
	[MaChucVuNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenNganhs]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenNganhs](
	[MaChuyenNganh] [varchar](30) NOT NULL,
	[TenChuyenNganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuyenNganhs] PRIMARY KEY CLUSTERED 
(
	[MaChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDongs]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongs](
	[MaHopDong] [varchar](30) NOT NULL,
	[LoaiHopDong] [nvarchar](50) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_HopDongs] PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhenThuongs]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhenThuongs](
	[MaNhanVien] [varchar](30) NOT NULL,
	[ThangThuong] [datetime] NOT NULL,
	[LyDo] [nvarchar](max) NULL,
	[TienThuong] [int] NULL,
 CONSTRAINT [PK_KhenThuongs] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KyLuats]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyLuats](
	[MaNhanVien] [varchar](30) NOT NULL,
	[LyDo] [nvarchar](max) NULL,
	[ThangKiLuat] [datetime] NOT NULL,
	[TienKyLuat] [int] NULL,
 CONSTRAINT [PK_KyLuats] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuanChuyenNhanViens]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuanChuyenNhanViens](
	[MaNhanVien] [varchar](30) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NgayChuyen] [datetime] NOT NULL,
	[LyDoChuyen] [nvarchar](max) NULL,
	[PhongBanChuyen] [varchar](30) NULL,
	[PhongBanDen] [varchar](30) NULL,
 CONSTRAINT [PK_LuanChuyenNhanViens] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongA1GV]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongA1GV](
	[BacLuong] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_LuongA1GV] PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongA21PGS]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongA21PGS](
	[BacLuong] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_LuongA21PGS] PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongA31GS]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongA31GS](
	[BacLuong] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_LuongA31GS] PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luongs]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luongs](
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongToiThieu] [int] NOT NULL,
	[HeSoLuong] [float] NULL,
	[BHXH] [float] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[PhuCap] [float] NULL,
	[ThueThuNhap] [float] NULL,
 CONSTRAINT [PK_Luongs] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanViens]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanViens](
	[MaNhanVien] [varchar](30) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[QueQuan] [nvarchar](100) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[GioiTinh] [int] NULL,
	[DanToc] [nvarchar](10) NULL,
	[sdt_NhanVien] [varchar](11) NULL,
	[MaChucVuNV] [varchar](30) NULL,
	[TrangThai] [bit] NOT NULL,
	[MaPhongBan] [varchar](30) NULL,
	[MaHopDong] [varchar](30) NULL,
	[MaChuyenNganh] [varchar](30) NULL,
	[MaTrinhDoHocVan] [varchar](30) NULL,
	[CMND] [varchar](50) NULL,
 CONSTRAINT [PK_NhanViens] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBans]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBans](
	[MaPhongBan] [varchar](30) NOT NULL,
	[TenPhongBan] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[sdt_PhongBan] [varchar](11) NULL,
 CONSTRAINT [PK_PhongBans] PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiViecs]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiViecs](
	[MaNhanVien] [varchar](30) NOT NULL,
	[Lydo] [nvarchar](max) NULL,
	[NgayThoiViec] [datetime] NOT NULL,
 CONSTRAINT [PK_ThoiViecs] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDoHocVans]    Script Date: 6/30/2022 12:43:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoHocVans](
	[MaTrinhDoHocVan] [varchar](30) NOT NULL,
	[TenTrinhDo] [nvarchar](max) NOT NULL,
	[HeSoBac] [float] NULL,
 CONSTRAINT [PK_TrinhDoHocVans] PRIMARY KEY CLUSTERED 
(
	[MaTrinhDoHocVan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CapNhatLuongs] ON 
GO
INSERT [dbo].[CapNhatLuongs] ([id], [MaNhanVien], [LuongHienTai], [LuongSauCapNhat], [BHXH], [BHYT], [BHTN], [PhuCap], [ThueThuNhap], [NgayCapNhat], [HeSoLuong]) VALUES (1, N'001', 1150000, 15000000, 8, 1.5, 1, NULL, 10, CAST(N'2022-06-12T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[CapNhatLuongs] ([id], [MaNhanVien], [LuongHienTai], [LuongSauCapNhat], [BHXH], [BHYT], [BHTN], [PhuCap], [ThueThuNhap], [NgayCapNhat], [HeSoLuong]) VALUES (2, N'001', 15000000, 7500000, 8, 1.5, 1, NULL, 10, CAST(N'2022-06-12T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[CapNhatLuongs] ([id], [MaNhanVien], [LuongHienTai], [LuongSauCapNhat], [BHXH], [BHYT], [BHTN], [PhuCap], [ThueThuNhap], [NgayCapNhat], [HeSoLuong]) VALUES (3, N'001', 7500000, 7500000, 8, 1.5, 1, NULL, 10, CAST(N'2022-06-12T00:00:00.000' AS DateTime), 3)
GO
SET IDENTITY_INSERT [dbo].[CapNhatLuongs] OFF
GO
SET IDENTITY_INSERT [dbo].[CapNhatTrinhDoHocVans] ON 
GO
INSERT [dbo].[CapNhatTrinhDoHocVans] ([MaCapNhat], [MaNhanVien], [NgayCapNhat], [MaTrinhDoTruoc], [MaTrinhDoCapNhat]) VALUES (1, N'001', CAST(N'2022-06-07T00:00:00.000' AS DateTime), N'ts', N'ts')
GO
SET IDENTITY_INSERT [dbo].[CapNhatTrinhDoHocVans] OFF
GO
INSERT [dbo].[ChiTietLuongs] ([MaChiTietBangLuong], [MaNhanVien], [LuongCoBan], [BHXH], [BHYT], [BHTN], [PhuCap], [ThueThuNhap], [TienThuong], [TienPhat], [NgayNhanLuong], [TongTienLuong]) VALUES (N't6', N'001', 45000000, 1200000, 225000, 150000, 0, 1500000, 0, 0, CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'41925000')
GO
INSERT [dbo].[ChucVuNhanViens] ([MaChucVuNV], [TenChucVu], [HSPC]) VALUES (N'nv', N'Nhân viên', 0)
GO
INSERT [dbo].[ChucVuNhanViens] ([MaChucVuNV], [TenChucVu], [HSPC]) VALUES (N'pp', N'Phó phòng, Phó khoa', 0.35)
GO
INSERT [dbo].[ChucVuNhanViens] ([MaChucVuNV], [TenChucVu], [HSPC]) VALUES (N'tbm', N'Trưởng bộ môn', 0.25)
GO
INSERT [dbo].[ChucVuNhanViens] ([MaChucVuNV], [TenChucVu], [HSPC]) VALUES (N'tp', N'Trưởng phòng, Trưởng khoa', 0.45)
GO
INSERT [dbo].[ChuyenNganhs] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'ck', N'Cơ khí')
GO
INSERT [dbo].[ChuyenNganhs] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'cntt', N'Công nghệ thông tin')
GO
INSERT [dbo].[ChuyenNganhs] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'dientu', N'Điện tử')
GO
INSERT [dbo].[ChuyenNganhs] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'hoahoc', N'Hóa học')
GO
INSERT [dbo].[ChuyenNganhs] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'kt', N'Kế toán')
GO
INSERT [dbo].[ChuyenNganhs] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'nl', N'Nhiệt lạnh')
GO
INSERT [dbo].[ChuyenNganhs] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'sinhhoc', N'Sinh học')
GO
INSERT [dbo].[ChuyenNganhs] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'toan', N'Toán')
GO
INSERT [dbo].[ChuyenNganhs] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'tth', N'Chính trị học')
GO
INSERT [dbo].[HopDongs] ([MaHopDong], [LoaiHopDong], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'001', NULL, CAST(N'2022-06-07T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[KhenThuongs] ([MaNhanVien], [ThangThuong], [LyDo], [TienThuong]) VALUES (N'001', CAST(N'2022-06-11T00:00:00.000' AS DateTime), N'giáo viên giỏi', 4000000)
GO
SET IDENTITY_INSERT [dbo].[LuanChuyenNhanViens] ON 
GO
INSERT [dbo].[LuanChuyenNhanViens] ([MaNhanVien], [id], [NgayChuyen], [LyDoChuyen], [PhongBanChuyen], [PhongBanDen]) VALUES (N'001', 1, CAST(N'2022-06-12T00:00:00.000' AS DateTime), N' thiếu giáo viên', N'xaydung', N'daotao')
GO
SET IDENTITY_INSERT [dbo].[LuanChuyenNhanViens] OFF
GO
SET IDENTITY_INSERT [dbo].[LuongA1GV] ON 
GO
INSERT [dbo].[LuongA1GV] ([BacLuong], [HeSo]) VALUES (1, 2.34)
GO
INSERT [dbo].[LuongA1GV] ([BacLuong], [HeSo]) VALUES (2, 2.67)
GO
INSERT [dbo].[LuongA1GV] ([BacLuong], [HeSo]) VALUES (3, 3)
GO
INSERT [dbo].[LuongA1GV] ([BacLuong], [HeSo]) VALUES (4, 3.33)
GO
INSERT [dbo].[LuongA1GV] ([BacLuong], [HeSo]) VALUES (5, 3.66)
GO
INSERT [dbo].[LuongA1GV] ([BacLuong], [HeSo]) VALUES (6, 3.99)
GO
INSERT [dbo].[LuongA1GV] ([BacLuong], [HeSo]) VALUES (7, 4.32)
GO
INSERT [dbo].[LuongA1GV] ([BacLuong], [HeSo]) VALUES (8, 4.65)
GO
INSERT [dbo].[LuongA1GV] ([BacLuong], [HeSo]) VALUES (9, 4.98)
GO
SET IDENTITY_INSERT [dbo].[LuongA1GV] OFF
GO
SET IDENTITY_INSERT [dbo].[LuongA21PGS] ON 
GO
INSERT [dbo].[LuongA21PGS] ([BacLuong], [HeSo]) VALUES (1, 4.4)
GO
INSERT [dbo].[LuongA21PGS] ([BacLuong], [HeSo]) VALUES (2, 4.74)
GO
INSERT [dbo].[LuongA21PGS] ([BacLuong], [HeSo]) VALUES (3, 5.08)
GO
INSERT [dbo].[LuongA21PGS] ([BacLuong], [HeSo]) VALUES (4, 5.42)
GO
INSERT [dbo].[LuongA21PGS] ([BacLuong], [HeSo]) VALUES (5, 5.76)
GO
INSERT [dbo].[LuongA21PGS] ([BacLuong], [HeSo]) VALUES (6, 6.1)
GO
INSERT [dbo].[LuongA21PGS] ([BacLuong], [HeSo]) VALUES (7, 6.44)
GO
INSERT [dbo].[LuongA21PGS] ([BacLuong], [HeSo]) VALUES (8, 6.78)
GO
SET IDENTITY_INSERT [dbo].[LuongA21PGS] OFF
GO
SET IDENTITY_INSERT [dbo].[LuongA31GS] ON 
GO
INSERT [dbo].[LuongA31GS] ([BacLuong], [HeSo]) VALUES (1, 6.2)
GO
INSERT [dbo].[LuongA31GS] ([BacLuong], [HeSo]) VALUES (2, 6.56)
GO
INSERT [dbo].[LuongA31GS] ([BacLuong], [HeSo]) VALUES (3, 6.92)
GO
INSERT [dbo].[LuongA31GS] ([BacLuong], [HeSo]) VALUES (4, 7.28)
GO
INSERT [dbo].[LuongA31GS] ([BacLuong], [HeSo]) VALUES (5, 7.64)
GO
INSERT [dbo].[LuongA31GS] ([BacLuong], [HeSo]) VALUES (6, 8)
GO
SET IDENTITY_INSERT [dbo].[LuongA31GS] OFF
GO
INSERT [dbo].[Luongs] ([MaNhanVien], [LuongToiThieu], [HeSoLuong], [BHXH], [BHYT], [BHTN], [PhuCap], [ThueThuNhap]) VALUES (N'001', 7500000, 3, 8, 1.5, 1, 0, 10)
GO
INSERT [dbo].[NhanViens] ([MaNhanVien], [MatKhau], [HoTen], [NgaySinh], [QueQuan], [HinhAnh], [GioiTinh], [DanToc], [sdt_NhanVien], [MaChucVuNV], [TrangThai], [MaPhongBan], [MaHopDong], [MaChuyenNganh], [MaTrinhDoHocVan], [CMND]) VALUES (N'001', N'123', N'Nguyễn Văn A', NULL, NULL, N'icon.jpg', 1, NULL, NULL, N'nv', 1, N'daotao', N'001', N'ck', N'ts', NULL)
GO
INSERT [dbo].[NhanViens] ([MaNhanVien], [MatKhau], [HoTen], [NgaySinh], [QueQuan], [HinhAnh], [GioiTinh], [DanToc], [sdt_NhanVien], [MaChucVuNV], [TrangThai], [MaPhongBan], [MaHopDong], [MaChuyenNganh], [MaTrinhDoHocVan], [CMND]) VALUES (N'admin', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[PhongBans] ([MaPhongBan], [TenPhongBan], [DiaChi], [sdt_PhongBan]) VALUES (N'cntt', N'Công nghệ thông tin', N'Lầu 1 nhà c2', N'0369061234')
GO
INSERT [dbo].[PhongBans] ([MaPhongBan], [TenPhongBan], [DiaChi], [sdt_PhongBan]) VALUES (N'daotao', N'Đào tạo', N'Lầu 2 nhà E1', N'029348472')
GO
INSERT [dbo].[PhongBans] ([MaPhongBan], [TenPhongBan], [DiaChi], [sdt_PhongBan]) VALUES (N'ketoan', N'Kế toán', N'Lầu 3 nhà E', N'089372732')
GO
INSERT [dbo].[PhongBans] ([MaPhongBan], [TenPhongBan], [DiaChi], [sdt_PhongBan]) VALUES (N'xaydung', N'Xây dựng', N'lầu 2 nhà c2', N'08329834')
GO
INSERT [dbo].[TrinhDoHocVans] ([MaTrinhDoHocVan], [TenTrinhDo], [HeSoBac]) VALUES (N'gs', N'Giáo sư', 6.2)
GO
INSERT [dbo].[TrinhDoHocVans] ([MaTrinhDoHocVan], [TenTrinhDo], [HeSoBac]) VALUES (N'ks', N'Kỹ sư', 2.34)
GO
INSERT [dbo].[TrinhDoHocVans] ([MaTrinhDoHocVan], [TenTrinhDo], [HeSoBac]) VALUES (N'pgs', N'Phó giáo sư', 4.4)
GO
INSERT [dbo].[TrinhDoHocVans] ([MaTrinhDoHocVan], [TenTrinhDo], [HeSoBac]) VALUES (N'ths', N'Thạc sỹ', 2.67)
GO
INSERT [dbo].[TrinhDoHocVans] ([MaTrinhDoHocVan], [TenTrinhDo], [HeSoBac]) VALUES (N'ts', N'Tiến sỹ', 3)
GO
ALTER TABLE [dbo].[CapNhatLuongs]  WITH CHECK ADD  CONSTRAINT [FK_CapNhatLuong_Luong] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[Luongs] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CapNhatLuongs] CHECK CONSTRAINT [FK_CapNhatLuong_Luong]
GO
ALTER TABLE [dbo].[CapNhatTrinhDoHocVans]  WITH CHECK ADD  CONSTRAINT [FK_CapNhatTrinhDoHocVan_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CapNhatTrinhDoHocVans] CHECK CONSTRAINT [FK_CapNhatTrinhDoHocVan_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietLuongs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLuong_Luong] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[Luongs] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietLuongs] CHECK CONSTRAINT [FK_ChiTietLuong_Luong]
GO
ALTER TABLE [dbo].[KhenThuongs]  WITH CHECK ADD  CONSTRAINT [FK__Thuong__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhenThuongs] CHECK CONSTRAINT [FK__Thuong__MaNhanVien]
GO
ALTER TABLE [dbo].[KyLuats]  WITH CHECK ADD  CONSTRAINT [FK_KyLuat_KyLuat] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KyLuats] CHECK CONSTRAINT [FK_KyLuat_KyLuat]
GO
ALTER TABLE [dbo].[LuanChuyenNhanViens]  WITH CHECK ADD  CONSTRAINT [FK__LuanChuyen__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LuanChuyenNhanViens] CHECK CONSTRAINT [FK__LuanChuyen__MaNhanVien]
GO
ALTER TABLE [dbo].[Luongs]  WITH CHECK ADD  CONSTRAINT [FK_Luong_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Luongs] CHECK CONSTRAINT [FK_Luong_NhanVien]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaChuyenNganh] FOREIGN KEY([MaChuyenNganh])
REFERENCES [dbo].[ChuyenNganhs] ([MaChuyenNganh])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK__NhanVien__MaChuyenNganh]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaHopDong] FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[HopDongs] ([MaHopDong])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK__NhanVien__MaHopDong]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaPhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBans] ([MaPhongBan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK__NhanVien__MaPhongBan]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVuNhanVien] FOREIGN KEY([MaChucVuNV])
REFERENCES [dbo].[ChucVuNhanViens] ([MaChucVuNV])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NhanVien_ChucVuNhanVien]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TrinhDoHocVan] FOREIGN KEY([MaTrinhDoHocVan])
REFERENCES [dbo].[TrinhDoHocVans] ([MaTrinhDoHocVan])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NhanVien_TrinhDoHocVan]
GO
ALTER TABLE [dbo].[ThoiViecs]  WITH CHECK ADD  CONSTRAINT [FK__ThoiViec__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ThoiViecs] CHECK CONSTRAINT [FK__ThoiViec__MaNhanVien]
GO
