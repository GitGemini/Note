/*
Navicat SQL Server Data Transfer

Source Server         : YCSql
Source Server Version : 90000
Source Host           : 39.106.151.49:1433
Source Database       : gp
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 90000
File Encoding         : 65001

Date: 2017-12-09 10:35:15
*/


-- ----------------------------
-- Table structure for GpOrder
-- ----------------------------

GO
CREATE TABLE [dbo].[GpOrder] (
[order_id] bigint NOT NULL ,
[user_id] bigint NOT NULL ,
[stock_id] int NOT NULL ,
[type] int NOT NULL ,
[undealed] int NOT NULL ,
[dealed] int NOT NULL ,
[canceled] int NOT NULL ,
[create_date] datetime NOT NULL ,
[price] money NOT NULL 
)


GO

-- ----------------------------
-- Records of GpOrder
-- ----------------------------
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000001', N'10000001', N'200001', N'1', N'0', N'10', N'0', N'2017-10-27 17:42:50.080', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000002', N'10000002', N'200001', N'0', N'0', N'5', N'0', N'2017-10-27 17:43:21.157', N'13.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000003', N'10000002', N'200001', N'1', N'0', N'5', N'0', N'2017-10-28 11:16:00.750', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000004', N'10000001', N'200002', N'0', N'1', N'1', N'0', N'2017-10-28 11:29:54.383', N'45.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000005', N'10000002', N'200002', N'1', N'0', N'1', N'0', N'2017-10-28 11:31:07.470', N'45.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000006', N'10000003', N'200001', N'0', N'0', N'12', N'0', N'2017-12-01 14:38:35.113', N'12.3000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000007', N'10000003', N'200001', N'0', N'0', N'12', N'0', N'2017-12-01 14:42:22.623', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000008', N'10000001', N'200001', N'1', N'0', N'15', N'0', N'2017-12-01 14:48:10.570', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000009', N'10000001', N'200001', N'1', N'0', N'3', N'0', N'2017-12-01 14:50:44.713', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000010', N'10000003', N'200001', N'1', N'0', N'15', N'3', N'2017-12-01 14:53:57.750', N'13.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000011', N'10000003', N'200001', N'0', N'0', N'12', N'0', N'2017-12-01 14:56:34.780', N'14.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000012', N'10000003', N'200001', N'1', N'0', N'13', N'0', N'2017-12-01 15:01:11.697', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000013', N'10000003', N'200001', N'0', N'0', N'13', N'13', N'2017-12-01 15:03:59.693', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000014', N'10000003', N'200001', N'0', N'0', N'10', N'10', N'2017-12-01 15:05:03.483', N'10.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000015', N'10000004', N'200001', N'0', N'0', N'10', N'0', N'2017-12-01 15:07:50.110', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000016', N'10000004', N'200001', N'0', N'0', N'15', N'0', N'2017-12-01 16:24:40.140', N'13.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000017', N'10000004', N'200001', N'1', N'0', N'15', N'0', N'2017-12-01 16:26:24.957', N'13.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000018', N'10000003', N'200001', N'0', N'0', N'4', N'0', N'2017-12-01 16:27:01.180', N'13.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000019', N'10000003', N'200001', N'0', N'0', N'10', N'0', N'2017-12-01 17:33:46.787', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000020', N'10000003', N'200001', N'0', N'0', N'5', N'2', N'2017-12-01 17:34:19.877', N'13.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000021', N'10000003', N'200001', N'0', N'0', N'13', N'13', N'2017-12-01 22:13:26.083', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000022', N'10000004', N'200001', N'1', N'0', N'5', N'0', N'2017-12-01 22:15:20.900', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000023', N'10000004', N'200001', N'1', N'0', N'5', N'0', N'2017-12-01 22:16:32.940', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000024', N'10000003', N'200001', N'1', N'0', N'10', N'10', N'2017-12-01 22:29:30.140', N'12.5000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000025', N'10000003', N'200001', N'0', N'0', N'12', N'12', N'2017-12-01 22:37:51.683', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000026', N'10000003', N'200001', N'1', N'0', N'1', N'1', N'2017-12-02 20:15:52.100', N'15.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000027', N'10000003', N'200001', N'1', N'0', N'1', N'1', N'2017-12-02 20:16:33.097', N'15.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000028', N'10000003', N'200001', N'1', N'0', N'10', N'10', N'2017-12-02 20:27:58.067', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000029', N'10000003', N'200001', N'0', N'0', N'12', N'12', N'2017-12-02 20:28:15.990', N'11.6000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000030', N'10000003', N'200001', N'1', N'0', N'13', N'1', N'2017-12-02 20:34:50.360', N'14.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000031', N'10000003', N'200001', N'0', N'0', N'2', N'0', N'2017-12-02 20:35:06.850', N'12.8000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000032', N'10000004', N'200001', N'0', N'0', N'10', N'0', N'2017-12-02 20:55:39.010', N'15.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000033', N'10000004', N'200001', N'1', N'0', N'3', N'1', N'2017-12-02 20:56:49.317', N'12.5000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000034', N'10000004', N'200001', N'1', N'0', N'2', N'2', N'2017-12-08 15:03:22.067', N'12.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000035', N'10000004', N'200001', N'0', N'0', N'2', N'2', N'2017-12-08 15:05:41.503', N'13.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000036', N'10000004', N'200001', N'0', N'0', N'1', N'0', N'2017-12-08 15:06:04.990', N'14.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000037', N'10000004', N'200001', N'0', N'0', N'1', N'0', N'2017-12-08 15:06:16.630', N'14.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000038', N'10000004', N'200001', N'1', N'0', N'3', N'1', N'2017-12-08 15:07:06.050', N'14.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000039', N'10000003', N'200001', N'0', N'0', N'15', N'15', N'2017-12-08 15:08:08.253', N'2.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000040', N'10000003', N'200001', N'0', N'0', N'2', N'0', N'2017-12-08 15:08:35.067', N'15.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000041', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 15:10:55.147', N'1.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000042', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 15:11:05.770', N'14.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000043', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:15.527', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000044', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:17.247', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000045', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:18.260', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000046', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:18.573', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000047', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:18.777', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000048', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:18.963', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000049', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:19.150', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000050', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:19.310', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000051', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:19.497', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000052', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:19.683', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000053', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:19.857', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000054', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:20.043', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000055', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:20.310', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000056', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:20.667', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000057', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:21.073', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000058', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:21.480', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000059', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:21.887', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000060', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:22.290', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000061', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:23.107', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000062', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:23.590', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000063', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:23.917', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000064', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:24.260', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000065', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:24.607', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000066', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:24.950', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000067', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:25.293', N'11.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000068', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:36.463', N'2.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000069', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:39.183', N'3.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000070', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:41.760', N'13.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000071', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:45.887', N'14.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000072', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:49.980', N'15.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000073', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:52.560', N'16.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000074', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:55.340', N'8.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000075', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:44:58.120', N'18.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000076', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:45:01.027', N'18.1000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000077', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:45:02.650', N'18.1100')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000078', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:45:04.463', N'18.1110')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000079', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:45:06.277', N'18.1111')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000080', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:45:09.260', N'19.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000081', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:45:11.463', N'19.1000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000082', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 16:55:02.220', N'20.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000083', N'10000003', N'200001', N'0', N'0', N'11', N'11', N'2017-12-08 16:58:07.110', N'2.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000084', N'10000004', N'200001', N'0', N'20', N'0', N'0', N'2017-12-08 16:59:30.940', N'1.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000085', N'10000004', N'200001', N'0', N'2', N'0', N'0', N'2017-12-08 17:00:34.580', N'22.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000086', N'10000004', N'200001', N'0', N'2', N'0', N'0', N'2017-12-08 17:02:14.673', N'22.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000087', N'10000003', N'200001', N'0', N'0', N'11', N'11', N'2017-12-08 17:02:32.627', N'3.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000088', N'10000004', N'200001', N'0', N'0', N'1', N'0', N'2017-12-08 17:33:11.420', N'33.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000089', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 17:33:18.827', N'33.1000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000090', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 17:33:20.577', N'33.1110')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000091', N'10000004', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 17:33:22.467', N'33.1111')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000092', N'10000003', N'200001', N'0', N'0', N'12', N'12', N'2017-12-08 17:44:52.283', N'1.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000093', N'10000003', N'200001', N'0', N'1', N'0', N'0', N'2017-12-08 17:46:00.880', N'50.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000094', N'10000003', N'200001', N'1', N'0', N'1', N'0', N'2017-12-08 17:48:55.880', N'33.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000095', N'10000003', N'200001', N'0', N'0', N'51', N'51', N'2017-12-08 20:08:27.847', N'1.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000096', N'10000003', N'200001', N'0', N'0', N'1', N'1', N'2017-12-08 20:09:32.423', N'61.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000097', N'10000003', N'200001', N'1', N'2', N'0', N'0', N'2017-12-08 22:07:46.160', N'61.0000')
GO
GO
INSERT INTO [dbo].[GpOrder] ([order_id], [user_id], [stock_id], [type], [undealed], [dealed], [canceled], [create_date], [price]) VALUES (N'40000098', N'10000003', N'200001', N'1', N'0', N'1', N'1', N'2017-12-08 22:07:57.100', N'62.0000')
GO
GO

