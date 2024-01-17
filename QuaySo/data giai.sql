USE [QuaySo]
GO
SET IDENTITY_INSERT [dbo].[GiaiThuong] ON 
GO
INSERT [dbo].[GiaiThuong] ([ID], [TenGiai], [SoLuong], [Image], [STT], [ProcessDefault], [TenPhanThuong], [GiaTri]) VALUES (3, N'GIẢI NHẤT', 1, N'http://localhost:59628/Content/QuaySoTrungThuong/giai/nhat.JPG', 1, 0, N'1 Nồi chiên không dầu kết hợp hấp Kuchen', NULL)
GO
INSERT [dbo].[GiaiThuong] ([ID], [TenGiai], [SoLuong], [Image], [STT], [ProcessDefault], [TenPhanThuong], [GiaTri]) VALUES (4, N'GIẢI NHÌ', 2, N'http://localhost:59628/Content/QuaySoTrungThuong/giai/nhi.PNG', 2, 0, N'2 Nồi áp suất', NULL)
GO
INSERT [dbo].[GiaiThuong] ([ID], [TenGiai], [SoLuong], [Image], [STT], [ProcessDefault], [TenPhanThuong], [GiaTri]) VALUES (5, N'GIẢI BA', 3, N'http://localhost:59628/Content/QuaySoTrungThuong/giai/ba.jpg', 3, 0, N'3 Bộ Chăn Ga Gối Đệm ', NULL)
GO
INSERT [dbo].[GiaiThuong] ([ID], [TenGiai], [SoLuong], [Image], [STT], [ProcessDefault], [TenPhanThuong], [GiaTri]) VALUES (6, N'GIẢI KHUYẾN KHÍCH', 4, N'https://xuyentra.vn/wp-content/uploads/2020/05/B%E1%BB%99-%E1%BA%A5m-ch%C3%A9n-d%C3%A1ng-b%C6%B0%E1%BB%9Fi-%C4%91%C3%A0o-h%E1%BB%93ng-men-kem-ve%CC%83-%C4%91a%CC%80o.jpg', 4, 0, N'4 bộ ly sứ Bát Tràng', N'1,700,000₫')
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
INSERT [dbo].[TrungGiai] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV024', 6, NULL, CAST(N'2024-01-08T17:34:34.300' AS DateTime), N'Trần Văn Quang')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV001', 6, NULL, CAST(N'2023-12-28T18:40:55.127' AS DateTime), N'Phan Anh Tuấn ')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV002', 6, NULL, CAST(N'2023-12-28T18:43:08.140' AS DateTime), N'Nguyễn Văn Thêm')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV005', 6, NULL, CAST(N'2023-12-28T18:39:50.853' AS DateTime), N'Ngô Văn Tuấn')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV010', 5, NULL, CAST(N'2023-12-28T18:48:38.623' AS DateTime), N'Trần Xuân Hải')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV040', 4, NULL, CAST(N'2023-12-28T18:47:59.230' AS DateTime), N'Đặng Văn Thức')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV042', 0, NULL, CAST(N'2023-12-28T18:22:24.147' AS DateTime), N'Nguyễn Bá Dũng')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV043', 5, NULL, CAST(N'2023-12-28T18:48:50.023' AS DateTime), N'Nguyễn Thị Dung')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV047', 3, NULL, CAST(N'2023-12-28T18:49:49.897' AS DateTime), N'Nguyễn  Khương Duy')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV048', 6, NULL, CAST(N'2023-12-28T18:36:18.967' AS DateTime), N'Đặng Văn Thắng')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV050', 0, NULL, CAST(N'2023-12-28T18:49:26.663' AS DateTime), N'Hoàng Hữu Quân')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV053', 5, NULL, CAST(N'2023-12-28T18:48:26.047' AS DateTime), N'Nguyễn Thị Lan')
GO
INSERT [dbo].[TrungGiai02012024113933] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV067', 4, NULL, CAST(N'2023-12-28T18:46:18.790' AS DateTime), N'Đậu Văn Nhật')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV010', 5, NULL, CAST(N'2024-01-02T11:41:32.347' AS DateTime), N'Trần Xuân Hải')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV016', 4, NULL, CAST(N'2024-01-02T11:41:48.217' AS DateTime), N'Nguyễn Đình Việt')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV040', 6, NULL, CAST(N'2024-01-02T11:40:28.420' AS DateTime), N'Đặng Văn Thức')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV042', 5, NULL, CAST(N'2024-01-02T11:41:20.570' AS DateTime), N'Nguyễn Bá Dũng')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV045', 3, NULL, CAST(N'2024-01-02T11:42:14.587' AS DateTime), N'Nguyễn Văn An ')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV047', 4, NULL, CAST(N'2024-01-02T11:42:00.080' AS DateTime), N'Nguyễn  Khương Duy')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV048', 5, NULL, CAST(N'2024-01-02T11:41:08.797' AS DateTime), N'Đặng Văn Thắng')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV050', 6, NULL, CAST(N'2024-01-02T11:40:39.750' AS DateTime), N'Hoàng Hữu Quân')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV056', 6, NULL, CAST(N'2024-01-02T11:40:14.640' AS DateTime), N'Đặng Đình Cương')
GO
INSERT [dbo].[TrungGiai08012024144520] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV061', 6, NULL, CAST(N'2024-01-02T11:40:51.623' AS DateTime), N'Nguyễn Đức Thân')
GO
INSERT [dbo].[TrungGiai08012024144556] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV023', 3, NULL, CAST(N'2024-01-08T14:45:49.277' AS DateTime), N'Trần Quốc Khánh')
GO
INSERT [dbo].[TrungGiai08012024144556] ([Code], [ID_GiaiThuong], [GhiChu], [DateCreate], [Name]) VALUES (N'NV024', 0, NULL, CAST(N'2024-01-08T14:45:35.373' AS DateTime), N'Trần Văn Quang')
GO