-- ----------------------------
-- Table structure for GpTransaction
-- ----------------------------

GO
CREATE TABLE [dbo].[GpTransaction] (
[trans_id] bigint NOT NULL ,
[buy_order_id] bigint NOT NULL ,
[dealed] int NOT NULL ,
[sell_order_id] bigint NOT NULL ,
[time] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of GpTransaction
-- ----------------------------
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000001', N'40000002', N'5', N'40000001', N'2017-10-27 17:43:21.157')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000002', N'40000004', N'1', N'40000005', N'2017-10-28 11:31:07.470')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000003', N'40000006', N'5', N'40000001', N'2017-12-01 14:38:36.343')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000004', N'40000006', N'5', N'40000003', N'2017-12-01 14:38:36.343')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000005', N'40000007', N'12', N'40000008', N'2017-12-01 14:48:10.723')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000006', N'40000006', N'2', N'40000008', N'2017-12-01 14:48:10.723')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000007', N'40000011', N'1', N'40000008', N'2017-12-01 14:56:34.780')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000008', N'40000011', N'3', N'40000009', N'2017-12-01 14:56:34.780')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000009', N'40000015', N'10', N'40000012', N'2017-12-01 15:07:50.110')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000010', N'40000016', N'3', N'40000012', N'2017-12-01 16:24:40.140')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000011', N'40000016', N'12', N'40000010', N'2017-12-01 16:24:40.140')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000012', N'40000011', N'8', N'40000017', N'2017-12-01 16:26:24.957')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000013', N'40000018', N'4', N'40000017', N'2017-12-01 16:27:01.180')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000014', N'40000020', N'3', N'40000017', N'2017-12-01 17:34:19.877')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000015', N'40000019', N'5', N'40000022', N'2017-12-01 22:15:20.900')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000016', N'40000019', N'5', N'40000023', N'2017-12-01 22:16:32.940')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000017', N'40000032', N'10', N'40000030', N'2017-12-02 20:55:39.057')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000018', N'40000031', N'2', N'40000033', N'2017-12-02 20:56:49.317')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000019', N'40000036', N'1', N'40000030', N'2017-12-08 15:06:04.990')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000020', N'40000037', N'1', N'40000030', N'2017-12-08 15:06:16.630')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000021', N'40000040', N'2', N'40000038', N'2017-12-08 15:08:35.067')
GO
GO
INSERT INTO [dbo].[GpTransaction] ([trans_id], [buy_order_id], [dealed], [sell_order_id], [time]) VALUES (N'50000022', N'40000088', N'1', N'40000094', N'2017-12-08 17:48:55.880')
GO
GO

-- ----------------------------
-- Table structure for Stock
-- ----------------------------

GO
CREATE TABLE [dbo].[Stock] (
[stock_id] int NOT NULL ,
[name] nvarchar(32) NOT NULL 
)


GO

-- ----------------------------
-- Records of Stock
-- ----------------------------
INSERT INTO [dbo].[Stock] ([stock_id], [name]) VALUES (N'200001', N'河大股份')
GO
GO
INSERT INTO [dbo].[Stock] ([stock_id], [name]) VALUES (N'200002', N'alibaba')
GO
GO

-- ----------------------------
-- Table structure for User_position
-- ----------------------------
DROP TABLE [dbo].[User_position]
GO
CREATE TABLE [dbo].[User_position] (
[user_id] bigint NOT NULL ,
[stock_id] int NOT NULL ,
[num_free] int NOT NULL ,
[num_freezed] int NOT NULL 
)


GO

-- ----------------------------
-- Records of User_position
-- ----------------------------
INSERT INTO [dbo].[User_position] ([user_id], [stock_id], [num_free], [num_freezed]) VALUES (N'10000001', N'200001', N'2', N'0')
GO
GO
INSERT INTO [dbo].[User_position] ([user_id], [stock_id], [num_free], [num_freezed]) VALUES (N'10000001', N'200002', N'16', N'0')
GO
GO
INSERT INTO [dbo].[User_position] ([user_id], [stock_id], [num_free], [num_freezed]) VALUES (N'10000002', N'200001', N'0', N'0')
GO
GO
INSERT INTO [dbo].[User_position] ([user_id], [stock_id], [num_free], [num_freezed]) VALUES (N'10000002', N'200002', N'9', N'0')
GO
GO
INSERT INTO [dbo].[User_position] ([user_id], [stock_id], [num_free], [num_freezed]) VALUES (N'10000003', N'200001', N'17', N'2')
GO
GO
INSERT INTO [dbo].[User_position] ([user_id], [stock_id], [num_free], [num_freezed]) VALUES (N'10000004', N'200001', N'9', N'0')
GO
GO

-- ----------------------------
-- Table structure for Users
-- ----------------------------

GO
CREATE TABLE [dbo].[Users] (
[user_id] bigint NOT NULL ,
[name] nvarchar(32) NOT NULL ,
[login_name] nvarchar(32) NOT NULL ,
[passwd] varchar(32) NOT NULL ,
[type] int NOT NULL ,
[coy_free] money NOT NULL ,
[coy_freezed] money NOT NULL 
)


GO

-- ----------------------------
-- Records of Users
-- ----------------------------
INSERT INTO [dbo].[Users] ([user_id], [name], [login_name], [passwd], [type], [coy_free], [coy_freezed]) VALUES (N'10000001', N'崔翔', N'cui', N'11111', N'1', N'10246.6000', N'45.0000')
GO
GO
INSERT INTO [dbo].[Users] ([user_id], [name], [login_name], [passwd], [type], [coy_free], [coy_freezed]) VALUES (N'10000002', N'陈小藩', N'chen', N'11111', N'1', N'10045.0000', N'.0000')
GO
GO
INSERT INTO [dbo].[Users] ([user_id], [name], [login_name], [passwd], [type], [coy_free], [coy_freezed]) VALUES (N'10000003', N'phz', N'ph', N'11111', N'0', N'19847.8000', N'50.0000')
GO
GO
INSERT INTO [dbo].[Users] ([user_id], [name], [login_name], [passwd], [type], [coy_free], [coy_freezed]) VALUES (N'10000004', N'jhf', N'jhf', N'11111', N'0', N'1436.7458', N'716.8542')
GO
GO

-- ----------------------------
-- View structure for VW_GpPrice
-- ----------------------------

GO
CREATE VIEW [dbo].[VW_GpPrice] AS 
select 
	t1.*,
	t2.stock_id,
	t2.price as buy_price,
	t3.price as sell_price
from GpTransaction as t1
inner join GpOrder as t2 on t1.buy_order_id=t2.order_id
inner join GpOrder as t3 on t1.sell_order_id=t3.order_id
GO

-- ----------------------------
-- Procedure structure for cancel_order
-- ----------------------------

GO




CREATE proc [dbo].[cancel_order]
	@user_id bigint,
	@order_id bigint
as
begin
	Set NOCOUNT ON;  --优化存储过程
	Set XACT_ABORT ON;
	begin try
		begin tran
		declare @isHave int
		set @isHave=0
		select @isHave=count(*) from GpOrder where @order_id=order_id 
		if(@isHave>0)
		begin
			declare @stock_id bigint,@type int,@undealed int,@dealed int,@canceled int,@price money
			select @stock_id=stock_id,@type=type,@undealed=undealed,@dealed=dealed,@canceled=canceled,@price=price
			from GpOrder where  @order_id=order_id
			if(@type=0 and @undealed>0)
			begin
				declare @coy_freezed money
				set @coy_freezed=@undealed*@price
				
				update Users set coy_free=coy_free+@coy_freezed,coy_freezed=coy_freezed-@coy_freezed where user_id=@user_id
				update GpOrder set canceled=@undealed,undealed=0,dealed=dealed+@undealed where order_id=@order_id 
			end
			else if (@type=1 and @undealed>0)
			begin
				declare @num_freezed int
				set @num_freezed=@undealed
				
				update User_position set num_free=num_free+@num_freezed,num_freezed=num_freezed-@num_freezed where user_id=@user_id and stock_id=@stock_id
				update GpOrder set canceled=@undealed,undealed=0,dealed=dealed+@undealed where order_id=@order_id and user_id=@user_id
			end
		end
		else
		begin
			return -1
		end
		commit tran
		set nocount off
		return 0		
		end try
		begin catch
			rollback tran
			set nocount off
			return -2
		end catch
end

GO

-- ----------------------------
-- Procedure structure for stock_depth
-- ----------------------------

GO



CREATE proc [dbo].[stock_depth]
	@stock_id int,
	@type int,
	@pageNumber int,
	@pageSize int,
	@totalPage int output
as
begin
	declare @totalCount int
	select @totalCount=count(*) from (select price,num=sum(undealed) from GpOrder where stock_id=@stock_id and type=@type and undealed<>0 group by price)tb1
	set @totalPage=ceiling(@totalCount*1.0/@pageSize*1.0)
	if(@type=0)
	begin
		select top (@pageSize) price,num from (select top (@pageSize*@pageNumber) row_number() over (order by price desc) as RowNum,price,num=sum(undealed) from GpOrder where   stock_id=@stock_id and type=@type and undealed<>0  group by price ) as T where RowNum>(@pageSize*(@pageNumber-1))	
	end
	else
	begin
		select top (@pageSize) price,num from (select top (@pageSize*@pageNumber) row_number() over (order by price) as RowNum,price,num=sum(undealed) from GpOrder where   stock_id=@stock_id and type=@type and undealed<>0   group by price ) as T where RowNum>(@pageSize*(@pageNumber-1))	
	end
	
end
GO

-- ----------------------------
-- Procedure structure for trade
-- ----------------------------

GO


CREATE proc [dbo].[trade]
	@user_id bigint,
	@stock_id int,
	@type int,
	@price money,
	@ammount int
as
begin
		--不返回计数（计数表示受 Transact-SQL 语句影响的行数，
		--例如在Sql server查询分析器中执行一个delete操作后，
		--下方窗口会提示（3）Rows Affected）。
		--当   SET NOCOUNT 为 OFF 时，返回计数,
		--我们应该在存储过程的头部加上SET NOCOUNT ON 这样的话，
		--在退出存储过程的时候加上 SET NOCOUNT OFF这样的话，
		--以达到优化存储过程的目的。
		Set NOCOUNT ON;  --优化存储过程

		--使用存储过程执行事物，需要开启XACT_ABORT参数(默认值为Off)，
		--将该参数设置为On，表示当执行事务时，如果出错,
		--会将 transcation设置为uncommittable状态，
		--那么在语句块批处理结束后将回滚所有操作；
		--如果该参数设置为Off，表示当执行事务时，如果出错，
		--出错的语句将不会执行，其他正确的操作继续执行
		Set XACT_ABORT ON;
		begin try
		begin tran
		declare @order_id bigint
		if @type=0
		begin
			declare @totalMoney money
			set @totalMoney=@price*@ammount
			declare @coy_free money
			select @coy_free=coy_free from Users where user_id=@user_id
			if(@coy_free>@totalMoney)
			begin
				update Users set coy_free=coy_free-@totalMoney,coy_freezed=@totalMoney+coy_freezed where user_id=@user_id
				select @order_id=isnull(max(order_id)+1,40000001) from GpOrder
				insert into GpOrder values(@order_id,@user_id,@stock_id,@type,@ammount,0,0,getdate(),@price)
			end
			else
			begin
				return -1
			end
		end
		else if(@type=1)
		begin
			declare @num_free int
			set @num_free=0
			select 	@num_free=isnull(num_free,0) from User_position where user_id=@user_id and stock_id=@stock_id
			if @num_free>=@ammount
			begin
				update User_position set num_free=num_free-@ammount,num_freezed=@ammount+num_freezed where user_id=@user_id and stock_id=@stock_id
				select @order_id=isnull(max(order_id)+1,40000001) from GpOrder
				insert into GpOrder values(@order_id,@user_id,@stock_id,@type,@ammount,0,0,getdate(),@price)
			end
			else
			begin
				return -2
			end
		end
		commit tran
		Set NOCOUNT OFF
		return 0
		end try
		begin catch
			rollback tran
			Set NOCOUNT OFF
			return -3
		end catch
end

GO

-- ----------------------------
-- Procedure structure for user_cny
-- ----------------------------

GO



CREATE proc [dbo].[user_cny]
	@user_id bigint,
	@cny_free money output,
	@cny_freezed money output,
	@asset money output
as
begin
	select @cny_free=coy_free from Users where user_id=@user_id --可用的人民币
	select @cny_freezed=coy_freezed from Users where user_id=@user_id --冻结人民币

	--持有股票数据
	declare @stock_id int
	declare @num_free int
	declare @num_freezed int
	declare @gp_money money
	set @gp_money=0
 	declare @t table(stock_id int,num_free int,num_freezed int)
	
	insert into @t(stock_id,num_free,num_freezed) exec user_stock @user_id
	declare gpNum cursor for select * from @t 
	open gpNum
	fetch next from gpNum into @stock_id,@num_free,@num_freezed
	while (@@fetch_status=0)
	begin	
		--查询该股票的最新成交价
		declare @deal_price money 
		exec usp_getGpPrice @stock_id,@price=@deal_price output
		set @gp_money=@gp_money+@deal_price*(@num_free+@num_freezed)
		fetch next from gpNum into @stock_id,@num_free,@num_freezed
	end
	close gpNum
	deallocate gpNum
	set @asset=@cny_free+@cny_freezed+@gp_money
end





GO

-- ----------------------------
-- Procedure structure for user_login
-- ----------------------------

GO
create proc [dbo].[user_login]
	@login_name nvarchar(32),
	@passwd varchar(32),
	@user_id bigint output,
	@name nvarchar(32) output,
	@type int output
as
begin
	declare @count int;
	set @count=0
	select @count=count(*) from Users where @login_name=login_name and @passwd=passwd
	if(@count>0)
	begin
		select @user_id=user_id,@name=name,@type=type from Users where @login_name=login_name and @passwd=passwd
		return 0
	end
	else
	begin
		return -1
	end
end

GO

-- ----------------------------
-- Procedure structure for user_stock
-- ----------------------------

GO


CREATE proc [dbo].[user_stock]
	@user_id bigint
as
begin
	select stock_id,num_free,num_freezed from User_position where user_id=@user_id order by stock_id
end

GO

-- ----------------------------
-- Procedure structure for usp_getGpPrice
-- ----------------------------

GO


CREATE proc [dbo].[usp_getGpPrice]
	@stock_id int,
	@price money output  --成交价格
as
begin
	set @price=0
	declare @buy_order_id bigint --最新成交买单号
 	declare @sell_order_id bigint ----最新成交卖单号
	declare @sell_price money     --卖单价格
	declare @buy_price money      --买单价格
	
	select 
		@buy_order_id=buy_order_id,
		@sell_order_id=sell_order_id,
		@buy_price=buy_price,
		@sell_price=sell_price
	from ( select top 1 * from VW_GpPrice where stock_id=@stock_id order by time desc ) tab
	
	--根据买卖单先到来判断成交价格
	if(@buy_order_id>@sell_order_id)
	begin
		set @price=@sell_price
	end
	else
	begin
		set @price=@buy_price
	end
end

GO

-- ----------------------------
-- Procedure structure for usp_getUserOrderDealed
-- ----------------------------

GO
create proc [dbo].[usp_getUserOrderDealed]
	@user_id bigint,
	@pageNumber int,
	@pageSize int,
	@totalPage int output
as
begin
	declare @totalCount int
	select @totalCount=count(*)  from GpOrder as t1 inner join Stock as t2 on t1.stock_id = t2.stock_id where t1.user_id = @user_id and t1.undealed<=0
	set @totalPage=ceiling(@totalCount*1.0/@pageSize*1.0)
	
	select top (@pageSize) oid,sname,oundealed,odealed,ocanceled,ocreate_time,oprice,otype from 
	(
		select top (@pageSize*@pageNumber) 
			row_number() over (order by t1.order_id asc) as RowNum, 
			oid=t1.order_id,
			sname=t2.name,
			oundealed=t1.undealed,
			odealed=t1.dealed,
			ocanceled=t1.canceled,
			ocreate_time=t1.create_date,
			oprice=t1.price,
			otype=t1.type 
		from GpOrder as t1 
		inner join Stock as t2 
		on t1.stock_id = t2.stock_id 
		where t1.user_id = @user_id and t1.undealed<=0
	) as T where RowNum>(@pageSize*(@pageNumber-1))	
end
GO

-- ----------------------------
-- Procedure structure for usp_getUserOrderUndealed
-- ----------------------------

GO
create proc [dbo].[usp_getUserOrderUndealed]
	@user_id bigint,
	@pageNumber int,
	@pageSize int,
	@totalPage int output
as
begin
	declare @totalCount int
	select @totalCount=count(*)  from GpOrder as t1 inner join Stock as t2 on t1.stock_id = t2.stock_id where t1.user_id = @user_id and t1.undealed>0
	set @totalPage=ceiling(@totalCount*1.0/@pageSize*1.0)
	
	select top (@pageSize) oid,sname,oundealed,odealed,ocanceled,ocreate_time,oprice,otype from 
	(
		select top (@pageSize*@pageNumber) 
			row_number() over (order by t1.order_id asc) as RowNum, 
			oid=t1.order_id,
			sname=t2.name,
			oundealed=t1.undealed,
			odealed=t1.dealed,
			ocanceled=t1.canceled,
			ocreate_time=t1.create_date,
			oprice=t1.price,
			otype=t1.type 
		from GpOrder as t1 
		inner join Stock as t2 
		on t1.stock_id = t2.stock_id 
		where t1.user_id = @user_id and t1.undealed>0
	) as T where RowNum>(@pageSize*(@pageNumber-1))	
end
GO

-- ----------------------------
-- Procedure structure for usp_getUserposition
-- ----------------------------

GO


CREATE proc [dbo].[usp_getUserposition]
	@user_id bigint,
	@pageNumber int,
	@pageSize int,
	@totalPage int output
as
begin
	declare @totalCount int
	select @totalCount=count(*)  from User_position as t1 inner join Stock as t2 on t2.stock_id = t1.stock_id where t1.user_id = @user_id
	set @totalPage=ceiling(@totalCount*1.0/@pageSize*1.0) 
	select top (@pageSize) sid,sname,sfree,sfreezed from 
	(
		select top (@pageSize*@pageNumber) row_number() over (order by t1.stock_id) as RowNum, 
		sid=t1.stock_id,
		sname=t2.name,sfree=t1.num_free,
		sfreezed=t1.num_freezed 
		from User_position as t1 inner join Stock as t2 
		on t2.stock_id = t1.stock_id where t1.user_id = @user_id
	) as T where RowNum>(@pageSize*(@pageNumber-1))	
end
GO

-- ----------------------------
-- Indexes structure for table GpOrder
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table GpOrder
-- ----------------------------
ALTER TABLE [dbo].[GpOrder] ADD PRIMARY KEY ([order_id])
GO

-- ----------------------------
-- Triggers structure for table GpOrder
-- ----------------------------

GO
CREATE TRIGGER [dbo].[make_transactions]
ON [dbo].[GpOrder]
AFTER INSERT
AS
	set nocount on
	set xact_abort on
	declare @numwrong int
	set @numwrong=0
	begin tran
	declare @order_id bigint,@user_id bigint,@stock_id int,@type int,
	@price money,@undealed int,@dealed int,@canceled int
	
	select @order_id=order_id,@user_id=user_id,@stock_id=stock_id,
	@type=type,@price=price,@undealed=undealed,@dealed=dealed,@canceled=canceled from inserted;
	declare @numOfUser_position int
	if @type=0
	begin
		declare @sell_order_id bigint,@sell_user_id bigint,@sell_order_undealed int,
			@sell_order_dealed int,@dealed_price money
		declare sell_orders cursor for select order_id,user_id,undealed,dealed,price from GpOrder
		where type=1 and stock_id=@stock_id and price<=@price and undealed>0  order by price,order_id
		open sell_orders
		while @undealed>0
		begin
			fetch next from sell_orders into
				@sell_order_id,@sell_user_id,@sell_order_undealed,@sell_order_dealed,@dealed_price
			if @@fetch_status!=0 break
			if (@sell_order_undealed<@undealed)
			begin
				set @undealed=@undealed-@sell_order_undealed
				set @dealed=@dealed+@sell_order_undealed
				set @sell_order_dealed=@sell_order_dealed+@sell_order_undealed
				update GpOrder set dealed=@sell_order_dealed,
								   undealed=0
								where order_id=@sell_order_id
				set @numwrong=@numwrong+@@ERROR
				declare @new_trans_id bigint
				select @new_trans_id=isnull(max(trans_id)+1,50000001) from GpTransaction
				insert	into GpTransaction values(@new_trans_id,@order_id,@sell_order_undealed,@sell_order_id,getdate())
				--已处理的股票数量@sell_order_undealed,价格@dealed_price
				set @numwrong=@numwrong+@@ERROR
				select @numOfUser_position=count(*) from User_position where @user_id=user_id and @stock_id=stock_id;
				if(@numOfUser_position>0)
				begin
					update User_position set num_free=num_free+@sell_order_undealed where @user_id=user_id and @stock_id=stock_id
					set @numwrong=@numwrong+@@ERROR
				end
				else
				begin
					insert into User_position values(@user_id,@stock_id,@sell_order_undealed,0)
					set @numwrong=@numwrong+@@ERROR
				end
				update Users set coy_freezed=coy_freezed-(@price*@sell_order_undealed) where user_id=@user_id
				set @numwrong=@numwrong+@@ERROR
				update Users set coy_free=coy_free+@sell_order_undealed*(@price-@dealed_price) where user_id=@user_id
				set @numwrong=@numwrong+@@ERROR
				update User_position set num_freezed=num_freezed-@sell_order_undealed where @sell_user_id=user_id and @stock_id=stock_id 
				set @numwrong=@numwrong+@@ERROR
				update Users set coy_free=coy_free+(@dealed_price*@sell_order_undealed) where user_id=@sell_user_id
				set @numwrong=@numwrong+@@ERROR
				set @sell_order_undealed=0
			end
			else if (@sell_order_undealed>=@undealed)
			begin
				set @sell_order_undealed=@sell_order_undealed-@undealed
				set @sell_order_dealed=@sell_order_dealed+@undealed
				
				update GpOrder set dealed=@sell_order_dealed,
								   undealed=@sell_order_undealed
								where order_id=@sell_order_id
				set @numwrong=@numwrong+@@ERROR
				select @new_trans_id=isnull(max(trans_id)+1,50000001) from GpTransaction
				insert	into GpTransaction values(@new_trans_id,@order_id,@undealed,@sell_order_id,getdate())
				set @numwrong=@numwrong+@@ERROR
				set @dealed=@dealed+@undealed
				--已处理的股票数量@undealed,价格@dealed_price
				select @numOfUser_position=count(*) from User_position where @user_id=user_id and @stock_id=stock_id;
				if(@numOfUser_position>0)
				begin
					update User_position set num_free=num_free+@undealed where @user_id=user_id and @stock_id=stock_id
					set @numwrong=@numwrong+@@ERROR
				end
				else
				begin
					insert into User_position values(@user_id,@stock_id,@undealed,0)
					set @numwrong=@numwrong+@@ERROR
				end
				update Users set coy_freezed=coy_freezed-(@price*@undealed) where user_id=@user_id
				set @numwrong=@numwrong+@@ERROR
				update User_position set num_freezed=num_freezed-@undealed where @sell_user_id=user_id and @stock_id=stock_id 
				set @numwrong=@numwrong+@@ERROR
				update Users set coy_free=coy_free+(@dealed_price*@undealed) where user_id=@sell_user_id
				set @numwrong=@numwrong+@@ERROR
				set @undealed=0
				
				update Users set coy_free=coy_free+@undealed*(@price-@dealed_price) where user_id=@user_id
				set @numwrong=@numwrong+@@ERROR
				break
			end
			
		end
		update GpOrder set dealed=@dealed,undealed=@undealed where order_id=@order_id
		set @numwrong=@numwrong+@@ERROR
		close sell_orders
		deallocate sell_orders
	end
	else if @type=1
	begin
		--print @type
		--print @type
		--print @undealed
		declare @buy_order_id bigint,@buy_user_id bigint,@buy_order_undealed int,
			@buy_order_dealed int,@buy_price money
--		print @type
--		print @undealed
--		print @stock_id
--		print @price
		
		declare buy_orders cursor for select order_id,user_id,undealed,dealed,price from GpOrder
		where type=0 and stock_id=@stock_id and price>=@price and undealed>0  order by price,order_id
		open buy_orders
		while @undealed>0
		begin
			fetch next from buy_orders into
				@buy_order_id,@buy_user_id,@buy_order_undealed,@buy_order_dealed,@buy_price
			if @@fetch_status!=0 break
			if (@buy_order_undealed<=@undealed)
			begin
				set @undealed=@undealed-@buy_order_undealed
				set @dealed=@dealed+@buy_order_undealed
				set @buy_order_dealed=@buy_order_dealed+@buy_order_undealed
				update GpOrder set dealed=@buy_order_dealed,
								   undealed=0
								where order_id=@buy_order_id
				set @numwrong=@numwrong+@@ERROR
				select @new_trans_id=isnull(max(trans_id)+1,50000001) from GpTransaction
				insert	into GpTransaction values(@new_trans_id,@buy_order_id,@buy_order_undealed,@order_id,getdate())
				--已成交数量@buy_order_undealed,价格@buy_price
				set @numwrong=@numwrong+@@ERROR
				select @numOfUser_position=count(*) from User_position where @buy_user_id=user_id and @stock_id=stock_id;
				print @numOfUser_position
				if(@numOfUser_position>0)
				begin
					update User_position set num_free=num_free+@buy_order_undealed where @buy_user_id=user_id and @stock_id=stock_id
					set @numwrong=@numwrong+@@ERROR
				end
				else
				begin
					insert into User_position values(@buy_user_id,@stock_id,@buy_order_undealed,0)
					set @numwrong=@numwrong+@@ERROR
				end
				update Users set coy_freezed=coy_freezed-(@buy_price*@buy_order_undealed) where @buy_user_id=user_id
				set @numwrong=@numwrong+@@ERROR
				update User_position set num_freezed=num_freezed-@buy_order_undealed where @user_id=user_id and @stock_id=stock_id 
				set @numwrong=@numwrong+@@ERROR
				update Users set coy_free=coy_free+(@buy_price*@buy_order_undealed) where user_id=@user_id
				set @numwrong=@numwrong+@@ERROR
				set @buy_order_undealed=0	
			end
			else if (@buy_order_undealed>@undealed)
			begin
				--debug
				
				set @buy_order_undealed=@buy_order_undealed-@undealed
				set @buy_order_dealed=@buy_order_dealed+@undealed
				update GpOrder set dealed=@buy_order_dealed,
								   undealed=@buy_order_undealed
								where order_id=@buy_order_id
				set @numwrong=@numwrong+@@ERROR
				select @new_trans_id=isnull(max(trans_id)+1,50000001) from GpTransaction
				insert	into GpTransaction values(@new_trans_id,@buy_order_id,@undealed,@order_id,getdate())
				set @numwrong=@numwrong+@@ERROR
				set @dealed=@dealed+@undealed
				--已成交数量@undealed,价格@buy_price
				select @numOfUser_position=count(*) from User_position where @buy_user_id=user_id and @stock_id=stock_id;
				if(@numOfUser_position>0)
				begin
					update User_position set num_free=num_free+@undealed where @buy_user_id=user_id and @stock_id=stock_id
					set @numwrong=@numwrong+@@ERROR
				end
				else
				begin
					insert into User_position values(@buy_user_id,@stock_id,@undealed,0)
					set @numwrong=@numwrong+@@ERROR
				end
				update Users set coy_freezed=coy_freezed-(@buy_price*@undealed) where @buy_user_id=user_id
				set @numwrong=@numwrong+@@ERROR
				update User_position set num_freezed=num_freezed-@undealed where @user_id=user_id and @stock_id=stock_id 
				set @numwrong=@numwrong+@@ERROR
				update Users set coy_free=coy_free+(@buy_price*@undealed) where user_id=@user_id
				set @numwrong=@numwrong+@@ERROR
				set @undealed=0
				break
			end
		end
		update GpOrder set dealed=@dealed,undealed=@undealed where order_id=@order_id
		set @numwrong=@numwrong+@@ERROR
		close buy_orders
		deallocate buy_orders	
	end
	if @numwrong<>0
	begin
		declare @cursor int;
		select @cursor=count(*) from master.dbo.syscursors where cursor_name='buy_orders'
		if(@cursor>0)
		begin
			close buy_orders
			deallocate buy_orders
		end
		select @cursor=count(*) from master.dbo.syscursors where cursor_name='sell_orders'
		if(@cursor>0)
		begin
			close sell_orders
			deallocate sell_orders
		end
		rollback tran
		begin tran
	end
	else
	begin
		commit tran
	end


GO

-- ----------------------------
-- Indexes structure for table GpTransaction
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table GpTransaction
-- ----------------------------
ALTER TABLE [dbo].[GpTransaction] ADD PRIMARY KEY ([trans_id])
GO

-- ----------------------------
-- Indexes structure for table Stock
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Stock
-- ----------------------------
ALTER TABLE [dbo].[Stock] ADD PRIMARY KEY ([stock_id])
GO

-- ----------------------------
-- Indexes structure for table User_position
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table User_position
-- ----------------------------
ALTER TABLE [dbo].[User_position] ADD PRIMARY KEY ([user_id], [stock_id])
GO

-- ----------------------------
-- Indexes structure for table Users
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD PRIMARY KEY ([user_id])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[GpOrder]
-- ----------------------------
ALTER TABLE [dbo].[GpOrder] ADD FOREIGN KEY ([stock_id]) REFERENCES [dbo].[Stock] ([stock_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[GpOrder] ADD FOREIGN KEY ([stock_id]) REFERENCES [dbo].[Stock] ([stock_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[GpOrder] ADD FOREIGN KEY ([user_id]) REFERENCES [dbo].[Users] ([user_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[GpOrder] ADD FOREIGN KEY ([user_id]) REFERENCES [dbo].[Users] ([user_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[GpTransaction]
-- ----------------------------
ALTER TABLE [dbo].[GpTransaction] ADD FOREIGN KEY ([buy_order_id]) REFERENCES [dbo].[GpOrder] ([order_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[GpTransaction] ADD FOREIGN KEY ([buy_order_id]) REFERENCES [dbo].[GpOrder] ([order_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[GpTransaction] ADD FOREIGN KEY ([sell_order_id]) REFERENCES [dbo].[GpOrder] ([order_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[GpTransaction] ADD FOREIGN KEY ([sell_order_id]) REFERENCES [dbo].[GpOrder] ([order_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[User_position]
-- ----------------------------
ALTER TABLE [dbo].[User_position] ADD FOREIGN KEY ([stock_id]) REFERENCES [dbo].[Stock] ([stock_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[User_position] ADD FOREIGN KEY ([stock_id]) REFERENCES [dbo].[Stock] ([stock_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[User_position] ADD FOREIGN KEY ([user_id]) REFERENCES [dbo].[Users] ([user_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[User_position] ADD FOREIGN KEY ([user_id]) REFERENCES [dbo].[Users] ([user_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
